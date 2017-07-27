'use strict';

var url = require('url');

var BlueOcean = require('./BlueOceanService');

module.exports.getAuthenticatedUser = function getAuthenticatedUser (req, res, next) {
  BlueOcean.getAuthenticatedUser(req.swagger.params, res, next);
};

module.exports.getClasses = function getClasses (req, res, next) {
  BlueOcean.getClasses(req.swagger.params, res, next);
};

module.exports.getOrganisation = function getOrganisation (req, res, next) {
  BlueOcean.getOrganisation(req.swagger.params, res, next);
};

module.exports.getOrganisations = function getOrganisations (req, res, next) {
  BlueOcean.getOrganisations(req.swagger.params, res, next);
};

module.exports.getPipelineBranchByOrg = function getPipelineBranchByOrg (req, res, next) {
  BlueOcean.getPipelineBranchByOrg(req.swagger.params, res, next);
};

module.exports.getPipelineBranchesByOrg = function getPipelineBranchesByOrg (req, res, next) {
  BlueOcean.getPipelineBranchesByOrg(req.swagger.params, res, next);
};

module.exports.getPipelineByOrg = function getPipelineByOrg (req, res, next) {
  BlueOcean.getPipelineByOrg(req.swagger.params, res, next);
};

module.exports.getPipelineFolderByOrg = function getPipelineFolderByOrg (req, res, next) {
  BlueOcean.getPipelineFolderByOrg(req.swagger.params, res, next);
};

module.exports.getPipelineFolderByOrg_1 = function getPipelineFolderByOrg_1 (req, res, next) {
  BlueOcean.getPipelineFolderByOrg_1(req.swagger.params, res, next);
};

module.exports.getPipelinesByOrg = function getPipelinesByOrg (req, res, next) {
  BlueOcean.getPipelinesByOrg(req.swagger.params, res, next);
};

module.exports.getUser = function getUser (req, res, next) {
  BlueOcean.getUser(req.swagger.params, res, next);
};

module.exports.getUsers = function getUsers (req, res, next) {
  BlueOcean.getUsers(req.swagger.params, res, next);
};

module.exports.search = function search (req, res, next) {
  BlueOcean.search(req.swagger.params, res, next);
};

module.exports.search_2 = function search_2 (req, res, next) {
  BlueOcean.search_2(req.swagger.params, res, next);
};
