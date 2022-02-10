/**
 * The BlueOceanController file is a very simple one, which does not need to be changed manually,
 * unless there's a case where business logic routes the request to an entity which is not
 * the service.
 * The heavy lifting of the Controller item is done in Request.js - that is where request
 * parameters are extracted and sent to the service, and where response is handled.
 */

const Controller = require('./Controller');
const service = require('../services/BlueOceanService');
const deletePipelineQueueItem = async (request, response) => {
  await Controller.handleRequest(request, response, service.deletePipelineQueueItem);
};

const getAuthenticatedUser = async (request, response) => {
  await Controller.handleRequest(request, response, service.getAuthenticatedUser);
};

const getClasses = async (request, response) => {
  await Controller.handleRequest(request, response, service.getClasses);
};

const getJsonWebKey = async (request, response) => {
  await Controller.handleRequest(request, response, service.getJsonWebKey);
};

const getJsonWebToken = async (request, response) => {
  await Controller.handleRequest(request, response, service.getJsonWebToken);
};

const getOrganisation = async (request, response) => {
  await Controller.handleRequest(request, response, service.getOrganisation);
};

const getOrganisations = async (request, response) => {
  await Controller.handleRequest(request, response, service.getOrganisations);
};

const getPipeline = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipeline);
};

const getPipelineActivities = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineActivities);
};

const getPipelineBranch = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineBranch);
};

const getPipelineBranchRun = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineBranchRun);
};

const getPipelineBranches = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineBranches);
};

const getPipelineFolder = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineFolder);
};

const getPipelineFolderPipeline = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineFolderPipeline);
};

const getPipelineQueue = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineQueue);
};

const getPipelineRun = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineRun);
};

const getPipelineRunLog = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineRunLog);
};

const getPipelineRunNode = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineRunNode);
};

const getPipelineRunNodeStep = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineRunNodeStep);
};

const getPipelineRunNodeStepLog = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineRunNodeStepLog);
};

const getPipelineRunNodeSteps = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineRunNodeSteps);
};

const getPipelineRunNodes = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineRunNodes);
};

const getPipelineRuns = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelineRuns);
};

const getPipelines = async (request, response) => {
  await Controller.handleRequest(request, response, service.getPipelines);
};

const getSCM = async (request, response) => {
  await Controller.handleRequest(request, response, service.getSCM);
};

const getSCMOrganisationRepositories = async (request, response) => {
  await Controller.handleRequest(request, response, service.getSCMOrganisationRepositories);
};

const getSCMOrganisationRepository = async (request, response) => {
  await Controller.handleRequest(request, response, service.getSCMOrganisationRepository);
};

const getSCMOrganisations = async (request, response) => {
  await Controller.handleRequest(request, response, service.getSCMOrganisations);
};

const getUser = async (request, response) => {
  await Controller.handleRequest(request, response, service.getUser);
};

const getUserFavorites = async (request, response) => {
  await Controller.handleRequest(request, response, service.getUserFavorites);
};

const getUsers = async (request, response) => {
  await Controller.handleRequest(request, response, service.getUsers);
};

const postPipelineRun = async (request, response) => {
  await Controller.handleRequest(request, response, service.postPipelineRun);
};

const postPipelineRuns = async (request, response) => {
  await Controller.handleRequest(request, response, service.postPipelineRuns);
};

const putPipelineFavorite = async (request, response) => {
  await Controller.handleRequest(request, response, service.putPipelineFavorite);
};

const putPipelineRun = async (request, response) => {
  await Controller.handleRequest(request, response, service.putPipelineRun);
};

const search = async (request, response) => {
  await Controller.handleRequest(request, response, service.search);
};

const searchClasses = async (request, response) => {
  await Controller.handleRequest(request, response, service.searchClasses);
};


module.exports = {
  deletePipelineQueueItem,
  getAuthenticatedUser,
  getClasses,
  getJsonWebKey,
  getJsonWebToken,
  getOrganisation,
  getOrganisations,
  getPipeline,
  getPipelineActivities,
  getPipelineBranch,
  getPipelineBranchRun,
  getPipelineBranches,
  getPipelineFolder,
  getPipelineFolderPipeline,
  getPipelineQueue,
  getPipelineRun,
  getPipelineRunLog,
  getPipelineRunNode,
  getPipelineRunNodeStep,
  getPipelineRunNodeStepLog,
  getPipelineRunNodeSteps,
  getPipelineRunNodes,
  getPipelineRuns,
  getPipelines,
  getSCM,
  getSCMOrganisationRepositories,
  getSCMOrganisationRepository,
  getSCMOrganisations,
  getUser,
  getUserFavorites,
  getUsers,
  postPipelineRun,
  postPipelineRuns,
  putPipelineFavorite,
  putPipelineRun,
  search,
  searchClasses,
};
