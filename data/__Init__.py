from IPython.display import HTML

# Create a mockup of the Excel Home sheet UI using HTML/CSS (not real Excel, just a preview)
html_preview = """
<div style="font-family:Segoe UI, sans-serif; width:700px; border:1px solid #ccc; padding:20px; background:white;">

  <!-- Title -->
  <div style="background:linear-gradient(90deg, #003366, #663399); color:white; font-size:20px; font-weight:bold; padding:10px; text-align:center; border-radius:5px;">
    🌌 Aura Hub – Research Ecosystem
  </div>

  <!-- Navigation Tiles -->
  <div style="margin-top:20px; display:grid; grid-template-columns: 1fr 1fr; gap:15px;">
    <div style="background:#f9f9f9; padding:12px; border:1px solid #ccc; border-radius:8px; text-align:center; font-weight:bold; color:#0066cc;">🌐 GitHub Repository</div>
    <div style="background:#f9f9f9; padding:12px; border:1px solid #ccc; border-radius:8px; text-align:center; font-weight:bold; color:#0066cc;">📄 Documentation</div>
    <div style="background:#f9f9f9; padding:12px; border:1px solid #ccc; border-radius:8px; text-align:center; font-weight:bold; color:#0066cc;">📝 Experiment Logs</div>
    <div style="background:#f9f9f9; padding:12px; border:1px solid #ccc; border-radius:8px; text-align:center; font-weight:bold; color:#0066cc;">📊 Data Sheets</div>
    <div style="background:#f9f9f9; padding:12px; border:1px solid #ccc; border-radius:8px; text-align:center; font-weight:bold; color:#0066cc;">🤝 Collaboration Log</div>
    <div style="background:#f9f9f9; padding:12px; border:1px solid #ccc; border-radius:8px; text-align:center; font-weight:bold; color:#0066cc;">📈 Visualization Config</div>
    <div style="background:#f9f9f9; padding:12px; border:1px solid #ccc; border-radius:8px; text-align:center; font-weight:bold; color:#0066cc;">🚀 Deployment Settings</div>
  </div>

  <!-- Info Box -->
  <div style="margin-top:25px; background:#fff8dc; border:1px solid #ccc; padding:15px; border-radius:5px; font-size:14px;">
    ℹ️ <b>Aura Hub centralizes:</b><br>
    • STEM Research Sheets (Math, Physics, Genomics, Healthcare, Environment)<br>
    • AI & Quantum Simulation Results<br>
    • Ethics, Economics & Deployment Tracking
  </div>

  <!-- Footer -->
  <div style="margin-top:25px; font-size:12px; color:gray; text-align:center; font-style:italic;">
    🔗 Powered by Aura | v1.0 | Last updated: 2025-09-19
  </div>

</div>
"""

HTML(html_preview)
