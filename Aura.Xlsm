Option Explicit

' === MAIN BUILDER ===
Sub Build_Aura_Home_UI()
    Dim ws As Worksheet
    Dim lastRow As Long
    
    ' Ensure "Home" sheet exists
    On Error Resume Next
    Set ws = ThisWorkbook.Sheets("Home")
    If ws Is Nothing Then
        Set ws = ThisWorkbook.Sheets.Add
        ws.Name = "Home"
    End If
    On Error GoTo 0
    
    ' Clear old content
    ws.Cells.Clear
    
    ' === Title Row ===
    With ws.Range("A1:D1")
        .Merge
        .Value = "🌌 Aura Hub – Research Ecosystem"
        .Font.Size = 16
        .Font.Bold = True
        .Font.Color = vbWhite
        .HorizontalAlignment = xlCenter
        .Interior.Color = RGB(0, 51, 102) ' Dark Blue
    End With
    
    ' === Navigation Panel ===
    ws.Range("A3").Formula = "=HYPERLINK(""https://web4application.github.io/Aura/"",""🌐 GitHub Repository"")"
    ws.Range("A4").Formula = "=HYPERLINK(""https://github.com/web4application/Aura"",""📄 Documentation"")"
    ws.Range("A5").Formula = "=HYPERLINK(""#Logs!A1"",""📝 Experiment Logs"")"
    ws.Range("A6").Formula = "=HYPERLINK(""#Data!A1"",""📊 Data Sheets"")"
    ws.Range("A7").Formula = "=HYPERLINK(""#Collaboration_Log!A1"",""🤝 Collaboration Log"")"
    ws.Range("A8").Formula = "=HYPERLINK(""#Visualization_Config!A1"",""📈 Visualization Config"")"
    ws.Range("A9").Formula = "=HYPERLINK(""#Deployment!A1"",""🚀 Deployment Settings"")"
    
    With ws.Range("A3:A9")
        .Font.Bold = True
        .Font.Color = RGB(0, 102, 204) ' Blue
        .Interior.Color = RGB(249, 249, 249) ' Light Gray
        .Borders.Weight = xlThin
        .Columns.AutoFit
    End With
    
    ' === Info Box ===
    ws.Range("A12:D15").Merge
    ws.Range("A12").Value = "ℹ️ Aura Hub centralizes:" & vbCrLf & _
        "• STEM Research Sheets (Math, Physics, Genomics, Healthcare, Environment)" & vbCrLf & _
        "• AI & Quantum Simulation Results" & vbCrLf & _
        "• Ethics, Economics & Deployment Tracking"
    With ws.Range("A12:D15")
        .Interior.Color = RGB(255, 248, 220) ' Pale Yellow
        .Font.Size = 11
        .Font.Bold = False
        .Borders.Weight = xlThin
        .VerticalAlignment = xlTop
    End With
    
    ' === Footer ===
    lastRow = ws.Rows.Count
    ws.Range("A20:D20").Merge
    ws.Range("A20").Formula = "=""🔗 Powered by Aura | v1.0 | Last updated: "" & TEXT(TODAY(),""yyyy-mm-dd"")"
    With ws.Range("A20:D20")
        .Font.Size = 9
        .Font.Italic = True
        .Font.Color = RGB(100, 100, 100)
        .HorizontalAlignment = xlCenter
    End With
    
    ' Add Refresh Button
    Call Add_Refresh_Button
End Sub

' === REFRESH BUTTON ===
Sub Add_Refresh_Button()
    Dim ws As Worksheet
    Set ws = ThisWorkbook.Sheets("Home")
    
    ' Remove old buttons
    ws.Buttons.Delete
    
    ' Create new button
    Dim btn As Button
    Set btn = ws.Buttons.Add(250, 50, 120, 30)
    
    With btn
        .OnAction = "Build_Aura_Home_UI"
        .Caption = "🔄 Refresh UI"
        .Font.Size = 10
        .Font.Bold = True
    End With
End Sub

Private Sub Workbook_Open()
    Call Build_Aura_Home_UI
End Sub

' === BUILD ALL SHEETS ===
Sub Build_Aura_Sheets()
    Call Build_Aura_Home_UI
    Call Setup_Data_Sheet
    Call Setup_Logs_Sheet
    Call Setup_Collab_Sheet
    Call Setup_Visualization_Sheet
    Call Setup_Deployment_Sheet
    Call Setup_Ethics_Sheet
End Sub

