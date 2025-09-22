const qubits = 3; // default qubit count
let circuit = [];

document.querySelectorAll('#gates-container button').forEach(btn => {
    btn.addEventListener('click', () => {
        let gate = btn.dataset.gate;
        let targets = prompt("Enter target qubit indices (comma-separated):");
        targets = targets.split(',').map(x => parseInt(x.trim()));
        circuit.push({gate, targets});
        alert(`Added ${gate} on qubits [${targets}]`);
    });
});

document.getElementById('run-circuit').addEventListener('click', async () => {
    const payload = { n_qubits: qubits, operations: circuit };
    const response = await fetch('http://127.0.0.1:8000/run_circuit', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(payload)
    });
    const data = await response.json();
    document.getElementById('result').textContent = JSON.stringify(data, null, 2);
    plotState(data.final_state);
});

function plotState(stateVector) {
    const ctx = document.getElementById('state-plot').getContext('2d');
    const n = Math.log2(stateVector.length);
    const labels = [...Array(stateVector.length)].map((_, i) => i.toString(2).padStart(n, '0'));
    const amplitudes = stateVector.map(c => Math.hypot(c[0], c[1] || 0));

    new Chart(ctx, {
        type: 'bar',
        data: { labels, datasets: [{ label: 'Amplitude', data: amplitudes, backgroundColor: 'rgba(75, 192, 192, 0.6)' }] },
        options: { scales: { y: { beginAtZero: true } } }
    });
}
