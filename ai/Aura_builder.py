import win32com.client as win32
import os

# === OUTPUT FILE ===
file_path = os.path.abspath("Aura.xlsm")

# === Excel App ===
excel = win32.gencache.EnsureDispatch("Excel.Application")
excel.Visible = False

# Create new workbook
wb = excel.Workbooks.Add()
ws = wb.Sheets(1)
ws.Name = "Home"

# Save as macro-enabled workbook
wb.SaveAs(file_path, FileFormat=52)  # 52 = xlsm

# === VBA CODE ===
vba_code = r'''
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

' === HOME UI BUILDER ===
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

' === Helper for buttons ===
Sub AddButton(ws As Worksheet, txt As String, macro As String, row As Integer)
    Dim btn As Shape
    Set btn = ws.Shapes.AddShape(msoShapeRoundedRectangle, 100, row * 20, 200, 30)
    btn.TextFrame.Characters.Text = txt
    btn.OnAction = macro
    btn.Fill.ForeColor.RGB = RGB(0, 102, 204)
    btn.TextFrame.Characters.Font.Color = RGB(255, 255, 255)
    btn.TextFrame.Characters.Font.Bold = True
End Sub

' Auto-build Home UI on open
Private Sub Workbook_Open()
    Call Build_Home_UI
End Sub
'''

# === INJECT VBA ===
vbproj = wb.VBProject
module = vbproj.VBComponents.Add(1)  # 1 = standard module
module.CodeModule.AddFromString(vba_code)

# Save + close
wb.Save()
wb.Close(SaveChanges=True)
excel.Quit()

print(f"✅ Aura Hub with Home UI saved as: {file_path}")
