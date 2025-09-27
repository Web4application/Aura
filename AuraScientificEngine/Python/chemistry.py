# Simple chemical reaction simulation

def reaction_energy(reactants, products):
    """
    reactants/products: dict {'compound': moles}
    returns: hypothetical reaction energy in kJ
    """
    delta_H = sum([v*100 for v in products.values()]) - sum([v*50 for v in reactants.values()])
    return delta_H

def combine_chemicals(*compounds):
    """Simulate combining chemical quantities safely"""
    return sum(compounds)
