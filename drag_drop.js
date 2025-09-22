const gates = document.querySelectorAll('.gate');
let dragData = null;

gates.forEach(g => {
    g.addEventListener('dragstart', (e) => {
        dragData = { gate: g.dataset.gate };
    });
});

const qubitLines = document.querySelectorAll('.qubit-line');
qubitLines.forEach(line => {
    line.addEventListener('dragover', (e) => e.preventDefault());
    line.addEventListener('drop', (e) => {
        if (!dragData) return;
        const index = parseInt(line.dataset.index);
        // Add gate to the circuit array
        circuit.push({ gate: dragData.gate, targets: [index] });
        renderCircuit(); // redraw gates on canvas/SVG
        dragData = null;
    });
});
