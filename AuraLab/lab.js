import * as MathLib from './formulas.js';
import * as Chemistry from './chemistry.js';
import * as Quantum from './quantum.js';
import * as Physics from './physics.js';
import { Visualizer } from './visualizer.js';

export const AITeacher = {
    explainFormula: (formula) => {
        if(formula.includes("atan")) return "atan(x) computes the angle whose tangent is x.";
        if(formula.includes("kineticEnergy")) return "Kinetic energy = 0.5 * mass * velocity^2.";
        return "This formula can be computed numerically.";
    },
    suggestChemistry: (reactants, products) => {
        const energy = Chemistry.reactionEnergy(reactants, products);
        if(energy > 0) return `Reaction is endothermic. Energy required: ${energy} kJ`;
        return `Reaction is exothermic. Energy released: ${-energy} kJ`;
    },
    guideQuantum: (qubit) => {
        const measurement = Quantum.measure(qubit);
        return `Qubit measured: ${measurement}`;
    },
    suggestNextStep: (context) => {
        // Suggest next action based on lab context
        if(context === "quantum") return "Try applying Hadamard on qubit 2.";
        if(context === "chemistry") return "Try combining H2 and O2 in a 2:1 ratio.";
        return "Explore new formulas or reactions!";
    }
};

// Interactive lab demo
export function runLabDemo() {
    // Math example
    const angle = MathLib.atan(1);
    console.log("atan(1) =", angle);
    console.log("AI Teacher hint:", AITeacher.explainFormula("atan(1)"));

    // Chemistry example
    const energy = Chemistry.reactionEnergy({'H2':2}, {'H2O':2});
    console.log("Reaction Energy:", energy);
    console.log(AITeacher.suggestChemistry({'H2':2}, {'H2O':2}));

    // Quantum example
    let q = Quantum.applyGate(Quantum.H, Quantum.qubitZero());
    console.log("Quantum measurement:", AITeacher.guideQuantum(q));
    console.log("AI suggestion:", AITeacher.suggestNextStep("quantum"));

    // Visualizer example
    Visualizer.drawQuantum(q, "quantumCanvas");
}
