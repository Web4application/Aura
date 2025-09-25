$Excel = New-Object -ComObject Excel.Application
$Excel.Visible = $false
$Workbook = $Excel.Workbooks.Add()

$data_folder = "$PSScriptRoot\..\data\datasets"

# Load all CSV files as sheets
$csv_files = Get-ChildItem -Path $data_folder -Filter "*.csv"
foreach ($file in $csv_files) {
    $sheet = $Workbook.Sheets.Add()
    $sheet.Name = $file.BaseName
    $Workbook.Sheets.Item($sheet.Name).QueryTables.Add("TEXT;" + $file.FullName, $sheet.Range("A1"))
    $Workbook.Sheets.Item($sheet.Name).QueryTables[1].Refresh()
}

# Dashboard sheet
$Dashboard = $Workbook.Sheets.Add()
$Dashboard.Name = "Dashboard"
$Dashboard.Cells.Item(1,1) = "Aura General Dashboard"
$Dashboard.Range("A1").Font.Bold = $true

# Add macro to refresh all sheets
$VBA_Module = $Workbook.VBProject.VBComponents.Add(1)
$MacroCode=@"
Sub RefreshAuraDashboard()
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

# Save macro-enabled template
$xltm_path="$env:USERPROFILE\Desktop\AuraDashboard.xltm"
$Workbook.SaveAs($xltm_path,52)

# Save timestamped .xlsr snapshot
$timestamp = Get-Date -Format yyyyMMdd_HHmmss
$xlsr_path="$PSScriptRoot\..\data\snapshots/AuraSnapshot_$timestamp.xlsr"
$Workbook.SaveAs($xlsr_path,51)

$Workbook.Close($true)
$Excel.Quit()
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($Excel)|Out-Null

Write-Host "✅ Dashboard saved as .xltm and snapshot .xlsr"
