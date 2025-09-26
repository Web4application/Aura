const debug = require('debug');
const log = debug('myapp:log');
const error = debug('myapp:error');
log('This will be logged under the myapp:log namespace');
error('This will be logged under the myapp:error namespace');
const debug = require('debug')('http');
debug('booting %o', 'My App');
if (error) debug('Error: %o', error);
localStorage.debug = 'myapp:*';
DEBUG=myapp:* node app.js
