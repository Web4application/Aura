function renderCircuit() {
    const container = document.getElementById('circuit-svg');
    container.innerHTML = '';
    circuit.forEach((op, i) => {
        const line = document.createElementNS("http://www.w3.org/2000/svg", "rect");
        line.setAttribute("x", 50 + i*60);
        line.setAttribute("y", op.targets[0]*50 + 10);
        line.setAttribute("width", 40);
        line.setAttribute("height", 30);
        line.setAttribute("fill", "orange");
        container.appendChild(line);

        const text = document.createElementNS("http://www.w3.org/2000/svg", "text");
        text.setAttribute("x", 50 + i*60 + 20);
        text.setAttribute("y", op.targets[0]*50 + 30);
        text.setAttribute("text-anchor", "middle");
        text.textContent = op.gate;
        container.appendChild(text);
    });
}
