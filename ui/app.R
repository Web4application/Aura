library(shiny)
library(ggplot2)
library(survminer)
source("scripts/enhanced_ai.R")

ui <- fluidPage(
  titlePanel("AI Prediction Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      fileInput("lifespan_file", "Upload Lifespan CSV",
                accept = c(".csv")),
      actionButton("run_ai", "Run AI Prediction")
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Lifespan Prediction",
                 plotOutput("surv_plot"),
                 verbatimTextOutput("median_lifespan")),
        tabPanel("Creation Forecast",
                 plotOutput("forecast_plot"),
                 tableOutput("forecast_table")),
        tabPanel("Combined Output",
                 verbatimTextOutput("combined_output"))
      )
    )
  )
)

server <- function(input, output) {
  
  lifespan_data <- eventReactive(input$run_ai, {
    req(input$lifespan_file)
    predict_lifespan(input$lifespan_file$datapath)
  })
  
  creation_data <- eventReactive(input$run_ai, {
    predict_creation()
  })
  
  output$surv_plot <- renderPlot({
    req(lifespan_data())
    ggsurvplot(lifespan_data()$fit, data=lifespan_data()$data,
               risk.table = TRUE,
               title = "Predicted Survival Curve")
  })
  
  output$median_lifespan <- renderPrint({
    req(lifespan_data())
    median(lifespan_data()$fit$time)
  })
  
  output$forecast_plot <- renderPlot({
    req(creation_data())
    autoplot(creation_data()$forecast) +
      ggtitle("Predicted Number of Inventions (Next 5 Years)")
  })
  
  output$forecast_table <- renderTable({
    req(creation_data())
    data.frame(Year=2021:2025,
               Forecast=as.data.frame(creation_data()$forecast)$`Point Forecast`)
  })
  
  output$combined_output <- renderPrint({
    req(lifespan_data(), creation_data())
    median_lifespan <- median(lifespan_data()$fit$time)
    future_inventions <- as.data.frame(creation_data()$forecast)$`Point Forecast`
    list(median_lifespan=median_lifespan,
         future_inventions=future_inventions)
  })
}

shinyApp(ui = ui, server = server)
