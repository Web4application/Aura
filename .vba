Sub AddSlicers()
    Dim ws As Worksheet, pt As PivotTable
    Set ws = ThisWorkbook.Sheets("Dashboard")
    Set pt = ws.PivotTables("PivotAI")
    ws.Slicers.Add pt, "Item", "AI Item Slicer"
End Sub
