export function reactionEnergy(reactants, products){
    let delta_H = 0;
    for(let k in products) delta_H += products[k]*100;
    for(let k in reactants) delta_H -= reactants[k]*50;
    return delta_H;
}

export function combineChemicals(...compounds){
    return compounds.reduce((a,b)=>a+b,0);
}
