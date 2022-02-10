/**
 * The RemoteAccessController file is a very simple one, which does not need to be changed manually,
 * unless there's a case where business logic routes the request to an entity which is not
 * the service.
 * The heavy lifting of the Controller item is done in Request.js - that is where request
 * parameters are extracted and sent to the service, and where response is handled.
 */

const Controller = require('./Controller');
const service = require('../services/RemoteAccessService');
const getComputer = async (request, response) => {
  await Controller.handleRequest(request, response, service.getComputer);
};

const getJenkins = async (request, response) => {
  await Controller.handleRequest(request, response, service.getJenkins);
};

const getJob = async (request, response) => {
  await Controller.handleRequest(request, response, service.getJob);
};

const getJobConfig = async (request, response) => {
  await Controller.handleRequest(request, response, service.getJobConfig);
};

const getJobLastBuild = async (request, response) => {
  await Controller.handleRequest(request, response, service.getJobLastBuild);
};

const getJobProgressiveText = async (request, response) => {
  await Controller.handleRequest(request, response, service.getJobProgressiveText);
};

const getQueue = async (request, response) => {
  await Controller.handleRequest(request, response, service.getQueue);
};

const getQueueItem = async (request, response) => {
  await Controller.handleRequest(request, response, service.getQueueItem);
};

const getView = async (request, response) => {
  await Controller.handleRequest(request, response, service.getView);
};

const getViewConfig = async (request, response) => {
  await Controller.handleRequest(request, response, service.getViewConfig);
};

const headJenkins = async (request, response) => {
  await Controller.handleRequest(request, response, service.headJenkins);
};

const postCreateItem = async (request, response) => {
  await Controller.handleRequest(request, response, service.postCreateItem);
};

const postCreateView = async (request, response) => {
  await Controller.handleRequest(request, response, service.postCreateView);
};

const postJobBuild = async (request, response) => {
  await Controller.handleRequest(request, response, service.postJobBuild);
};

const postJobConfig = async (request, response) => {
  await Controller.handleRequest(request, response, service.postJobConfig);
};

const postJobDelete = async (request, response) => {
  await Controller.handleRequest(request, response, service.postJobDelete);
};

const postJobDisable = async (request, response) => {
  await Controller.handleRequest(request, response, service.postJobDisable);
};

const postJobEnable = async (request, response) => {
  await Controller.handleRequest(request, response, service.postJobEnable);
};

const postJobLastBuildStop = async (request, response) => {
  await Controller.handleRequest(request, response, service.postJobLastBuildStop);
};

const postViewConfig = async (request, response) => {
  await Controller.handleRequest(request, response, service.postViewConfig);
};


module.exports = {
  getComputer,
  getJenkins,
  getJob,
  getJobConfig,
  getJobLastBuild,
  getJobProgressiveText,
  getQueue,
  getQueueItem,
  getView,
  getViewConfig,
  headJenkins,
  postCreateItem,
  postCreateView,
  postJobBuild,
  postJobConfig,
  postJobDelete,
  postJobDisable,
  postJobEnable,
  postJobLastBuildStop,
  postViewConfig,
};
