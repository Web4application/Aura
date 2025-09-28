#!/bin/bash

sudo curl -o /usr/local/bin/cog -L https://github.com/replicate/cog/releases/latest/download/cog_`uname -s`_`uname -m`
sudo chmod +x /usr/local/bin/cog

# Remove old folder if exists
rm -rf ai_prediction_shiny
rm -f ai_prediction_shiny.zip

# Create folder structure
mkdir -p ai_prediction_shiny/data/raw
mkdir -p ai_prediction_shiny/data/processed
mkdir -p ai_prediction_shiny/scripts

# Create dummy lifespan CSV
cat <<EOL > ai_prediction_shiny/data/raw/lifespan.csv
id,age,gender,weight,height,blood_pressure,duration,event,smoker,alcohol,exercise_freq,diabetes,heart_disease,cancer,cholesterol,urban_residence
1,34,M,70,175,120,30,1,0,1,3,0,0,0,180,1
2,58,F,65,160,130,25,1,1,1,1,1,0,0,200,0
3,45,M,80,180,125,35,0,0,0,2,0,1,0,210,1
4,72,F,68,165,140,20,1,0,1,0,1,0,1,190,0
5,50,M,75,178,135,28,0,1,0,2,0,0,0,220,1
EOL

# Create enhanced_ai.R 
cat <<EOL > ai_prediction_shiny/scripts/enhanced_ai.R
library(survival)
library(survminer)
library(forecast)
library(dplyr)
library(ggplot2)
library(readr)

predict_lifespan <- function(lifespan_file) {
  lifespan_df <- read_csv(lifespan_file)
  lifespan_df <- lifespan_df %>%
    mutate(
      gender = as.factor(gender),
      event = as.numeric(event),
      bmi = weight / (height/100)^2,
      smoker = as.factor(smoker),
      alcohol = as.factor(alcohol),
      exercise_freq = as.numeric(exercise_freq),
      urban_residence = as.factor(urban_residence)
    )
  cox_model <- coxph(Surv(duration, event) ~ age + gender + bmi + blood_pressure +
                       smoker + alcohol + exercise_freq + diabetes + heart_disease +
                       cancer + cholesterol + urban_residence,
                     data = lifespan_df)
  surv_fit <- survfit(cox_model)
  return(list(model=cox_model, fit=surv_fit, data=lifespan_df))
}

predict_creation <- function() {
  creation_df <- data.frame(
    year = 2000:2020,
    inventions = c(5,7,6,8,10,12,14,13,15,17,19,21,23,22,24,26,27,28,30,31,33),
    tech_index = seq(50, 70, length.out=21),
    gdp = seq(1.2, 2.5, length.out=21),
    startups = c(10,12,15,14,18,20,22,23,25,28,30,32,35,37,39,40,42,44,46,48,50)
  )
  ts_inventions <- ts(creation_df$inventions, start=2000)
  fit_arima <- auto.arima(ts_inventions)
  forecast_inventions <- forecast(fit_arima, h=5)
  return(list(fit=fit_arima, forecast=forecast_inventions))
}
EOL

# Create app.R
cat <<EOL > ai_prediction_shiny/app.R
library(shiny)
library(ggplot2)
library(survminer)
source("scripts/enhanced_ai.R")

ui <- fluidPage(
  titlePanel("AI Prediction Dashboard"),
  sidebarLayout(
    sidebarPanel(
      fileInput("lifespan_file", "Upload Lifespan CSV", accept = c(".csv")),
      actionButton("run_ai", "Run AI Prediction")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Lifespan Prediction", plotOutput("surv_plot"), verbatimTextOutput("median_lifespan")),
        tabPanel("Creation Forecast", plotOutput("forecast_plot"), tableOutput("forecast_table")),
        tabPanel("Combined Output", verbatimTextOutput("combined_output"))
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
    ggsurvplot(lifespan_data()$fit, data=lifespan_data()$data, risk.table=TRUE,
               title="Predicted Survival Curve")
  })
  output$median_lifespan <- renderPrint({ req(lifespan_data()); median(lifespan_data()$fit$time) })
  output$forecast_plot <- renderPlot({ req(creation_data()); autoplot(creation_data()$forecast)+ggtitle("Predicted Inventions") })
  output$forecast_table <- renderTable({ req(creation_data()); data.frame(Year=2021:2025, Forecast=as.data.frame(creation_data()$forecast)$`Point Forecast`) })
  output$combined_output <- renderPrint({ req(lifespan_data(), creation_data()); list(median_lifespan=median(lifespan_data()$fit$time), future_inventions=as.data.frame(creation_data()$forecast)$`Point Forecast`) })
}

