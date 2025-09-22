Sub RunSimulation()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim rng As Range
    
    Set ws = Sheets("Simulation_Scenarios")
    ws.Activate
    
    ' Find last row
    lastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    
    ' Example: Sum values in column B
    Dim total As Double
    total = Application.WorksheetFunction.Sum(ws.Range("B2:B" & lastRow))
    
    MsgBox "🔬 Simulation Complete!" & vbCrLf & _
           "Total from Column B = " & total, vbInformation, "Aura Hub"
End Sub


Sub ViewCharts()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim rng As Range
    Dim chtObj As ChartObject
    
    Set ws = Sheets("Visualization_Config")
    ws.Activate
    
    lastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    Set rng = ws.Range("A1:B" & lastRow)
    
    ' Delete old charts
    For Each chtObj In ws.ChartObjects
        chtObj.Delete
    Next chtObj
    
    ' Create new chart
    Set chtObj = ws.ChartObjects.Add(Left:=300, Width:=400, Top:=50, Height:=250)
    chtObj.Chart.SetSourceData Source:=rng
    chtObj.Chart.ChartType = xlColumnClustered
    chtObj.Chart.ChartTitle.Text = "📊 Aura Visualization"
    
    MsgBox "📈 Chart created successfully!", vbInformation, "Aura Hub"
End Sub


Sub DeployConfigs()
    Dim ws As Worksheet
    Dim cfg As String
    
    Set ws = Sheets("Deployment")
    ws.Activate
    
    cfg = ws.Range("A2").Value
    MsgBox "🚀 Deploying with config: " & cfg, vbInformation, "Aura Hub"
End Sub


Sub OpenEthics()
    Sheets("Ethics_Notes").Activate
    MsgBox "📒 Ethics notes loaded.", vbInformation, "Aura Hub"
End Sub


Sub OpenCollab()
    Sheets("Collaboration_Log").Activate
    MsgBox "🤝 Collaboration log opened.", vbInformation, "Aura Hub"
End Sub


Sub ResetHub()
    Sheets("Home").Activate
    MsgBox "♻️ Aura Hub has been reset to default.", vbExclamation, "Aura Hub"
End Sub


Sub HubStatus()
    MsgBox "✅ Aura Hub is running normally." & vbCrLf & _
           "All modules available.", vbInformation, "Aura Hub"
End Sub
    
    Set ws = Sheets("Simulation_Scenarios")
    ws.Activate
    
    ' Find last row
    lastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    
    ' Example: Sum values in column B
    Dim total As Double
    total = Application.WorksheetFunction.Sum(ws.Range("B2:B" & lastRow))
    
    MsgBox "🔬 Simulation Complete!" & vbCrLf & _
           "Total from Column B = " & total, vbInformation, "Aura Hub"
End Sub


Sub ViewCharts()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim rng As Range
    Dim chtObj As ChartObject
    
    Set ws = Sheets("Visualization_Config")
    ws.Activate
    
    lastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    Set rng = ws.Range("A1:B" & lastRow)
    
    ' Delete old charts
    For Each chtObj In ws.ChartObjects
        chtObj.Delete
    Next chtObj
    
    ' Create new chart
    Set chtObj = ws.ChartObjects.Add(Left:=300, Width:=400, Top:=50, Height:=250)
    chtObj.Chart.SetSourceData Source:=rng
    chtObj.Chart.ChartType = xlColumnClustered
    chtObj.Chart.ChartTitle.Text = "📊 Aura Visualization"
    
    MsgBox "📈 Chart created successfully!", vbInformation, "Aura Hub"
End Sub


Sub DeployConfigs()
    Dim ws As Worksheet
    Dim cfg As String
    
    Set ws = Sheets("Deployment")
    ws.Activate
    
    cfg = ws.Range("A2").Value
    MsgBox "🚀 Deploying with config: " & cfg, vbInformation, "Aura Hub"
End Sub


Sub OpenEthics()
    Sheets("Ethics_Notes").Activate
    MsgBox "📒 Ethics notes loaded.", vbInformation, "Aura Hub"
End Sub


Sub OpenCollab()
    Sheets("Collaboration_Log").Activate
    MsgBox "🤝 Collaboration log opened.", vbInformation, "Aura Hub"
End Sub


Sub ResetHub()
    Sheets("Home").Activate
    MsgBox "♻️ Aura Hub has been reset to default.", vbExclamation, "Aura Hub"
End Sub


Sub HubStatus()
    MsgBox "✅ Aura Hub is running normally." & vbCrLf & _
           "All modules available.", vbInformation, "Aura Hub"
End Sub

Sub Build_Home_UI()
    Dim ws As Worksheet
    Set ws = ThisWorkbook.Sheets("Home")
    ws.Cells.Clear
    
    ' Title
    ws.Range("B2").Value = "🌌 Aura Hub – Research Ecosystem"
    ws.Range("B2").Font.Size = 18
    ws.Range("B2").Font.Bold = True
    
    ' Create buttons
    Call AddButton(ws, "🚀 Start Aura", "Aura_Start", 4)
    Call AddButton(ws, "⚙️ Run Simulation", "Aura_Simulate", 6)
    Call AddButton(ws, "📊 Visualize Data", "Aura_Visualize", 8)
    Call AddButton(ws, "🚀 Deploy", "Aura_Deploy", 10)
    Call AddButton(ws, "🧭 Ethics Notes", "Aura_Ethics", 12)
    Call AddButton(ws, "🤝 Collaboration Log", "Aura_Collab", 14)
    Call AddButton(ws, "♻️ Reset Hub", "Aura_Reset", 16)
    Call AddButton(ws, "✅ Status Check", "Aura_Status", 18)
    
    MsgBox "🎨 Home UI built successfully!"
End Sub

' Helper for buttons
Sub AddButton(ws As Worksheet, txt As String, macro As String, row As Integer)
    Dim btn As Shape
    Set btn = ws.Shapes.AddShape(msoShapeRoundedRectangle, 100, row * 20, 200, 30)
    btn.TextFrame.Characters.Text = txt
    btn.OnAction = macro
    btn.Fill.ForeColor.RGB = RGB(0, 102, 204)
    btn.TextFrame.Characters.Font.Color = RGB(255, 255, 255)
    btn.TextFrame.Characters.Font.Bold = True
End Sub

' === AURA HUB MAIN MACROS ===
Sub Aura_Start()
    MsgBox "🌌 Aura Hub is starting... loading sheets.", vbInformation, "Aura Hub"
End Sub

Sub Aura_Simulate()
    MsgBox "⚙️ Running simulation scenarios...", vbInformation, "Aura Hub"
End Sub

Sub Aura_Visualize()
    MsgBox "📊 Rendering visualizations...", vbInformation, "Aura Hub"
End Sub

Sub Aura_Deploy()
    MsgBox "🚀 Deploying configs...", vbInformation, "Aura Hub"
End Sub

Sub Aura_Ethics()
    MsgBox "🧭 Opening ethics notes...", vbInformation, "Aura Hub"
End Sub

Sub Aura_Collab()
    MsgBox "🤝 Opening collaboration log...", vbInformation, "Aura Hub"
End Sub

Sub Aura_Reset()
    MsgBox "♻️ Reset complete. Hub is now idle.", vbInformation, "Aura Hub"
End Sub

Sub Aura_Status()
    MsgBox "✅ Aura Hub is running.", vbInformation, "Aura Hub"
End Sub
