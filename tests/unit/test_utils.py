const { calculateTotal } = require('../../src/frontend/cart');

test('cart calculates total correctly', () => {
  const items = [{ price: 10, qty: 2 }, { price: 5, qty: 3 }];
  expect(calculateTotal(items)).toBe(35);
});

test('empty cart returns zero', () => {
  expect(calculateTotal([])).toBe(0);
});