shinyApp(ui = ui, server = server)
EOL

# Zip everything
zip -r ai_prediction_shiny.zip ai_prediction_shiny

echo "Shiny AI scaffold created and zipped as ai_prediction_shiny.zip!"
git clone https://github.com/Web4application/GPT-5-mini.git
cd GPT-5-mini

# Install BFG if not installed
brew install bfg

export OPENAI_API_KEY=sk-yAlzaSyCHjfdo3w160Dd5yTVJD409pWmigOJEg
export OPENAI_API_KEY=sk-AIzaSyAvrxOyAVzPVcnzxuD0mjKVDyS2bNWfC10
# Remove all instances of the old key from history
bfg --replace-text <(printf '%s\n' 'ZK1XXchhqBKOltJ87RMqghmUVI_M4qL-bZxuXA05f1A==[REDACTED]')

git reflog expire --expire=now --all
git gc --prune=now --aggressive
git push origin --force --all

git clone https://github.com/Web4application/GPT-5-mini.git
cd GPT-5-mini
mkdir -p .github/workflows
git clone https://github.com/Pythagora-io/gpt-pilot.git
cd gpt-pilot
python -m venv venv
venv\Scripts\activate
source venv/bin/activate
pip install -r requirements.txt
cp example-config.json config.json
python main.py


# install bfg
bfg --delete-files id_rsa
git reflog expire --expire=now --all
git gc --prune=now --aggressive
# push to origin (force)
git push origin --force --all

git add .
git commit -m "Add CI/CD pipeline with Vercel deployment and cleanup"
git push origin main

/web
  package.json
  next.config.js
  /pages
    index.js
    /api
      auth.js
/backend
  Dockerfile
  requirements.txt
  app/main.py
  app/auth.py
  app/models_proxy.py
docker-compose.yml
.github/workflows/ci.yml
.env.example
README.md

git add .
git commit -m "Added files from phone"
git push origin main

# Clone the AI-webapp repo
git clone https://github.com/QUBUHUB/web4.git AI-webapp

# Clone the GPT-pilot repo
git clone https://github.com/QUBUHUB/web4app4.git gpt-pilot

# Download the AI-webapp-main.zip
curl -L -o AI-webapp-main.zip \
  https://github.com/QUBUHUB/web4/files/14301670/AI-webapp-main.zip

# Download the gpt-pilot-main.zip
curl -L -o gpt-pilot-main.zip \
  https://github.com/QUBUHUB/web4/files/14301672/gpt-pilot-main.zip

# Unzip both into your project folder
unzip AI-webapp-main.zip -d AI-webapp
unzip gpt-pilot-main.zip -d gpt-pilot

# Example structure
my-project/
 /web
  package.json
  next.config.js
  /pages
    index.js
    /api
      auth.js
/backend
  Dockerfile
  requirements.txt
  app/main.py
  app/auth.py
  app/models_proxy.py
docker-compose.yml
.github/workflows/ci.yml
.env.example
README.md

# Move gpt-pilot and AI-webapp and web4app4 into QUBUHUB or link them
mv gpt-pilot AI-webapp/gpt-pilot

chmod +x setup.sh
./setup.sh

chmod +x setup.sh
./setup.sh
docker compose up --buildchmod +x setup.sh
./setup.sh

chmod +x setup.sh
./setup.sh
docker compose up --build

%pip install --upgrade "openai>=1.88" "openai-agents>=0.0.19"

cd path/to/your/project
python -m venv myenv
myenv\Scripts\activate
source myenv/bin/activate
pip install -r requirements.txt

npm install express body-parser uuid

