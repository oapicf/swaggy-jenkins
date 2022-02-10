/* eslint-disable no-unused-vars */
const Service = require('./Service');

/**
* Retrieve computer details
*
* depth Integer Recursion depth in response model
* returns ComputerSet
* */
const getComputer = ({ depth }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        depth,
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
* Retrieve Jenkins details
*
* returns Hudson
* */
const getJenkins = () => new Promise(
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
* Retrieve job details
*
* name String Name of the job
* returns FreeStyleProject
* */
const getJob = ({ name }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
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
* Retrieve job configuration
*
* name String Name of the job
* returns String
* */
const getJobConfig = ({ name }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
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
* Retrieve job's last build details
*
* name String Name of the job
* returns FreeStyleBuild
* */
const getJobLastBuild = ({ name }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
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
* Retrieve job's build progressive text output
*
* name String Name of the job
* number String Build number
* start String Starting point of progressive text output
* no response value expected for this operation
* */
const getJobProgressiveText = ({ name, number, start }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
        number,
        start,
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
* Retrieve queue details
*
* returns Queue
* */
const getQueue = () => new Promise(
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
* Retrieve queued item details
*
* number String Queue number
* returns Queue
* */
const getQueueItem = ({ number }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        number,
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
* Retrieve view details
*
* name String Name of the view
* returns ListView
* */
const getView = ({ name }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
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
* Retrieve view configuration
*
* name String Name of the view
* returns String
* */
const getViewConfig = ({ name }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
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
* Retrieve Jenkins headers
*
* no response value expected for this operation
* */
const headJenkins = () => new Promise(
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
* Create a new job using job configuration, or copied from an existing job
*
* name String Name of the new job
* from String Existing job to copy from (optional)
* mode String Set to 'copy' for copying an existing job (optional)
* jenkinsCrumb String CSRF protection token (optional)
* contentType String Content type header application/xml (optional)
* body String Job configuration in config.xml format (optional)
* no response value expected for this operation
* */
const postCreateItem = ({ name, from, mode, jenkinsCrumb, contentType, body }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
        from,
        mode,
        jenkinsCrumb,
        contentType,
        body,
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
* Create a new view using view configuration
*
* name String Name of the new view
* jenkinsCrumb String CSRF protection token (optional)
* contentType String Content type header application/xml (optional)
* body String View configuration in config.xml format (optional)
* no response value expected for this operation
* */
const postCreateView = ({ name, jenkinsCrumb, contentType, body }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
        jenkinsCrumb,
        contentType,
        body,
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
* Build a job
*
* name String Name of the job
* json String 
* token String  (optional)
* jenkinsCrumb String CSRF protection token (optional)
* no response value expected for this operation
* */
const postJobBuild = ({ name, json, token, jenkinsCrumb }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
        json,
        token,
        jenkinsCrumb,
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
* Update job configuration
*
* name String Name of the job
* body String Job configuration in config.xml format
* jenkinsCrumb String CSRF protection token (optional)
* no response value expected for this operation
* */
const postJobConfig = ({ name, body, jenkinsCrumb }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
        body,
        jenkinsCrumb,
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
* Delete a job
*
* name String Name of the job
* jenkinsCrumb String CSRF protection token (optional)
* no response value expected for this operation
* */
const postJobDelete = ({ name, jenkinsCrumb }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
        jenkinsCrumb,
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
* Disable a job
*
* name String Name of the job
* jenkinsCrumb String CSRF protection token (optional)
* no response value expected for this operation
* */
const postJobDisable = ({ name, jenkinsCrumb }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
        jenkinsCrumb,
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
* Enable a job
*
* name String Name of the job
* jenkinsCrumb String CSRF protection token (optional)
* no response value expected for this operation
* */
const postJobEnable = ({ name, jenkinsCrumb }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
        jenkinsCrumb,
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
* Stop a job
*
* name String Name of the job
* jenkinsCrumb String CSRF protection token (optional)
* no response value expected for this operation
* */
const postJobLastBuildStop = ({ name, jenkinsCrumb }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
        jenkinsCrumb,
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
* Update view configuration
*
* name String Name of the view
* body String View configuration in config.xml format
* jenkinsCrumb String CSRF protection token (optional)
* no response value expected for this operation
* */
const postViewConfig = ({ name, body, jenkinsCrumb }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        name,
        body,
        jenkinsCrumb,
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
