export const Visualizer = {
    drawQuantum: (qubit, canvasId) => {
        const canvas = document.getElementById(canvasId);
        if(!canvas) return;
        const ctx = canvas.getContext("2d");
        ctx.clearRect(0,0,canvas.width,canvas.height);
        const prob0 = Math.abs(qubit[0])**2;
        const prob1 = Math.abs(qubit[1])**2;
        ctx.fillStyle = "blue";
        ctx.fillRect(50, 50, prob0*200, 50);
        ctx.fillStyle = "red";
        ctx.fillRect(50, 120, prob1*200, 50);
        ctx.font = "16px Arial";
        ctx.fillStyle = "black";
        ctx.fillText("Probability |0>: "+prob0.toFixed(2), 50, 45);
        ctx.fillText("Probability |1>: "+prob1.toFixed(2), 50, 115);
    }
};
