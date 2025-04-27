const assert = require('assert');
const Swaggy = require('swaggy-jenkins');
const remoteAccessApi = new Swaggy.RemoteAccessApi();
remoteAccessApi.apiClient.basePath = 'https://jenkins-ccos.apache.org/';

describe('remote access', function() {
  describe('get Jenkins', function() {
    it('should return response model', function(done) {
      var callback = function(error, data, response) {
        assert.equal(error, null);
        assert.equal(typeof data, 'object');
        assert.equal(response.res.statusCode, 200);
        done();
      };
      remoteAccessApi.getJenkins(callback);
    });
  });
});
