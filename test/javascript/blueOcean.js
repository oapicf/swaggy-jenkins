const assert = require('assert');
const Swaggy = require('swaggy-jenkins');
const blueOceanApi = new Swaggy.BlueOceanApi();
blueOceanApi.apiClient.basePath = 'https://jenkins-ccos.apache.org/';

describe('remote access', function() {
  describe('without format', function() {
    it('should return error when Jenkins instance has not installed Blue Ocean plugin', function(done) {
      var callback = function(error, data, response) {
        assert.equal(error.status, 404);
        assert.equal(data, null);
        assert.equal(response.res.statusCode, 404);
        done();
      };
      blueOceanApi.getOrganisations(callback);
    });
  });
});
