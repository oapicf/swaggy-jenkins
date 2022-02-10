/* eslint-disable no-unused-vars */
const Service = require('./Service');

/**
* Delete queue item from an organization pipeline queue
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* queue String Name of the queue item
* no response value expected for this operation
* */
const deletePipelineQueueItem = ({ organization, pipeline, queue }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        queue,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve authenticated user details for an organization
*
* organization String Name of the organization
* returns User
* */
const getAuthenticatedUser = ({ organization }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Get a list of class names supported by a given class
*
* _class String Name of the class
* returns String
* */
const getClasses = ({ _class }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        _class,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve JSON Web Key
*
* key Integer Key ID received as part of JWT header field kid
* returns String
* */
const getJsonWebKey = ({ key }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        key,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve JSON Web Token
*
* expiryTimeInMins Integer Token expiry time in minutes, default: 30 minutes (optional)
* maxExpiryTimeInMins Integer Maximum token expiry time in minutes, default: 480 minutes (optional)
* returns String
* */
const getJsonWebToken = ({ expiryTimeInMins, maxExpiryTimeInMins }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        expiryTimeInMins,
        maxExpiryTimeInMins,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve organization details
*
* organization String Name of the organization
* returns Organisation
* */
const getOrganisation = ({ organization }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve all organizations details
*
* returns List
* */
const getOrganisations = () => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve pipeline details for an organization
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* returns Pipeline
* */
const getPipeline = ({ organization, pipeline }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve all activities details for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* returns List
* */
const getPipelineActivities = ({ organization, pipeline }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve branch details for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* branch String Name of the branch
* returns BranchImpl
* */
const getPipelineBranch = ({ organization, pipeline, branch }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        branch,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve branch run details for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* branch String Name of the branch
* run String Name of the run
* returns PipelineRun
* */
const getPipelineBranchRun = ({ organization, pipeline, branch, run }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        branch,
        run,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve all branches details for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* returns MultibranchPipeline
* */
const getPipelineBranches = ({ organization, pipeline }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve pipeline folder for an organization
*
* organization String Name of the organization
* folder String Name of the folder
* returns PipelineFolderImpl
* */
const getPipelineFolder = ({ organization, folder }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        folder,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve pipeline details for an organization folder
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* folder String Name of the folder
* returns PipelineImpl
* */
const getPipelineFolderPipeline = ({ organization, pipeline, folder }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        folder,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve queue details for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* returns List
* */
const getPipelineQueue = ({ organization, pipeline }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve run details for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* run String Name of the run
* returns PipelineRun
* */
const getPipelineRun = ({ organization, pipeline, run }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        run,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Get log for a pipeline run
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* run String Name of the run
* start Integer Start position of the log (optional)
* download Boolean Set to true in order to download the file, otherwise it's passed as a response body (optional)
* returns String
* */
const getPipelineRunLog = ({ organization, pipeline, run, start, download }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        run,
        start,
        download,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve run node details for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* run String Name of the run
* node String Name of the node
* returns PipelineRunNode
* */
const getPipelineRunNode = ({ organization, pipeline, run, node }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        run,
        node,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve run node details for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* run String Name of the run
* node String Name of the node
* step String Name of the step
* returns PipelineStepImpl
* */
const getPipelineRunNodeStep = ({ organization, pipeline, run, node, step }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        run,
        node,
        step,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Get log for a pipeline run node step
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* run String Name of the run
* node String Name of the node
* step String Name of the step
* returns String
* */
const getPipelineRunNodeStepLog = ({ organization, pipeline, run, node, step }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        run,
        node,
        step,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve run node steps details for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* run String Name of the run
* node String Name of the node
* returns List
* */
const getPipelineRunNodeSteps = ({ organization, pipeline, run, node }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        run,
        node,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve run nodes details for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* run String Name of the run
* returns List
* */
const getPipelineRunNodes = ({ organization, pipeline, run }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        run,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve all runs details for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* returns List
* */
const getPipelineRuns = ({ organization, pipeline }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve all pipelines details for an organization
*
* organization String Name of the organization
* returns List
* */
const getPipelines = ({ organization }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve SCM details for an organization
*
* organization String Name of the organization
* scm String Name of SCM
* returns GithubScm
* */
const getSCM = ({ organization, scm }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        scm,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve SCM organization repositories details for an organization
*
* organization String Name of the organization
* scm String Name of SCM
* scmOrganisation String Name of the SCM organization
* credentialId String Credential ID (optional)
* pageSize Integer Number of items in a page (optional)
* pageNumber Integer Page number (optional)
* returns List
* */
const getSCMOrganisationRepositories = ({ organization, scm, scmOrganisation, credentialId, pageSize, pageNumber }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        scm,
        scmOrganisation,
        credentialId,
        pageSize,
        pageNumber,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve SCM organization repository details for an organization
*
* organization String Name of the organization
* scm String Name of SCM
* scmOrganisation String Name of the SCM organization
* repository String Name of the SCM repository
* credentialId String Credential ID (optional)
* returns List
* */
const getSCMOrganisationRepository = ({ organization, scm, scmOrganisation, repository, credentialId }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        scm,
        scmOrganisation,
        repository,
        credentialId,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve SCM organizations details for an organization
*
* organization String Name of the organization
* scm String Name of SCM
* credentialId String Credential ID (optional)
* returns List
* */
const getSCMOrganisations = ({ organization, scm, credentialId }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        scm,
        credentialId,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve user details for an organization
*
* organization String Name of the organization
* user String Name of the user
* returns User
* */
const getUser = ({ organization, user }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        user,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve user favorites details for an organization
*
* user String Name of the user
* returns List
* */
const getUserFavorites = ({ user }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        user,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Retrieve users details for an organization
*
* organization String Name of the organization
* returns User
* */
const getUsers = ({ organization }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Replay an organization pipeline run
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* run String Name of the run
* returns QueueItemImpl
* */
const postPipelineRun = ({ organization, pipeline, run }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        run,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Start a build for an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* returns QueueItemImpl
* */
const postPipelineRuns = ({ organization, pipeline }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Favorite/unfavorite a pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* uNKNOWNUnderscoreBASEUnderscoreTYPE UNKNOWN_BASE_TYPE Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
* returns FavoriteImpl
* */
const putPipelineFavorite = ({ organization, pipeline, uNKNOWNUnderscoreBASEUnderscoreTYPE }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        uNKNOWNUnderscoreBASEUnderscoreTYPE,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Stop a build of an organization pipeline
*
* organization String Name of the organization
* pipeline String Name of the pipeline
* run String Name of the run
* blocking String Set to true to make blocking stop, default: false (optional)
* timeOutInSecs Integer Timeout in seconds, default: 10 seconds (optional)
* returns PipelineRun
* */
const putPipelineRun = ({ organization, pipeline, run, blocking, timeOutInSecs }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        organization,
        pipeline,
        run,
        blocking,
        timeOutInSecs,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Search for any resource details
*
* q String Query string
* returns String
* */
const search = ({ q }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        q,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
* Get classes details
*
* q String Query string containing an array of class names
* returns String
* */
const searchClasses = ({ q }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        q,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);

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
