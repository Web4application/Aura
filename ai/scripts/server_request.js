const nock = require('nock');

nock('http://example.com', {
  reqheaders: {
    'authorization': 'AIzaSyAvrxOyAVzPVcnzxuD0mjKVDyS2bNWfC10',
    'content-type': 'application/json'
  }
})
.get('/protected/resource')
.reply(200, 'Authenticated content');
