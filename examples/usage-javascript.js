var Swaggy = require('swaggy-jenkins');

var api = new Swaggy.RemoteAccessApi();
api.apiClient.basePath = 'https://jenkins-ccos.apache.org/';

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
    process.exitCode = 1;
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
api.getJenkins(callback);
