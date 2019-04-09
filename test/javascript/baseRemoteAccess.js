const assert = require('assert');
const Swaggy = require('swaggy-jenkins');
const baseRemoteAccessApi = new Swaggy.BaseRemoteAccessApi();
baseRemoteAccessApi.apiClient.basePath = 'https://ci.eclipse.org/ecf/';

describe('base remote access', function() {
  describe('get Jenkins', function() {
    it('should return response model', function(done) {
      var callback = function(error, data, response) {
        assert.equal(error, null);
        assert.equal(typeof data, 'object');
        assert.equal(response.res.statusCode, 200);
        done();
      };
      baseRemoteAccessApi.getCrumb(callback);
    });
  });
});
