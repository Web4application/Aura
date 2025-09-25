// Aura XLSL Vanilla JS Manager

let xlslData = { files: {}, csvs: {} };
let selectedSheet = '';
let parsedCsv = [];
let highlightedCsv = [];
const COLORS = ['#fffa65', '#a0e7e5', '#ffd6a5', '#ffadad', '#caffbf'];

const fileInput = document.getElementById('fileInput');
const csvText = document.getElementById('csvText');
const mavenRegex = document.getElementById('mavenRegex');
const replaceWith = document.getElementById('replaceWith');
const csvTable = document.getElementById('csvTable');
const sheetButtons = document.getElementById('sheetButtons');

// ---------- Load XLSL ----------
fileInput.addEventListener('change', (e) => {
    const file = e.target.files[0];
    const reader = new FileReader();
    reader.onload = (ev) => {
        try {
            xlslData = JSON.parse(ev.target.result);
            const sheets = Object.keys(xlslData.csvs);
            if (sheets.length > 0) {
                switchSheet(sheets[0]);
            }
            renderSheetButtons();
        } catch {
            alert('Invalid .xlsl file');
        }
    };
    reader.readAsText(file);
});

// ---------- Sheet Buttons ----------
function renderSheetButtons() {
    sheetButtons.innerHTML = '';
    Object.keys(xlslData.csvs).forEach(sheet => {
        const btn = document.createElement('button');
        btn.textContent = sheet;
        btn.addEventListener('click', () => switchSheet(sheet));
        sheetButtons.appendChild(btn);
    });
}

// ---------- Switch Sheet ----------
function switchSheet(sheet) {
    selectedSheet = sheet;
    csvText.value = xlslData.csvs[sheet];
    parseCsv(xlslData.csvs[sheet]);
}

// ---------- Parse CSV ----------
function parseCsv(text) {
    const parsed = Papa.parse(text, { header: true }).data;
    parsedCsv = parsed;
    highlightedCsv = parsed;
    renderTable();
}

// ---------- Convert Maven %regex[...] ----------
function convertMavenRegex(input) {
    const lines = input.split('\n').filter(Boolean);
    return lines.map(line => {
        const match = line.match(/%regex\[(.*)\]/);
        if (match) return new RegExp(match[1].replace(/\$\{project\.build\.directory\}/g, 'target'), 'g');
        return null;
    }).filter(Boolean);
}

// ---------- Render Table ----------
function renderTable() {
    csvTable.innerHTML = '';
    if (!highlightedCsv || highlightedCsv.length === 0) return;

    // Header
    const thead = document.createElement('thead');
    const trHead = document.createElement('tr');
    Object.keys(highlightedCsv[0]).forEach(col => {
        const th = document.createElement('th');
        th.innerHTML = col;
        trHead.appendChild(th);
    });
    thead.appendChild(trHead);
    csvTable.appendChild(thead);

    // Body
    const tbody = document.createElement('tbody');
    highlightedCsv.forEach(row => {
        const tr = document.createElement('tr');
        Object.keys(row).forEach(col => {
            const td = document.createElement('td');
            td.innerHTML = row[col];
            tr.appendChild(td);
        });
        tbody.appendChild(tr);
    });
    csvTable.appendChild(tbody);
}

// ---------- Highlight Sheet ----------
document.getElementById('highlightSheet').addEventListener('click', () => {
    const regexList = convertMavenRegex(mavenRegex.value);
    highlightedCsv = parsedCsv.map(row => {
        const newRow = {};
        Object.keys(row).forEach((col, i) => {
            let cell = row[col];
            regexList.forEach((rx, j) => {
                cell = cell.replace(rx, match => `<span style="background:${COLORS[j % COLORS.length]}">${match}</span>`);
            });
            newRow[col] = cell;
        });
        return newRow;
    });
    renderTable();
});

// ---------- Replace Sheet ----------
document.getElementById('replaceSheet').addEventListener('click', () => {
    const regexList = convertMavenRegex(mavenRegex.value);
    const replaced = parsedCsv.map(row => {
        const newRow = {};
        Object.keys(row).forEach(col => {
            let cell = row[col];
            regexList.forEach(rx => { cell = cell.replace(rx, replaceWith.value); });
            newRow[col] = cell;
        });
        return newRow;
    });
    parsedCsv = replaced;
    highlightedCsv = replaced;
    xlslData.csvs[selectedSheet] = Papa.unparse(replaced);
    renderTable();
});

// ---------- Highlight All Sheets ----------
document.getElementById('highlightAll').addEventListener('click', () => {
    const regexList = convertMavenRegex(mavenRegex.value);
    Object.keys(xlslData.csvs).forEach(sheet => {
        const parsed = Papa.parse(xlslData.csvs[sheet], { header: true }).data;
        const highlighted = parsed.map(row => {
            const newRow = {};
            Object.keys(row).forEach((col, i) => {
                let cell = row[col];
                regexList.forEach((rx, j) => {
                    cell = cell.replace(rx, match => `<span style="background:${COLORS[j % COLORS.length]}">${match}</span>`);
                });
                newRow[col] = cell;
            });
            return newRow;
        });
        xlslData.csvs[sheet] = Papa.unparse(highlighted);
    });
    parseCsv(xlslData.csvs[selectedSheet]);
});

// ---------- Replace All Sheets ----------
document.getElementById('replaceAll').addEventListener('click', () => {
    const regexList = convertMavenRegex(mavenRegex.value);
    Object.keys(xlslData.csvs).forEach(sheet => {
        const parsed = Papa.parse(xlslData.csvs[sheet], { header: true }).data;
        const replaced = parsed.map(row => {
            const newRow = {};
            Object.keys(row).forEach(col => {
                let cell = row[col];
                regexList.forEach(rx => { cell = cell.replace(rx, replaceWith.value); });
                newRow[col] = cell;
            });
            return newRow;
        });
        xlslData.csvs[sheet] = Papa.unparse(replaced);
    });
    parseCsv(xlslData.csvs[selectedSheet]);
});

// ---------- Export Master CSV ----------
document.getElementById('exportMaster').addEventListener('click', () => {
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
});

// ---------- Save XLSL ----------
document.getElementById('saveXlsl').addEventListener('click', () => {
    const blob = new Blob([JSON.stringify(xlslData, null, 2)], { type: 'application/json' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);
    link.download = "AuraProjectUpdated.xlsl";
    link.click();
});

// ---------- Update CSV Textarea ----------
csvText.addEventListener('input', () => {
    parseCsv(csvText.value);
});
