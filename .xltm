# ============================================
# Aura Project Ultimate Interactive Dashboard
# ============================================

$Excel = New-Object -ComObject Excel.Application
$Excel.Visible = $false

$Workbook = $Excel.Workbooks.Add()
$rand = New-Object System.Random

# Define sheets
$SheetNames = @("Sales","Inventory","Employees","Finance","Projects","Marketing","Dashboard")

# Populate data sheets
foreach ($SheetName in $SheetNames) {
    if ($Workbook.Sheets.Count -ge 1) {
        $Sheet = $Workbook.Sheets.Item(1)
        $Sheet.Name = $SheetName
    } else {
        $Sheet = $Workbook.Sheets.Add()
        $Sheet.Name = $SheetName
    }

    switch ($SheetName) {
        "Sales" {
            $Sheet.Cells.Item(1,1)="Product";$Sheet.Cells.Item(1,2)="Quantity";$Sheet.Cells.Item(1,3)="UnitPrice";$Sheet.Cells.Item(1,4)="Total"
            for ($r=2;$r -le 21;$r++){
                $Sheet.Cells.Item($r,1)="Product $r"
                $Sheet.Cells.Item($r,2)=$rand.Next(50,200)
                $Sheet.Cells.Item($r,3)=$rand.Next(5,20)
                $Sheet.Cells.Item($r,4).Formula="=B$r*C$r"
            }
            $Sheet.Range("A1:D1").Font.Bold=$true
            $Sheet.Columns.AutoFit()
        }
        "Inventory" {
            $Sheet.Cells.Item(1,1)="Item";$Sheet.Cells.Item(1,2)="Stock";$Sheet.Cells.Item(1,3)="Reorder"
            for ($r=2;$r -le 21;$r++){
                $Sheet.Cells.Item($r,1)="Item $r"
                $Sheet.Cells.Item($r,2)=$rand.Next(100,600)
                $Sheet.Cells.Item($r,3)=$rand.Next(50,200)
            }
            $Sheet.Range("A1:C1").Font.Bold=$true
            $Sheet.Columns.AutoFit()
        }
        "Employees" {
            $Sheet.Cells.Item(1,1)="Name";$Sheet.Cells.Item(1,2)="Dept";$Sheet.Cells.Item(1,3)="Salary";$Sheet.Cells.Item(1,4)="Bonus"
            for ($r=2;$r -le 21;$r++){
                $Sheet.Cells.Item($r,1)="Employee $r"
                $Sheet.Cells.Item($r,2)="Dept $($rand.Next(1,6))"
                $Sheet.Cells.Item($r,3)=$rand.Next(3000,7000)
                $Sheet.Cells.Item($r,4).Formula="=C$r*0.1"
            }
            $Sheet.Range("A1:D1").Font.Bold=$true
            $Sheet.Columns.AutoFit()
        }
        "Finance" {
            $Sheet.Cells.Item(1,1)="Month";$Sheet.Cells.Item(1,2)="Revenue";$Sheet.Cells.Item(1,3)="Expenses";$Sheet.Cells.Item(1,4)="Profit"
            for ($r=2;$r -le 13;$r++){
                $Sheet.Cells.Item($r,1)="Month $r"
                $Sheet.Cells.Item($r,2)=$rand.Next(5000,20000)
                $Sheet.Cells.Item($r,3)=$rand.Next(2000,15000)
                $Sheet.Cells.Item($r,4).Formula="=B$r-C$r"
            }
            $Sheet.Range("A1:D1").Font.Bold=$true
            $Sheet.Columns.AutoFit()
        }
        "Projects" {
            $Sheet.Cells.Item(1,1)="Project";$Sheet.Cells.Item(1,2)="Status";$Sheet.Cells.Item(1,3)="Budget";$Sheet.Cells.Item(1,4)="Spent"
            for ($r=2;$r -le 11;$r++){
                $Sheet.Cells.Item($r,1)="Project $r"
                $Sheet.Cells.Item($r,2)=("On Track","Delayed","Completed")[$rand.Next(0,3)]
                $Sheet.Cells.Item($r,3)=$rand.Next(5000,30000)
                $Sheet.Cells.Item($r,4)=$rand.Next(1000,30000)
            }
            $Sheet.Range("A1:D1").Font.Bold=$true
            $Sheet.Columns.AutoFit()
        }
        "Marketing" {
            $Sheet.Cells.Item(1,1)="Campaign";$Sheet.Cells.Item(1,2)="Reach";$Sheet.Cells.Item(1,3)="Conversions";$Sheet.Cells.Item(1,4)="ROI"
            for ($r=2;$r -le 11;$r++){
                $Sheet.Cells.Item($r,1)="Campaign $r"
                $Sheet.Cells.Item($r,2)=$rand.Next(1000,50000)
                $Sheet.Cells.Item($r,3)=$rand.Next(50,5000)
                $Sheet.Cells.Item($r,4).Formula="=C$r/B$r"
            }
            $Sheet.Range("A1:D1").Font.Bold=$true
            $Sheet.Columns.AutoFit()
        }
        "Dashboard" {
            $Sheet.Cells.Item(1,1)="Aura Ultimate Dashboard"
            $Sheet.Range("A1").Font.Bold=$true
            $Sheet.Columns.AutoFit()
        }
    }
}