' === DATA SHEET ===
Sub Setup_Data_Sheet()
    Dim ws As Worksheet
    Set ws = GetOrCreateSheet("Data")
    ws.Cells.Clear
    
    ws.Range("A1").Value = "📊 Aura Data Repository"
    ws.Range("A1").Font.Size = 14
    ws.Range("A1").Font.Bold = True
    
    ws.Range("A3").Value = "Dataset Name"
    ws.Range("B3").Value = "Description"
    ws.Range("C3").Value = "Source"
    ws.Range("D3").Value = "Last Updated"
    
    ws.Range("A3:D3").Font.Bold = True
    ws.Range("A3:D3").Interior.Color = RGB(230, 230, 250)
End Sub

' === LOGS SHEET ===
Sub Setup_Logs_Sheet()
    Dim ws As Worksheet
    Set ws = GetOrCreateSheet("Logs")
    ws.Cells.Clear
    
    ws.Range("A1").Value = "📝 Experiment Logs"
    ws.Range("A1").Font.Size = 14
    ws.Range("A1").Font.Bold = True
    
    ws.Range("A3").Value = "Date"
    ws.Range("B3").Value = "Researcher"
    ws.Range("C3").Value = "Experiment Summary"
    ws.Range("D3").Value = "Results"
    ws.Range("E3").Value = "Notes"
    
    ws.Range("A3:E3").Font.Bold = True
    ws.Range("A3:E3").Interior.Color = RGB(255, 228, 225)
End Sub

' === COLLABORATION SHEET ===
Sub Setup_Collab_Sheet()
    Dim ws As Worksheet
    Set ws = GetOrCreateSheet("Collaboration_Log")
    ws.Cells.Clear
    
    ws.Range("A1").Value = "🤝 Collaboration Log"
    ws.Range("A1").Font.Size = 14
    ws.Range("A1").Font.Bold = True
    
    ws.Range("A3").Value = "Date"
    ws.Range("B3").Value = "Contributor"
    ws.Range("C3").Value = "Contribution"
    ws.Range("D3").Value = "Status"
    
    ws.Range("A3:D3").Font.Bold = True
    ws.Range("A3:D3").Interior.Color = RGB(224, 255, 255)
End Sub

' === VISUALIZATION CONFIG SHEET ===
Sub Setup_Visualization_Sheet()
    Dim ws As Worksheet
    Set ws = GetOrCreateSheet("Visualization_Config")
    ws.Cells.Clear
    
    ws.Range("A1").Value = "📈 Visualization Config"
    ws.Range("A1").Font.Size = 14
    ws.Range("A1").Font.Bold = True
    
    ws.Range("A3").Value = "Chart Name"
    ws.Range("B3").Value = "Data Source"
    ws.Range("C3").Value = "Chart Type"
    
    ws.Range("A3:C3").Font.Bold = True
    ws.Range("A3:C3").Interior.Color = RGB(240, 248, 255)
End Sub

' === DEPLOYMENT SHEET ===
Sub Setup_Deployment_Sheet()
    Dim ws As Worksheet
    Set ws = GetOrCreateSheet("Deployment")
    ws.Cells.Clear
    
    ws.Range("A1").Value = "🚀 Deployment Settings"
    ws.Range("A1").Font.Size = 14
    ws.Range("A1").Font.Bold = True
    
    ws.Range("A3").Value = "Environment"
    ws.Range("B3").Value = "Version"
    ws.Range("C3").Value = "Config Path"
    ws.Range("D3").Value = "Last Tested"
    
    ws.Range("A3:D3").Font.Bold = True
    ws.Range("A3:D3").Interior.Color = RGB(245, 245, 220)
End Sub

' === ETHICS SHEET ===
Sub Setup_Ethics_Sheet()
    Dim ws As Worksheet
    Set ws = GetOrCreateSheet("Ethics_Notes")
    ws.Cells.Clear
    
    ws.Range("A1").Value = "⚖️ Ethics Notes"
    ws.Range("A1").Font.Size = 14
    ws.Range("A1").Font.Bold = True
    
    ws.Range("A3").Value = "Topic"
    ws.Range("B3").Value = "Concern"
    ws.Range("C3").Value = "Resolution"
    
    ws.Range("A3:C3").Font.Bold = True
    ws.Range("A3:C3").Interior.Color = RGB(255, 250, 205)
End Sub

' === HELPER: CREATE IF NOT EXISTS ===
Function GetOrCreateSheet(sheetName As String) As Worksheet
    On Error Resume Next
    Set GetOrCreateSheet = ThisWorkbook.Sheets(sheetName)
    If GetOrCreateSheet Is Nothing Then
        Set GetOrCreateSheet = ThisWorkbook.Sheets.Add
        GetOrCreateSheet.Name = sheetName
    End If
    On Error GoTo 0
End Function

Private Sub Workbook_Open()
    ' Auto-run the Aura dashboard builder
    Call Build_Aura_Home_UI
    Call Add_Refresh_Button
End Sub
