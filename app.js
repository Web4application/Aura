let circuit = [];
const qubits = 3;

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

document.getElementById('save-circuit').addEventListener('click', () => {
    const data = JSON.stringify(circuit, null, 2);
    const blob = new Blob([data], {type: "application/json"});
    const a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = "circuit.json";
    a.click();
});

document.getElementById('load-circuit').addEventListener('change', e => {
    const reader = new FileReader();
    reader.onload = evt => {
        circuit = JSON.parse(evt.target.result);
        renderCircuit();
    };
    reader.readAsText(e.target.files[0]);
});
