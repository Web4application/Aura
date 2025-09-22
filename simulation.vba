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
