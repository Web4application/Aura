import React, { useState } from 'react';
import Papa from 'papaparse';

function AuraRegexTool() {
  const [csvData, setCsvData] = useState([]);
  const [pattern, setPattern] = useState('');
  const [flags, setFlags] = useState('');
  const [text, setText] = useState('');
  const [replacement, setReplacement] = useState('');
  const [highlightedText, setHighlightedText] = useState('');
  const [highlightedCSV, setHighlightedCSV] = useState([]);
  const [codeSnippet, setCodeSnippet] = useState('');

  // Parse CSV
  const handleCSV = (e) => {
    const file = e.target.files[0];
    Papa.parse(file, {
      header: true,
      skipEmptyLines: true,
      complete: (results) => setCsvData(results.data),
    });
  };

  // Update highlights and code snippet
  const updateHighlight = () => {
    try {
      const regex = new RegExp(pattern, flags);

      // Highlight text matches
      const textHtml = text.replace(regex, match => `<span class="highlight">${match}</span>`);
      setHighlightedText(textHtml);

      // Highlight CSV matches
      const csvHtml = csvData.map(row =>
        Object.fromEntries(
          Object.entries(row).map(([key, value]) => [
            key,
            value.replace(regex, match => `<span class="highlight">${match}</span>`)
          ])
        )
      );
      setHighlightedCSV(csvHtml);

      // Update live code snippet
      const snippet = `
const regex = /${pattern}/${flags};
const matchesInText = text.match(regex);
const matchesInCSV = csvData.map(row =>
  Object.fromEntries(
    Object.entries(row).map(([key, value]) => [key, value.match(regex)])
  )
);
      `;
      setCodeSnippet(snippet.trim());
    } catch {
      setHighlightedText('<span class="error">Invalid regex</span>');
      setHighlightedCSV([]);
      setCodeSnippet('// Invalid regex');
    }
  };

  // Apply replacements
  const applyReplacement = () => {
    try {
      const regex = new RegExp(pattern, flags);
      const replacedText = text.replace(regex, replacement);
      const replacedCSV = csvData.map(row =>
        Object.fromEntries(
          Object.entries(row).map(([key, value]) => [key, value.replace(regex, replacement)])
        )
      );
      setText(replacedText);
      setCsvData(replacedCSV);
      updateHighlight();
    } catch {
      setHighlightedText('<span class="error">Invalid regex</span>');
    }
  };

  // Download CSV
  const downloadCSV = () => {
    const csvString = Papa.unparse(csvData);
    const blob = new Blob([csvString], { type: 'text/csv;charset=utf-8;' });
    const link = document.createElement("a");
    link.href = URL.createObjectURL(blob);
    link.download = "processed.csv";
    link.click();
  };

  return (
    <div style={{ fontFamily: 'monospace', padding: '20px' }}>
      <h2>Aura Universal Regex Tool</h2>

      <input type="file" accept=".csv" onChange={handleCSV} /><br /><br />
      <input
        type="text"
        placeholder="Regex pattern"
        value={pattern}
        onChange={e => { setPattern(e.target.value); updateHighlight(); }}
      />
      <input
        type="text"
        placeholder="Flags (g,i,m)"
        value={flags}
        onChange={e => { setFlags(e.target.value); updateHighlight(); }}
        style={{ width: '80px', marginLeft: '10px' }}
      /><br /><br />

      <textarea
        placeholder="Test text..."
        value={text}
        onChange={e => { setText(e.target.value); updateHighlight(); }}
        rows={5}
        cols={60}
      /><br /><br />

      <input
        type="text"
        placeholder="Replacement (optional)"
        value={replacement}
        onChange={e => setReplacement(e.target.value)}
      />
      <button onClick={applyReplacement}>Apply Replacement</button>
      <button onClick={downloadCSV} style={{ marginLeft: '10px' }}>Download CSV</button>

      <h3>Highlighted Text:</h3>
      <pre dangerouslySetInnerHTML={{ __html: highlightedText }} />

      {csvData.length > 0 && (
        <>
          <h3>Highlighted CSV:</h3>
          <table border="1" cellPadding="5">
            <thead>
              <tr>
                {Object.keys(csvData[0]).map((col, i) => <th key={i}>{col}</th>)}
              </tr>
            </thead>
            <tbody>
              {highlightedCSV.map((row, i) => (
                <tr key={i}>
                  {Object.entries(row).map(([key, value], j) => (
                    <td key={j} dangerouslySetInnerHTML={{ __html: value }} />
                  ))}
                </tr>
              ))}
            </tbody>
          </table>
        </>
      )}

      <h3>Live Regex Code Snippet:</h3>
      <pre>{codeSnippet}</pre>

      <h3>Regex Cheat Sheet:</h3>
      <ul>
        <li>Digits: <code>\d</code></li>
        <li>Word chars: <code>\w</code></li>
        <li>Whitespace: <code>\s</code></li>
        <li>Email: <code>^[\w.-]+@[a-zA-Z\d.-]+\.[a-zA-Z]{2,}$</code></li>
        <li>Phone: <code>^\+?\d{10,15}$</code></li>
        <li>Date YYYY-MM-DD: <code>^\d{4}-\d{2}-\d{2}$</code></li>
      </ul>
    </div>
  );
}

export default AuraRegexTool;
