# aura_dashboard.ps1
$Excel = New-Object -ComObject Excel.Application
$Excel.Visible = $false
$Workbook = $Excel.Workbooks.Add()

$Sheets = @("AI","Quantum","Telecom","Dashboard")
foreach ($i=0..($Sheets.Count-1)) {
    if ($i -eq 0) { $Sheet = $Workbook.Sheets.Item(1); $Sheet.Name = $Sheets[$i] } else { $Sheet = $Workbook.Sheets.Add(); $Sheet.Name = $Sheets[$i] }
}

# Import CSV data
$Workbook.Sheets.Item("AI").QueryTables.Add("TEXT;" + "$PSScriptRoot\ai_predictions.csv", $Workbook.Sheets.Item("AI").Range("A1"))
$Workbook.Sheets.Item("Quantum").QueryTables.Add("TEXT;" + "$PSScriptRoot\quantum_results.csv", $Workbook.Sheets.Item("Quantum").Range("A1"))
$Workbook.Sheets.Item("Telecom").QueryTables.Add("TEXT;" + "$PSScriptRoot\telecom_metrics.csv", $Workbook.Sheets.Item("Telecom").Range("A1"))

# Refresh QueryTables
foreach ($SheetName in $Sheets[0..2]) { $Workbook.Sheets.Item($SheetName).QueryTables | ForEach-Object { $_.Refresh() } }

$Dashboard = $Workbook.Sheets.Item("Dashboard")
$Dashboard.Cells.Item(1,1)="Aura Ultimate Control Panel"
$Dashboard.Range("A1").Font.Bold=$true

# === PivotTables & Charts ===
$PivotCacheAI = $Workbook.PivotTableWizard($Workbook.Sheets.Item("AI").UsedRange, $Dashboard.Range("A3"), "PivotAI", "", "", "", "Item", "Score")
$PivotChartAI = $Dashboard.Shapes.AddChart2(251,5,400,50,400,300).Chart
$PivotChartAI.SetSourceData($Dashboard.Range("A3"))
$PivotChartAI.ChartType = 51

$PivotCacheQuantum = $Workbook.PivotTableWizard($Workbook.Sheets.Item("Quantum").UsedRange, $Dashboard.Range("G3"), "PivotQuantum", "", "", "", "Circuit", "Outcome_1")
$PivotChartQuantum = $Dashboard.Shapes.AddChart2(251,5,700,50,400,300).Chart
$PivotChartQuantum.SetSourceData($Dashboard.Range("G3"))
$PivotChartQuantum.ChartType = 5

$PivotCacheTelecom = $Workbook.PivotTableWizard($Workbook.Sheets.Item("Telecom").UsedRange, $Dashboard.Range("A20"), "PivotTelecom", "", "", "", "Device", "Throughput_Mbps")
$PivotChartTelecom = $Dashboard.Shapes.AddChart2(251,5,400,350,400,300).Chart
$PivotChartTelecom.SetSourceData($Dashboard.Range("A20"))
$PivotChartTelecom.ChartType = 51

# === Macro to Refresh Everything ===
$VBA_Module = $Workbook.VBProject.VBComponents.Add(1)
$MacroCode=@"
Sub RefreshAuraUltimate()
    Dim ws As Worksheet
    Dim pt As PivotTable
    For Each ws In ThisWorkbook.Worksheets
        For Each pt In ws.PivotTables
            pt.RefreshTable
        Next pt
    Next ws
    MsgBox ""Aura Dashboard refreshed!""
End Sub
"@
$VBA_Module.CodeModule.AddFromString($MacroCode)

# Save as macro-enabled template
$FilePath="$env:USERPROFILE\Desktop\AuraUltimateControlPanel.xltm"
$Workbook.SaveAs($FilePath,52)

$Workbook.Close($true)
$Excel.Quit()
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($Excel)|Out-Null
Write-Host "Aura Ultimate Control Panel saved at $FilePath"
