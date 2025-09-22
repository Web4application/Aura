<?php

declare(strict_types=1);

namespace Aura\Math\Internal\Calculator;

use Brick\Math\Internal\Calculator;

/**
 * Aura Quantum Engine – multi-qubit, Serai-ready, high-precision.
 *
 * @internal
 * @psalm-immutable
 */
class AuraQuantumCalculator extends Calculator
{
    private int $scale;

    public function __construct(int $scale = 20)
    {
        $this->scale = $scale;
    }

    /* --- Basic Arithmetic Helpers --- */
    private function bcAdd(string $a, string $b): string { return bcadd($a, $b, $this->scale); }
    private function bcSub(string $a, string $b): string { return bcsub($a, $b, $this->scale); }
    private function bcMul(string $a, string $b): string { return bcmul($a, $b, $this->scale); }
    private function bcDiv(string $a, string $b): string { return bcdiv($a, $b, $this->scale); }
    private function bcSqrt(string $a): string { return bcsqrt($a, $this->scale); }

    /* --- QUBIT REPRESENTATION --- */
    // Each qubit is represented as ['alpha' => amplitude0, 'beta' => amplitude1]
    public function createQubit(string $alpha = '1', string $beta = '0'): array
    {
        // Normalize automatically
        $norm = $this->normalizeAmplitude([$alpha, $beta]);
        return [
            'alpha' => $this->bcDiv($alpha, $norm),
            'beta'  => $this->bcDiv($beta, $norm),
        ];
    }

    /* --- Quantum Amplitude Utilities --- */
    public function normalizeAmplitude(array $amplitudes): string
    {
        $sum = '0';
        foreach ($amplitudes as $amp) {
            $sum = $this->bcAdd($sum, $this->bcMul($amp, $amp));
        }
        return $this->bcSqrt($sum);
    }

    public function complexMagnitude(string $real, string $imag): string
    {
        $real2 = $this->bcMul($real, $real);
        $imag2 = $this->bcMul($imag, $imag);
        return $this->bcSqrt($this->bcAdd($real2, $imag2));
    }

    /* --- QUANTUM GATES --- */
    
    // Pauli-X gate (bit flip)
    public function pauliX(array $qubit): array
    {
        return [
            'alpha' => $qubit['beta'],
            'beta'  => $qubit['alpha'],
        ];
    }

    // Hadamard gate (superposition)
    public function hadamard(array $qubit): array
    {
        $invSqrt2 = '0.70710678118654752440'; // 1/sqrt(2)
        return [
            'alpha' => $this->bcAdd($this->bcMul($invSqrt2, $qubit['alpha']), $this->bcMul($invSqrt2, $qubit['beta'])),
            'beta'  => $this->bcSub($this->bcMul($invSqrt2, $qubit['alpha']), $this->bcMul($invSqrt2, $qubit['beta'])),
        ];
    }

    /* --- MULTI-QUBIT STATES --- */
    public function tensorProduct(array $q1, array $q2): array
    {
        return [
            '00' => $this->bcMul($q1['alpha'], $q2['alpha']),
            '01' => $this->bcMul($q1['alpha'], $q2['beta']),
            '10' => $this->bcMul($q1['beta'],  $q2['alpha']),
            '11' => $this->bcMul($q1['beta'],  $q2['beta']),
        ];
    }

    /* --- MEASUREMENT --- */
    public function measure(array $qubit): string
    {
        // Simple probabilistic measurement simulation
        $alpha2 = $this->bcMul($qubit['alpha'], $qubit['alpha']);
        $rand = (string) mt_rand() / mt_getrandmax(); // random 0..1
        return bccomp($rand, $alpha2, $this->scale) < 1 ? '0' : '1';
    }
}
