#Aura.xlqua

with pd.ExcelWriter("/mnt/data/Aura.xlsx", engine="openpyxl", mode="a", if_sheet_exists="replace") as writer:
    # Sheet 14: Pure Mathematics
    pure_math = pd.DataFrame({
        "Topic": ["Algebra", "Calculus", "Number Theory"],
        "Formula/Theorem": [
            "Quadratic Formula: x = (-b ± √(b²-4ac)) / 2a",
            "d/dx (sin x) = cos x",
            "Prime Number Theorem: π(n) ~ n / ln(n)"
        ],
        "Notes": [
            "Solves quadratic equations",
            "Basic derivative rule",
            "Distribution of primes"
        ]
    })
    pure_math.to_excel(writer, sheet_name="Pure_Mathematics", index=False)

    # Sheet 15: Further Mathematics
    further_math = pd.DataFrame({
        "Concept": ["Matrix Multiplication", "Eigenvalues", "Diff Eq"],
        "Expression": [
            "[[a,b],[c,d]] * [[e,f],[g,h]]",
            "det(A - λI) = 0",
            "dy/dx + Py = Q"
        ],
        "Application": [
            "Transforms and linear systems",
            "Stability and quantum states",
            "Model growth/decay"
        ]
    })
    further_math.to_excel(writer, sheet_name="Further_Mathematics", index=False)

    # Sheet 16: Applied Physics
    applied_physics = pd.DataFrame({
        "Field": ["Mechanics", "Thermodynamics", "Electromagnetism", "Quantum Physics"],
        "Equation": [
            "F = ma",
            "ΔU = Q - W",
            "∇·E = ρ/ε₀",
            "Ψ(x,t) Schrödinger Eq"
        ],
        "Notes": [
            "Newton's 2nd Law",
            "First Law of Thermodynamics",
            "Gauss's Law",
            "Wavefunction evolution"
        ]
    })
    applied_physics.to_excel(writer, sheet_name="Applied_Physics", index=False)

    # Sheet 17: Reasoning Logic
    reasoning_logic = pd.DataFrame({
        "Premise": ["All humans are mortal", "Socrates is a human", "If it rains, ground gets wet"],
        "Conclusion": ["Socrates is mortal", "Valid logical step", "Ground is wet"],
        "Truth_Value": ["True", "True", "True"]
    })
    reasoning_logic.to_excel(writer, sheet_name="Reasoning_Logic", index=False)

    # Sheet 18: Simulation Problems
    simulation_problems = pd.DataFrame({
        "Problem": ["Projectile Motion", "Heat Transfer", "Quantum Tunneling"],
        "Setup": [
            "v0=20 m/s, θ=45°, g=9.8",
            "Rod: length=1m, k=200 W/mK",
            "Particle energy<E barrier"
        ],
        "Expected_Result": [
            "Range ≈ 40.8 m",
            "Temperature profile along rod",
            "Nonzero probability of tunneling"
        ]
    })
    simulation_problems.to_excel(writer, sheet_name="Simulation_Problems", index=False)

"/mnt/data/Aura.xlsx"
