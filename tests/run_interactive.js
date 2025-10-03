// tests/run_interactive.js
const inquirer = require('inquirer');
const { execSync } = require('child_process');

const modules = [
  { name: 'Cart / Utils', file: 'tests/unit/test_cart.js' },
  { name: 'Checkout / Integration', file: 'tests/integration/test_cart_checkout.js' },
];

async function main() {
  const answers = await inquirer.prompt([
    {
      type: 'list',
      name: 'module',
      message: 'Select a module to explore:',
      choices: modules.map(m => m.name),
    },
  ]);

  const selected = modules.find(m => m.name === answers.module);
  console.log(`\n--- Teaching: ${selected.name} ---\n`);
  console.log("Explanation: See how functions interact and edge cases are handled.\n");

  execSync(`npx jest ${selected.file} --verbose`, { stdio: 'inherit' });
}

main();
