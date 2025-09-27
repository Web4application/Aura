from formulas import atan, atan2
from physics import kinetic_energy, vector_angle
from chemistry import reaction_energy
from quantum import qubit_zero, apply_gate, H, measure

class AITeacher:
    def explain_formula(self, formula:str):
        # Simple rule-based explanation (expand later with LLM)
        if "atan" in formula:
            return "atan(x) computes the angle whose tangent is x."
        if "kinetic_energy" in formula:
            return "Kinetic energy = 0.5 * mass * velocity^2."
        return "This formula can be computed numerically."

    def suggest_chemistry(self, reactants, products):
        energy = reaction_energy(reactants, products)
        if energy > 0:
            return f"Reaction is endothermic. Energy required: {energy} kJ"
        else:
            return f"Reaction is exothermic. Energy released: {-energy} kJ"

    def guide_quantum(self, qubit):
        result, probs = measure(qubit)
        return f"Qubit measured: {result}. Probabilities: {probs}"

# Example
teacher = AITeacher()
print(teacher.explain_formula("atan(1)"))
print(teacher.suggest_chemistry({'H2':2},{'H2O':2}))
q = apply_gate(H, qubit_zero())
print(teacher.guide_quantum(q))