curl -X POST http://localhost:8080/generate \
  -H "Content-Type: application/json" \
  -d '{"session_id":"abc123", "prompt":"Hello Ogun State"}'

go mod init github.com/seriki/my-gpt-chat
go mod tidy

docker compose up --build

npm install @supabase/supabase-js
mkdir gpt5-backend
cd gpt5-backend
npm init -y
npm install express dotenv openai cors

OPENAI_API_KEY=qusDmXVuflS2UgVbtNoxT3BlbkFJdB1IU0OFhSmKkTfBQpAo
PORT=5000
export RUNNER_VERSION=$(curl -X 'GET' https://data.forgejo.org/api/v1/repos/forgejo/runner/releases/latest | jq .name -r | cut -c 2-)

pip install fastapi uvicorn openai
python backend/app.py
docker-compose up --build -d
pip install -r requirements.txt
sudo apt update
sudo apt install apache2 apache2-utils
sudo a2enmod dav dav_fs dav_lock

sudo mkdir -p /var/www/webdav
sudo chown -R www-data:www-data /var/www/webdav
sudo a2ensite webdav.conf
sudo systemctl reload apache2
sudo apt install certbot python3-certbot-apache
sudo certbot --apache -d kubuverse.com
qubuhub.com
kubulee.com
web4era.com
rodaverse.com
gpt5mini.ai
lolaai.app
kubuhai.ai
projectpilot.ai
fadaka.io
fadakachain.com
web4chain.com
cryptoverse.africa
roda.ai
rodahub.com
datarepublic.ai

sudo a2enmod proxy
sudo a2enmod proxy_http
sudo a2enmod headers

sudo systemctl restart apache2
redis-cli -u redis://default:SNezMa2Q7GuhZP4bbAWN7oiUFjhPb2Xl@redis-16963.c82.us-east-1-2.ec2.redns.redis-cloud.com:16963
node server.js
mkdir gpt5mini-webchat && cd gpt5mini-webchat
npm init -y
npm install express openai cors dotenv
import{ld as u,cD as c,ig as m,a as l,ci as d,D as f}from"./mhbytbxaegatcv0u.js";import{N as h,K as g,r as p,h as C,j as e,a9 as x}from"./flm2e84l61tcreuw.js";import{C as S}from"./gf45imxea9n0nmny.js";import{r as y,gH as E,sO as K,sP as P}from"./mm3uyok3hnam80ub.js";import"./nj3rzeebswlob1q3.js";import"./0rjo5aogo8je6k5i.js";import"./e7kdtuijlo8g6qe1.js";import"./gr6mveserr7zp6zf.js";import"./glh8pnti4794fa77.js";import"./mhl2kcz1fb0mmwtu.js";import"./in0jc9cf4oordiar.js";import"./k5p38y8rqdesag8j.js";import"./e9eg2hq7ull3y8bu.js";import"./ig45oyren4a8bt53.js";import"./b9nxvk797f39onfs.js";import"./n08jli4v44i5vfjh.js";import"./em51ppqbbsreinsi.js";import"./k29s8m9mvbcen4s5.js";import"./is07fqg8y3dxk6i8.js";const R={IIM:!1},U=()=>(y(),{prefetchSearch:null}),w=({currentUrl:s,nextUrl:o})=>{const t=s.searchParams,r=o.searchParams;return t.get(c)!==r.get(c)||t.get("q")!==r.get("q")},G=u(function(){const o=m(),{conversationId:t}=h(),{prefetchSearch:r}=g(),a=l(),i=E();p.useEffect(()=>{if(i)return K(a)},[i,a]);const n=C();return p.useEffect(()=>P(n,d(R),()=>{f.addFirstTiming("load.models")}),[n]),e.jsxs(e.Fragment,{children:[e.jsx(S,{...o,urlThreadId:t,prefetchSearch:r}),e.jsx(x,{})]})});export{U as clientLoader,G as default,w as shouldRevalidate};
 //# sourceMappingURL=f1g9g7p2bpcfbtfc.js.map

import{ld as n}from"./mhbytbxaegatcv0u.js";import"./flm2e84l61tcreuw.js";function e(){return null}const i=n(function(){return null});export{e as clientLoader,i as default};
//# sourceMappingURL=fc48cb6synwhfvwh.js.map

#!/usr/bin/env bash
set -e
ROOT="$(pwd)"
GP="./gpt-pilot"

if [ ! -d "$GP" ]; then
  echo "Error: $GP not found. Run this from project root where gpt-pilot exists."
  exit 1
fi

echo "📦 Installing openai + axios in gpt-pilot..."
cd "$GP"
npm install openai axios --no-audit --no-fund

echo "🛠 Creating src/gpt-5-mini.js..."
mkdir -p src

cat > src/gpt5.js <<'JS'
/**
 * GPT-5 integration route
 * POST /api/chatgpt-5
 * Body: { prompt: string, max_tokens?: number, temperature?: number, verbosity?: string }
 */
import express from "express";
import OpenAI from "openai";

const router = express.Router();
const client = new OpenAI({
  apiKey: process.env.OPENAI_API_KEY
});

router.post("/api/chatgpt-5", async (req, res) => {
  try {
    const { prompt, max_tokens = 800, temperature = 0.2, verbosity } = req.body;
    if (!prompt) return res.status(400).json({ error: "Missing prompt" });

    const response = await client.responses.create({
      model: "chatgpt-5",
      input: prompt,
      max_output_tokens: Number(max_tokens),
      temperature: Number(temperature),
      ...(verbosity ? { verbosity } : {})
    });

    // Try to normalize typical Responses API shape
    let out = response;
    try {
      if (response.output && Array.isArray(response.output)) {
        const first = response.output[0];
        if (first && Array.isArray(first.content)) {
          out = first.content.map(c => (c.text ? c.text : c)).join("\n");
        }
      }
    } catch (e) {
      // fallback to sending full response
    }

    res.json({ ok: true, response: out, raw: response });
  } catch (err) {
    console.error("gpt5 error:", err?.message ?? err);
    res.status(500).json({ error: err?.message ?? String(err) });
  }
});

export default router;
JS

echo "🔌 Attempting to auto-wire the route into common entry files..."
cd "$ROOT/$GP"

# list of possible entry files
FILES=("app.js" "server.js" "index.js" "src/app.js" "src/index.js" "src/server.js")
INJECT_IMPORT="import gpt5Router from './src/gpt5.js';"
INJECT_USE="app.use(gpt5Router);"

FOUND=false
for f in "${FILES[@]}"; do
  if [ -f "$f" ]; then
    FOUND=true
    # Only add import if not present
    if ! grep -q "gpt5.js" "$f"; then
      echo "✍️ Patching $f with import and route hook..."
      # insert import after first import block or at top
      awk -v imp="$INJECT_IMPORT" -v use="$INJECT_USE" '
        NR==1{print; next}
        {print}
      ' "$f" > "$f.tmp" && mv "$f.tmp" "$f"

      # naive append of use() near end of file (after the last app.use or before listen)
      if grep -q "app.listen" "$f"; then
        awk -v use="$INJECT_USE" '
        {print}
        /app.listen/ && !x { print use; x=1 }
        ' "$f" > "$f.tmp" && mv "$f.tmp" "$f"
      else
        # append at end
        echo "" >> "$f"
        echo "$INJECT_USE" >> "$f"
      fi

      # Add the import at top cleanly (prepend)
      sed -i "1s;^;$INJECT_IMPORT\n;" "$f"
    else
      echo "ℹ️ $f already mentions gpt5 — skipping patch."
    fi
    break
  fi
done

if [ "$FOUND" = false ]; then
  echo "⚠️ Could not find typical entry files to auto-wire (app.js/index.js/server.js)."
  echo "  Manual step: import the router and use it in your express app:"
  echo ""
  echo "  import gpt5Router from './src/gpt5.js';"
  echo "  app.use(gpt5Router);"
fi

echo "📝 Creating .env.example at project root..."
cd "$ROOT"
cat > .env.example <<ENV
# Example env - NEVER commit real API keys
OPENAI_API_KEY=sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxx
ENV

echo "🔁 Updating docker-compose.yml to include OPENAI_API_KEY for gpt-pilot..."
DC="./docker-compose.yml"
if [ -f "$DC" ]; then
  if grep -q "gpt-pilot:" "$DC"; then
    # insert env var under gpt-pilot service
    awk '
      BEGIN{in_service=0}
      {
        print;
        if ($0 ~ /^[[:space:]]*gpt-pilot:/) { in_service=1; next }
        if (in_service && $0 ~ /^[[:space:]]*restart:/) { # locate restart or next key to insert before
          print "    environment:"
          print "      - OPENAI_API_KEY=${OPENAI_API_KEY}"
          in_service=0
        }
      }
    ' "$DC" > "$DC.tmp" && mv "$DC.tmp" "$DC"
    echo "✅ docker-compose.yml patched (best-effort). Verify the gpt-pilot service block."
  else
    echo "⚠️ docker-compose.yml exists but no gpt-pilot service found. Manual update recommended."
  fi
else
  echo "⚠️ No docker-compose.yml at project root. Skipping compose patch."
fi

echo "✅ Patch completed. Quick checklist:"
echo "- Add real API key into .env (or Docker secret): OPENAI_API_KEY=sk-..."
echo "- Rebuild if using Docker: docker compose up --build -d"
echo "- Local test: curl -X POST http://localhost:4000/api/gpt5 -H 'Content-Type: application/json' -d '{\"prompt\":\"hello\"}'"
echo ""
echo "If the app entrypoint is non-standard, open the file where Express is created and add:"
echo "  import gpt5Router from './src/gpt5.js';"
echo "  app.use(gpt5Router);"

exit 0
c
# add your API key to .env
cp .env.example .env
# edit .env -> set OPENAI_API_KEY
docker compose up --build -d

cd gpt-pilot
export OPENAI_API_KEY="sk-xxxx"    # or source .env
npm start
# then:
curl -s -X POST http://localhost:4000/api/chatgpt-5 \
  -H "Content-Type: application/json" \
  -d '{"prompt":"Say hi in an epic poetic line","max_tokens":50}'

  

chmod +x patch_gpt5.sh
./gpt-5-mini.sh

helm install nim-operator nvidia/k8s-nim-operator --create-namespace -n nim-operator

helm repo add nvidia https://helm.ngc.nvidia.com/nvidia \

export NGC_API_KEY=<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>
export LOCAL_NIM_CACHE=~/.cache/nim
mkdir -p "$LOCAL_NIM_CACHE"
docker run -it --rm \
    --gpus all \
    --shm-size=16GB \
    -e NGC_API_KEY \
    -v "$LOCAL_NIM_CACHE:/opt/nim/.cache" \
    -u $(id -u) \
    -p 8000:8000 \
    nvcr.io/nim/meta/llama-3.1-70b-instruct:latest

curl -X 'POST' \
'http://0.0.0.0:8000/v1/chat/completions' \
-H 'accept: application/json' \
-H 'Content-Type: application/json' \
-d '{
    "model": "meta/llama-3.1-70b-instruct",
    "messages": [{"role":"user", "content":"Write a limerick about the wonders of GPU computing."}],
    "max_tokens": 64
}'

kubectl create ns nim-service

kubectl create secret -n nim-service docker-registry ngc-secret \
    --docker-server=nvcr.io \
    --docker-username='$oauthtoken' \
    --docker-password=<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>

kubectl create secret -n nim-service generic ngc-api-secret \
    --from-literal=NGC_API_KEY=<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>


kubectl run --rm -it -n default curl --image=curlimages/curl:latest -- ash

curl -X "POST" \
 'http://llama-31-70b-instruct.nim-service:8000/v1/chat/completions' \
  -H 'Accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
        "model": "meta/llama-3.1-70b-instruct",
        "messages": [
        {
          "content":"What should I do for a 4 day vacation at Cape Hatteras National Seashore?",
          "role": "user"
        }],
        "top_p": 1,
        "n": 1,
        "max_tokens": 1024,
        "stream": false,
        "frequency_penalty": 0.0,
        "stop": ["STOP"]
      }'
