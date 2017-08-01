'use strict';

var url = require('url');

var RemoteAccess = require('./RemoteAccessService');

module.exports.getComputer = function getComputer (req, res, next) {
  RemoteAccess.getComputer(req.swagger.params, res, next);
};

module.exports.getCrumb = function getCrumb (req, res, next) {
  RemoteAccess.getCrumb(req.swagger.params, res, next);
};

module.exports.getJenkins = function getJenkins (req, res, next) {
  RemoteAccess.getJenkins(req.swagger.params, res, next);
};

module.exports.getJob = function getJob (req, res, next) {
  RemoteAccess.getJob(req.swagger.params, res, next);
};

module.exports.getJobConfig = function getJobConfig (req, res, next) {
  RemoteAccess.getJobConfig(req.swagger.params, res, next);
};

module.exports.getJobLastBuild = function getJobLastBuild (req, res, next) {
  RemoteAccess.getJobLastBuild(req.swagger.params, res, next);
};

module.exports.getJobProgressiveText = function getJobProgressiveText (req, res, next) {
  RemoteAccess.getJobProgressiveText(req.swagger.params, res, next);
};

module.exports.getQueue = function getQueue (req, res, next) {
  RemoteAccess.getQueue(req.swagger.params, res, next);
};

module.exports.getQueueItem = function getQueueItem (req, res, next) {
  RemoteAccess.getQueueItem(req.swagger.params, res, next);
};

module.exports.getView = function getView (req, res, next) {
  RemoteAccess.getView(req.swagger.params, res, next);
};

module.exports.getViewConfig = function getViewConfig (req, res, next) {
  RemoteAccess.getViewConfig(req.swagger.params, res, next);
};

module.exports.headJenkins = function headJenkins (req, res, next) {
  RemoteAccess.headJenkins(req.swagger.params, res, next);
};

module.exports.postCreateItem = function postCreateItem (req, res, next) {
  RemoteAccess.postCreateItem(req.swagger.params, res, next);
};

module.exports.postCreateView = function postCreateView (req, res, next) {
  RemoteAccess.postCreateView(req.swagger.params, res, next);
};

module.exports.postJobBuild = function postJobBuild (req, res, next) {
  RemoteAccess.postJobBuild(req.swagger.params, res, next);
};

module.exports.postJobConfig = function postJobConfig (req, res, next) {
  RemoteAccess.postJobConfig(req.swagger.params, res, next);
};

module.exports.postJobDelete = function postJobDelete (req, res, next) {
  RemoteAccess.postJobDelete(req.swagger.params, res, next);
};

module.exports.postJobDisable = function postJobDisable (req, res, next) {
  RemoteAccess.postJobDisable(req.swagger.params, res, next);
};

module.exports.postJobEnable = function postJobEnable (req, res, next) {
  RemoteAccess.postJobEnable(req.swagger.params, res, next);
};

module.exports.postJobLastBuildStop = function postJobLastBuildStop (req, res, next) {
  RemoteAccess.postJobLastBuildStop(req.swagger.params, res, next);
};

module.exports.postViewConfig = function postViewConfig (req, res, next) {
  RemoteAccess.postViewConfig(req.swagger.params, res, next);
};
