import React, { useState } from 'react';
import Papa from 'papaparse';

const COLORS = ['#fffa65', '#a0e7e5', '#ffd6a5', '#ffadad', '#caffbf'];

function AuraXlslCrossSheetManager() {
  const [xlslData, setXlslData] = useState({ files: {}, csvs: {} });
  const [selectedSheet, setSelectedSheet] = useState('');
  const [csvText, setCsvText] = useState('');
  const [mavenRegex, setMavenRegex] = useState('');
  const [replaceWith, setReplaceWith] = useState('');
  const [parsedCsv, setParsedCsv] = useState([]);
  const [highlightedCsv, setHighlightedCsv] = useState([]);

  // Load XLSL
  const loadXlsl = (file) => {
    const reader = new FileReader();
    reader.onload = (e) => {
      try {
        const data = JSON.parse(e.target.result);
        setXlslData(data);
        const sheets = Object.keys(data.csvs);
        if (sheets.length > 0) {
          setSelectedSheet(sheets[0]);
          setCsvText(data.csvs[sheets[0]]);
          parseCsv(data.csvs[sheets[0]]);
        }
      } catch (err) {
        alert('Invalid .xlsl file');
      }
    };
    reader.readAsText(file);
  };

  // Parse CSV
  const parseCsv = (text) => {
    const parsed = Papa.parse(text, { header: true }).data;
    setParsedCsv(parsed);
    setHighlightedCsv(parsed);
  };

  // Convert Maven %regex[...] to JS regex
  const convertMavenRegex = (input) => {
    const lines = input.split('\n').filter(Boolean);
    return lines.map(line => {
      const match = line.match(/%regex\[(.*)\]/);
      if (match) return new RegExp(match[1].replace(/\$\{project\.build\.directory\}/g, 'target'), 'g');
      return null;
    }).filter(Boolean);
  };

  // Highlight CSV matches (single sheet)
  const highlightCsvMatches = () => {
    const regexList = convertMavenRegex(mavenRegex);
    const highlighted = parsedCsv.map(row => {
      const newRow = {};
      Object.keys(row).forEach((col, idx) => {
        let cell = row[col];
        regexList.forEach((rx, i) => {
          cell = cell.replace(rx, match => `<span style="background:${COLORS[i % COLORS.length]}">${match}</span>`);
        });
        newRow[col] = cell;
      });
      return newRow;
    });
    setHighlightedCsv(highlighted);
  };

  // Replace CSV matches (single sheet)
  const replaceCsvMatches = () => {
    const regexList = convertMavenRegex(mavenRegex);
    const replaced = parsedCsv.map(row => {
      const newRow = {};
      Object.keys(row).forEach(col => {
        let cell = row[col];
        regexList.forEach(rx => { cell = cell.replace(rx, replaceWith); });
        newRow[col] = cell;
      });
      return newRow;
    });
    setParsedCsv(replaced);
    setHighlightedCsv(replaced);
    setXlslData({
      ...xlslData,
      csvs: { ...xlslData.csvs, [selectedSheet]: Papa.unparse(replaced) }
    });
  };

  // Apply regex across all sheets
  const highlightAllSheets = () => {
    const regexList = convertMavenRegex(mavenRegex);
    const newCsvs = {};
    Object.keys(xlslData.csvs).forEach(sheet => {
      const parsed = Papa.parse(xlslData.csvs[sheet], { header: true }).data;
      const highlighted = parsed.map(row => {
        const newRow = {};
        Object.keys(row).forEach(col => {
          let cell = row[col];
          regexList.forEach((rx, i) => {
            cell = cell.replace(rx, match => `<span style="background:${COLORS[i % COLORS.length]}">${match}</span>`);
          });
          newRow[col] = cell;
        });
        return newRow;
      });
      newCsvs[sheet] = highlighted;
    });
    setHighlightedCsv(newCsvs[selectedSheet] || []);
    setXlslData({ ...xlslData, csvs: Object.fromEntries(Object.keys(newCsvs).map(k => [k, Papa.unparse(newCsvs[k])] )) });
  };

  // Replace regex matches across all sheets
  const replaceAllSheets = () => {
    const regexList = convertMavenRegex(mavenRegex);
    const newCsvs = {};
    Object.keys(xlslData.csvs).forEach(sheet => {
      const parsed = Papa.parse(xlslData.csvs[sheet], { header: true }).data;
      const replaced = parsed.map(row => {
        const newRow = {};
        Object.keys(row).forEach(col => {
          let cell = row[col];
          regexList.forEach(rx => { cell = cell.replace(rx, replaceWith); });
          newRow[col] = cell;
        });
        return newRow;
      });
      newCsvs[sheet] = replaced;
    });
    setHighlightedCsv(newCsvs[selectedSheet] || []);
    setXlslData({ ...xlslData, csvs: Object.fromEntries(Object.keys(newCsvs).map(k => [k, Papa.unparse(newCsvs[k])] )) });
  };

  // Aggregate all sheets into one master CSV
  const exportMasterCsv = () => {
    let masterData = [];
    Object.keys(xlslData.csvs).forEach(sheet => {
      const parsed = Papa.parse(xlslData.csvs[sheet], { header: true }).data;
      const parsedWithSheet = parsed.map(row => ({ sheet, ...row }));
      masterData = masterData.concat(parsedWithSheet);
    });
    const csvString = Papa.unparse(masterData);
    const blob = new Blob([csvString], { type: 'text/csv' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);
    link.download = "master.csv";
    link.click();
  };

  // Switch sheet
  const switchSheet = (sheet) => {
    setSelectedSheet(sheet);
    setCsvText(xlslData.csvs[sheet]);
    parseCsv(xlslData.csvs[sheet]);
  };

  // Save XLSL
  const saveXlsl = () => {
    const blob = new Blob([JSON.stringify(xlslData, null, 2)], { type: 'application/json' });
    const link = document.createElement("a");
    link.href = URL.createObjectURL(blob);
    link.download = "multi-sheet-data.xlsl";
    link.click();
  };

  return (
    <div style={{ fontFamily: 'monospace', padding: '20px' }}>
      <h2>Aura XLSL Multi-Sheet + Cross-Sheet Manager</h2>

      <input type="file" accept=".xlsl" onChange={e => loadXlsl(e.target.files[0])} /><br /><br />

      <div>
        <strong>Select Sheet:</strong>
        {Object.keys(xlslData.csvs).map(sheet => (
          <button key={sheet} onClick={() => switchSheet(sheet)} style={{ marginLeft: '5px' }}>
            {sheet}
          </button>
        ))}
      </div><br />

      <textarea
        rows={6}
        cols={80}
        value={csvText}
        onChange={e => { setCsvText(e.target.value); parseCsv(e.target.value); }}
        placeholder="CSV content..."
      /><br /><br />

      <textarea
        rows={4}
        cols={80}
        value={mavenRegex}
        onChange={e => setMavenRegex(e.target.value)}
        placeholder="Paste Maven %regex[...] excludes..."
      /><br /><br />

      <input
        type="text"
        value={replaceWith}
        onChange={e => setReplaceWith(e.target.value)}
        placeholder="Replacement text"
      /><br /><br />

      <button onClick={highlightCsvMatches}>Highlight Sheet</button>
      <button onClick={replaceCsvMatches} style={{ marginLeft: '10px' }}>Replace Sheet</button>
      <button onClick={highlightAllSheets} style={{ marginLeft: '10px' }}>Highlight All Sheets</button>
      <button onClick={replaceAllSheets} style={{ marginLeft: '10px' }}>Replace All Sheets</button>
      <button onClick={exportMasterCsv} style={{ marginLeft: '10px' }}>Export Master CSV</button>
      <button onClick={saveXlsl} style={{ marginLeft: '10px' }}>Save XLSL</button>

      <h3>Highlighted CSV (Sheet: {selectedSheet})</h3>
      <div style={{ overflowX: 'auto' }}>
        <table border="1" cellPadding="4" style={{ borderCollapse: 'collapse' }}>
          <thead>
            <tr>
              {parsedCsv[0] && Object.keys(parsedCsv[0]).map((col, i) => <th key={i}>{col}</th>)}
            </tr>
          </thead>
          <tbody>
            {highlightedCsv.map((row, rIdx) => (
              <tr key={rIdx}>
                {Object.keys(row).map((col, cIdx) => (
                  <td key={cIdx} dangerouslySetInnerHTML={{ __html: row[col] }} />
                ))}
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default AuraXlslCrossSheetManager;
