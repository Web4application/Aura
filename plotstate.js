function plotState(stateVector) {
    const ctx = document.getElementById('state-plot').getContext('2d');
    const n = Math.log2(stateVector.length);
    const labels = [...Array(stateVector.length)].map((_, i) => i.toString(2).padStart(n, '0'));
    const amplitudes = stateVector.map(c => Math.hypot(c[0], c[1] || 0));

    new Chart(ctx, {
        type: 'bar',
        data: { labels, datasets: [{ label: 'Amplitude', data: amplitudes, backgroundColor: 'rgba(75, 192, 192, 0.6)' }] },
        options: { scales: { y: { beginAtZero: true } } }
    });
}
