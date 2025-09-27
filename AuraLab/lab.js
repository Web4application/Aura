import * as MathLib from './formulas.js';
import * as Physics from './physics.js';
import * as Chemistry from './chemistry.js';
import * as Quantum from './quantum.js';

function runLabDemo() {
    console.log("Math demo: atan(1) =", MathLib.atan(1));

    // Physics demo
    console.log("Kinetic Energy (5kg,10m/s):", Physics.kineticEnergy(5,10));

    // Chemistry demo
    const energy = Chemistry.reactionEnergy({'H2':2},{'H2O':2});
    console.log("Reaction Energy:", energy);

    // Quantum demo
    let q = Quantum.qubitZero();
    q = Quantum.applyGate(Quantum.H, q);
    console.log("Qubit superposition:", q);
    console.log("Measurement:", Quantum.measure(q));
}

// Run demo on page load
window.onload = runLabDemo;
