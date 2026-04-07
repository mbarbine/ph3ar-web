const assert = require('assert');
const fs = require('fs');

try {
  // Very basic test to ensure server.js exists and is readable
  const serverExists = fs.existsSync('./server.js');
  assert.strictEqual(serverExists, true, 'server.js should exist');
  console.log('Test passed: server.js exists.');
} catch (error) {
  console.error('Test failed:', error.message);
  process.exit(1);
}
