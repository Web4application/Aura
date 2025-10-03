function checkout(total, userType) {
  if (userType === "premium") return total * 0.9;
  return total;
}

module.exports = { checkout };