# Create PivotTables and PivotCharts
$Dashboard = $Workbook.Sheets.Item("Dashboard")
$SalesSheet = $Workbook.Sheets.Item("Sales")
$EmployeesSheet = $Workbook.Sheets.Item("Employees")
$FinanceSheet = $Workbook.Sheets.Item("Finance")

# Sales PivotTable
$SalesRange = $SalesSheet.Range("A1:D21")
$PivotCacheSales = $Workbook.PivotTableWizard([ref]$SalesRange, $Dashboard.Range("A3"), "SalesPivot", "", "", "", "Product", "Total", "", 0, 1, 0)
$SalesChart = $Dashboard.Shapes.AddChart2(251,5,400,50,400,300).Chart
$SalesChart.SetSourceData($Dashboard.Range("A3"))
$SalesChart.ChartType = 51

# Employees PivotTable
$EmpRange = $EmployeesSheet.Range("A1:D21")
$PivotCacheEmp = $Workbook.PivotTableWizard([ref]$EmpRange, $Dashboard.Range("G3"), "EmpPivot", "", "", "", "Dept", "Bonus", "", 0, 1, 0)
$EmpChart = $Dashboard.Shapes.AddChart2(251,5,700,50,400,300).Chart
$EmpChart.SetSourceData($Dashboard.Range("G3"))
$EmpChart.ChartType = 5

# Finance PivotTable
$FinanceRange = $FinanceSheet.Range("A1:D13")
$PivotCacheFinance = $Workbook.PivotTableWizard([ref]$FinanceRange, $Dashboard.Range("A20"), "FinancePivot", "", "", "", "Month", "Profit", "", 0, 1, 0)
$FinanceChart = $Dashboard.Shapes.AddChart2(251,5,400,350,400,300).Chart
$FinanceChart.SetSourceData($Dashboard.Range("A20"))
$FinanceChart.ChartType = 51

# Add macro to refresh PivotTables & Charts
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
    MsgBox ""Aura Dashboard refreshed successfully!""
End Sub
"@
$VBA_Module.CodeModule.AddFromString($MacroCode)

# Save as macro-enabled template
$FilePath="$env:USERPROFILE\Desktop\AuraUltimateDashboard.xltm"
$Workbook.SaveAs($FilePath,52)

# Close Excel
$Workbook.Close($true)
$Excel.Quit()
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($Excel)|Out-Null

Write-Host "Ultimate Aura interactive dashboard template saved at $FilePath"
