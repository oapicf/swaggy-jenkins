'use strict';

var utils = require('../utils/writer.js');
var BaseRemoteAccess = require('../service/BaseRemoteAccessService');

module.exports.getCrumb = function getCrumb (req, res, next) {
  BaseRemoteAccess.getCrumb()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
