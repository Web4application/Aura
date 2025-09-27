export function qubitZero(){ return [1,0]; }
export function qubitOne(){ return [0,1]; }

export function superposition(alpha, beta){
    let norm = Math.sqrt(alpha*alpha + beta*beta);
    return [alpha/norm, beta/norm];
}

// Gates
export const H = [[1/Math.sqrt(2),1/Math.sqrt(2)],[1/Math.sqrt(2),-1/Math.sqrt(2)]];
export const X = [[0,1],[1,0]];

export function applyGate(gate, qubit){
    return [
        gate[0][0]*qubit[0] + gate[0][1]*qubit[1],
        gate[1][0]*qubit[0] + gate[1][1]*qubit[1]
    ];
}

export function measure(qubit){
    const probs = qubit.map(c => c*c);
    const sum = probs[0]+probs[1];
    const normalized = [probs[0]/sum, probs[1]/sum];
    const r = Math.random();
    return r < normalized[0] ? 0 : 1;
}
