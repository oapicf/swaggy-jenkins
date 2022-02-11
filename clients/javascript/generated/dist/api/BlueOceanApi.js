"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _BranchImpl = _interopRequireDefault(require("../model/BranchImpl"));

var _FavoriteImpl = _interopRequireDefault(require("../model/FavoriteImpl"));

var _GithubOrganization = _interopRequireDefault(require("../model/GithubOrganization"));

var _GithubScm = _interopRequireDefault(require("../model/GithubScm"));

var _MultibranchPipeline = _interopRequireDefault(require("../model/MultibranchPipeline"));

var _Organisation = _interopRequireDefault(require("../model/Organisation"));

var _Pipeline = _interopRequireDefault(require("../model/Pipeline"));

var _PipelineActivity = _interopRequireDefault(require("../model/PipelineActivity"));

var _PipelineFolderImpl = _interopRequireDefault(require("../model/PipelineFolderImpl"));

var _PipelineImpl = _interopRequireDefault(require("../model/PipelineImpl"));

var _PipelineRun = _interopRequireDefault(require("../model/PipelineRun"));

var _PipelineRunNode = _interopRequireDefault(require("../model/PipelineRunNode"));

var _PipelineStepImpl = _interopRequireDefault(require("../model/PipelineStepImpl"));

var _QueueItemImpl = _interopRequireDefault(require("../model/QueueItemImpl"));

var _User = _interopRequireDefault(require("../model/User"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
* BlueOcean service.
* @module api/BlueOceanApi
* @version 1.1.2-pre.0
*/
var BlueOceanApi = /*#__PURE__*/function () {
  /**
  * Constructs a new BlueOceanApi. 
  * @alias module:api/BlueOceanApi
  * @class
  * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
  * default to {@link module:ApiClient#instance} if unspecified.
  */
  function BlueOceanApi(apiClient) {
    _classCallCheck(this, BlueOceanApi);

    this.apiClient = apiClient || _ApiClient["default"].instance;
  }
  /**
   * Callback function to receive the result of the deletePipelineQueueItem operation.
   * @callback module:api/BlueOceanApi~deletePipelineQueueItemCallback
   * @param {String} error Error message, if any.
   * @param data This operation does not return a value.
   * @param {String} response The complete HTTP response.
   */

  /**
   * Delete queue item from an organization pipeline queue
   * @param {String} organization Name of the organization
   * @param {String} pipeline Name of the pipeline
   * @param {String} queue Name of the queue item
   * @param {module:api/BlueOceanApi~deletePipelineQueueItemCallback} callback The callback function, accepting three arguments: error, data, response
   */


  _createClass(BlueOceanApi, [{
    key: "deletePipelineQueueItem",
    value: function deletePipelineQueueItem(organization, pipeline, queue, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling deletePipelineQueueItem");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling deletePipelineQueueItem");
      } // verify the required parameter 'queue' is set


      if (queue === undefined || queue === null) {
        throw new Error("Missing the required parameter 'queue' when calling deletePipelineQueueItem");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'queue': queue
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}', 'DELETE', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getAuthenticatedUser operation.
     * @callback module:api/BlueOceanApi~getAuthenticatedUserCallback
     * @param {String} error Error message, if any.
     * @param {module:model/User} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve authenticated user details for an organization
     * @param {String} organization Name of the organization
     * @param {module:api/BlueOceanApi~getAuthenticatedUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/User}
     */

  }, {
    key: "getAuthenticatedUser",
    value: function getAuthenticatedUser(organization, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getAuthenticatedUser");
      }

      var pathParams = {
        'organization': organization
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _User["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/user/', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getClasses operation.
     * @callback module:api/BlueOceanApi~getClassesCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get a list of class names supported by a given class
     * @param {String} _class Name of the class
     * @param {module:api/BlueOceanApi~getClassesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */

  }, {
    key: "getClasses",
    value: function getClasses(_class, callback) {
      var postBody = null; // verify the required parameter '_class' is set

      if (_class === undefined || _class === null) {
        throw new Error("Missing the required parameter '_class' when calling getClasses");
      }

      var pathParams = {
        'class': _class
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = 'String';
      return this.apiClient.callApi('/blue/rest/classes/{class}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getJsonWebKey operation.
     * @callback module:api/BlueOceanApi~getJsonWebKeyCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve JSON Web Key
     * @param {Number} key Key ID received as part of JWT header field kid
     * @param {module:api/BlueOceanApi~getJsonWebKeyCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */

  }, {
    key: "getJsonWebKey",
    value: function getJsonWebKey(key, callback) {
      var postBody = null; // verify the required parameter 'key' is set

      if (key === undefined || key === null) {
        throw new Error("Missing the required parameter 'key' when calling getJsonWebKey");
      }

      var pathParams = {
        'key': key
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = [];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = 'String';
      return this.apiClient.callApi('/jwt-auth/jwks/{key}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getJsonWebToken operation.
     * @callback module:api/BlueOceanApi~getJsonWebTokenCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve JSON Web Token
     * @param {Object} opts Optional parameters
     * @param {Number} opts.expiryTimeInMins Token expiry time in minutes, default: 30 minutes
     * @param {Number} opts.maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes
     * @param {module:api/BlueOceanApi~getJsonWebTokenCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */

  }, {
    key: "getJsonWebToken",
    value: function getJsonWebToken(opts, callback) {
      opts = opts || {};
      var postBody = null;
      var pathParams = {};
      var queryParams = {
        'expiryTimeInMins': opts['expiryTimeInMins'],
        'maxExpiryTimeInMins': opts['maxExpiryTimeInMins']
      };
      var headerParams = {};
      var formParams = {};
      var authNames = [];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = 'String';
      return this.apiClient.callApi('/jwt-auth/token', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getOrganisation operation.
     * @callback module:api/BlueOceanApi~getOrganisationCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Organisation} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve organization details
     * @param {String} organization Name of the organization
     * @param {module:api/BlueOceanApi~getOrganisationCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Organisation}
     */

  }, {
    key: "getOrganisation",
    value: function getOrganisation(organization, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getOrganisation");
      }

      var pathParams = {
        'organization': organization
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _Organisation["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getOrganisations operation.
     * @callback module:api/BlueOceanApi~getOrganisationsCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/Organisation>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve all organizations details
     * @param {module:api/BlueOceanApi~getOrganisationsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/Organisation>}
     */

  }, {
    key: "getOrganisations",
    value: function getOrganisations(callback) {
      var postBody = null;
      var pathParams = {};
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = [_Organisation["default"]];
      return this.apiClient.callApi('/blue/rest/organizations/', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipeline operation.
     * @callback module:api/BlueOceanApi~getPipelineCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Pipeline} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve pipeline details for an organization
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {module:api/BlueOceanApi~getPipelineCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Pipeline}
     */

  }, {
    key: "getPipeline",
    value: function getPipeline(organization, pipeline, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipeline");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipeline");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _Pipeline["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineActivities operation.
     * @callback module:api/BlueOceanApi~getPipelineActivitiesCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/PipelineActivity>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve all activities details for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {module:api/BlueOceanApi~getPipelineActivitiesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/PipelineActivity>}
     */

  }, {
    key: "getPipelineActivities",
    value: function getPipelineActivities(organization, pipeline, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineActivities");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineActivities");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = [_PipelineActivity["default"]];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineBranch operation.
     * @callback module:api/BlueOceanApi~getPipelineBranchCallback
     * @param {String} error Error message, if any.
     * @param {module:model/BranchImpl} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve branch details for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} branch Name of the branch
     * @param {module:api/BlueOceanApi~getPipelineBranchCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/BranchImpl}
     */

  }, {
    key: "getPipelineBranch",
    value: function getPipelineBranch(organization, pipeline, branch, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineBranch");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineBranch");
      } // verify the required parameter 'branch' is set


      if (branch === undefined || branch === null) {
        throw new Error("Missing the required parameter 'branch' when calling getPipelineBranch");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'branch': branch
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _BranchImpl["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineBranchRun operation.
     * @callback module:api/BlueOceanApi~getPipelineBranchRunCallback
     * @param {String} error Error message, if any.
     * @param {module:model/PipelineRun} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve branch run details for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} branch Name of the branch
     * @param {String} run Name of the run
     * @param {module:api/BlueOceanApi~getPipelineBranchRunCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/PipelineRun}
     */

  }, {
    key: "getPipelineBranchRun",
    value: function getPipelineBranchRun(organization, pipeline, branch, run, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineBranchRun");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineBranchRun");
      } // verify the required parameter 'branch' is set


      if (branch === undefined || branch === null) {
        throw new Error("Missing the required parameter 'branch' when calling getPipelineBranchRun");
      } // verify the required parameter 'run' is set


      if (run === undefined || run === null) {
        throw new Error("Missing the required parameter 'run' when calling getPipelineBranchRun");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'branch': branch,
        'run': run
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _PipelineRun["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineBranches operation.
     * @callback module:api/BlueOceanApi~getPipelineBranchesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/MultibranchPipeline} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve all branches details for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {module:api/BlueOceanApi~getPipelineBranchesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/MultibranchPipeline}
     */

  }, {
    key: "getPipelineBranches",
    value: function getPipelineBranches(organization, pipeline, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineBranches");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineBranches");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _MultibranchPipeline["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineFolder operation.
     * @callback module:api/BlueOceanApi~getPipelineFolderCallback
     * @param {String} error Error message, if any.
     * @param {module:model/PipelineFolderImpl} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve pipeline folder for an organization
     * @param {String} organization Name of the organization
     * @param {String} folder Name of the folder
     * @param {module:api/BlueOceanApi~getPipelineFolderCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/PipelineFolderImpl}
     */

  }, {
    key: "getPipelineFolder",
    value: function getPipelineFolder(organization, folder, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineFolder");
      } // verify the required parameter 'folder' is set


      if (folder === undefined || folder === null) {
        throw new Error("Missing the required parameter 'folder' when calling getPipelineFolder");
      }

      var pathParams = {
        'organization': organization,
        'folder': folder
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _PipelineFolderImpl["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{folder}/', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineFolderPipeline operation.
     * @callback module:api/BlueOceanApi~getPipelineFolderPipelineCallback
     * @param {String} error Error message, if any.
     * @param {module:model/PipelineImpl} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve pipeline details for an organization folder
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} folder Name of the folder
     * @param {module:api/BlueOceanApi~getPipelineFolderPipelineCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/PipelineImpl}
     */

  }, {
    key: "getPipelineFolderPipeline",
    value: function getPipelineFolderPipeline(organization, pipeline, folder, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineFolderPipeline");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineFolderPipeline");
      } // verify the required parameter 'folder' is set


      if (folder === undefined || folder === null) {
        throw new Error("Missing the required parameter 'folder' when calling getPipelineFolderPipeline");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'folder': folder
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _PipelineImpl["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineQueue operation.
     * @callback module:api/BlueOceanApi~getPipelineQueueCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/QueueItemImpl>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve queue details for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {module:api/BlueOceanApi~getPipelineQueueCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/QueueItemImpl>}
     */

  }, {
    key: "getPipelineQueue",
    value: function getPipelineQueue(organization, pipeline, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineQueue");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineQueue");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = [_QueueItemImpl["default"]];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineRun operation.
     * @callback module:api/BlueOceanApi~getPipelineRunCallback
     * @param {String} error Error message, if any.
     * @param {module:model/PipelineRun} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve run details for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} run Name of the run
     * @param {module:api/BlueOceanApi~getPipelineRunCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/PipelineRun}
     */

  }, {
    key: "getPipelineRun",
    value: function getPipelineRun(organization, pipeline, run, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineRun");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineRun");
      } // verify the required parameter 'run' is set


      if (run === undefined || run === null) {
        throw new Error("Missing the required parameter 'run' when calling getPipelineRun");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'run': run
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _PipelineRun["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineRunLog operation.
     * @callback module:api/BlueOceanApi~getPipelineRunLogCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get log for a pipeline run
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} run Name of the run
     * @param {Object} opts Optional parameters
     * @param {Number} opts.start Start position of the log
     * @param {Boolean} opts.download Set to true in order to download the file, otherwise it's passed as a response body
     * @param {module:api/BlueOceanApi~getPipelineRunLogCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */

  }, {
    key: "getPipelineRunLog",
    value: function getPipelineRunLog(organization, pipeline, run, opts, callback) {
      opts = opts || {};
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineRunLog");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineRunLog");
      } // verify the required parameter 'run' is set


      if (run === undefined || run === null) {
        throw new Error("Missing the required parameter 'run' when calling getPipelineRunLog");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'run': run
      };
      var queryParams = {
        'start': opts['start'],
        'download': opts['download']
      };
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = 'String';
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineRunNode operation.
     * @callback module:api/BlueOceanApi~getPipelineRunNodeCallback
     * @param {String} error Error message, if any.
     * @param {module:model/PipelineRunNode} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve run node details for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} run Name of the run
     * @param {String} node Name of the node
     * @param {module:api/BlueOceanApi~getPipelineRunNodeCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/PipelineRunNode}
     */

  }, {
    key: "getPipelineRunNode",
    value: function getPipelineRunNode(organization, pipeline, run, node, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineRunNode");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineRunNode");
      } // verify the required parameter 'run' is set


      if (run === undefined || run === null) {
        throw new Error("Missing the required parameter 'run' when calling getPipelineRunNode");
      } // verify the required parameter 'node' is set


      if (node === undefined || node === null) {
        throw new Error("Missing the required parameter 'node' when calling getPipelineRunNode");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'run': run,
        'node': node
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _PipelineRunNode["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineRunNodeStep operation.
     * @callback module:api/BlueOceanApi~getPipelineRunNodeStepCallback
     * @param {String} error Error message, if any.
     * @param {module:model/PipelineStepImpl} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve run node details for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} run Name of the run
     * @param {String} node Name of the node
     * @param {String} step Name of the step
     * @param {module:api/BlueOceanApi~getPipelineRunNodeStepCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/PipelineStepImpl}
     */

  }, {
    key: "getPipelineRunNodeStep",
    value: function getPipelineRunNodeStep(organization, pipeline, run, node, step, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineRunNodeStep");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineRunNodeStep");
      } // verify the required parameter 'run' is set


      if (run === undefined || run === null) {
        throw new Error("Missing the required parameter 'run' when calling getPipelineRunNodeStep");
      } // verify the required parameter 'node' is set


      if (node === undefined || node === null) {
        throw new Error("Missing the required parameter 'node' when calling getPipelineRunNodeStep");
      } // verify the required parameter 'step' is set


      if (step === undefined || step === null) {
        throw new Error("Missing the required parameter 'step' when calling getPipelineRunNodeStep");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'run': run,
        'node': node,
        'step': step
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _PipelineStepImpl["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineRunNodeStepLog operation.
     * @callback module:api/BlueOceanApi~getPipelineRunNodeStepLogCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get log for a pipeline run node step
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} run Name of the run
     * @param {String} node Name of the node
     * @param {String} step Name of the step
     * @param {module:api/BlueOceanApi~getPipelineRunNodeStepLogCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */

  }, {
    key: "getPipelineRunNodeStepLog",
    value: function getPipelineRunNodeStepLog(organization, pipeline, run, node, step, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineRunNodeStepLog");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineRunNodeStepLog");
      } // verify the required parameter 'run' is set


      if (run === undefined || run === null) {
        throw new Error("Missing the required parameter 'run' when calling getPipelineRunNodeStepLog");
      } // verify the required parameter 'node' is set


      if (node === undefined || node === null) {
        throw new Error("Missing the required parameter 'node' when calling getPipelineRunNodeStepLog");
      } // verify the required parameter 'step' is set


      if (step === undefined || step === null) {
        throw new Error("Missing the required parameter 'step' when calling getPipelineRunNodeStepLog");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'run': run,
        'node': node,
        'step': step
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = 'String';
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineRunNodeSteps operation.
     * @callback module:api/BlueOceanApi~getPipelineRunNodeStepsCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/PipelineStepImpl>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve run node steps details for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} run Name of the run
     * @param {String} node Name of the node
     * @param {module:api/BlueOceanApi~getPipelineRunNodeStepsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/PipelineStepImpl>}
     */

  }, {
    key: "getPipelineRunNodeSteps",
    value: function getPipelineRunNodeSteps(organization, pipeline, run, node, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineRunNodeSteps");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineRunNodeSteps");
      } // verify the required parameter 'run' is set


      if (run === undefined || run === null) {
        throw new Error("Missing the required parameter 'run' when calling getPipelineRunNodeSteps");
      } // verify the required parameter 'node' is set


      if (node === undefined || node === null) {
        throw new Error("Missing the required parameter 'node' when calling getPipelineRunNodeSteps");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'run': run,
        'node': node
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = [_PipelineStepImpl["default"]];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineRunNodes operation.
     * @callback module:api/BlueOceanApi~getPipelineRunNodesCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/PipelineRunNode>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve run nodes details for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} run Name of the run
     * @param {module:api/BlueOceanApi~getPipelineRunNodesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/PipelineRunNode>}
     */

  }, {
    key: "getPipelineRunNodes",
    value: function getPipelineRunNodes(organization, pipeline, run, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineRunNodes");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineRunNodes");
      } // verify the required parameter 'run' is set


      if (run === undefined || run === null) {
        throw new Error("Missing the required parameter 'run' when calling getPipelineRunNodes");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'run': run
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = [_PipelineRunNode["default"]];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelineRuns operation.
     * @callback module:api/BlueOceanApi~getPipelineRunsCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/PipelineRun>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve all runs details for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {module:api/BlueOceanApi~getPipelineRunsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/PipelineRun>}
     */

  }, {
    key: "getPipelineRuns",
    value: function getPipelineRuns(organization, pipeline, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelineRuns");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling getPipelineRuns");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = [_PipelineRun["default"]];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getPipelines operation.
     * @callback module:api/BlueOceanApi~getPipelinesCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/Pipeline>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve all pipelines details for an organization
     * @param {String} organization Name of the organization
     * @param {module:api/BlueOceanApi~getPipelinesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/Pipeline>}
     */

  }, {
    key: "getPipelines",
    value: function getPipelines(organization, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getPipelines");
      }

      var pathParams = {
        'organization': organization
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = [_Pipeline["default"]];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getSCM operation.
     * @callback module:api/BlueOceanApi~getSCMCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GithubScm} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve SCM details for an organization
     * @param {String} organization Name of the organization
     * @param {String} scm Name of SCM
     * @param {module:api/BlueOceanApi~getSCMCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GithubScm}
     */

  }, {
    key: "getSCM",
    value: function getSCM(organization, scm, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getSCM");
      } // verify the required parameter 'scm' is set


      if (scm === undefined || scm === null) {
        throw new Error("Missing the required parameter 'scm' when calling getSCM");
      }

      var pathParams = {
        'organization': organization,
        'scm': scm
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _GithubScm["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/scm/{scm}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getSCMOrganisationRepositories operation.
     * @callback module:api/BlueOceanApi~getSCMOrganisationRepositoriesCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/GithubOrganization>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve SCM organization repositories details for an organization
     * @param {String} organization Name of the organization
     * @param {String} scm Name of SCM
     * @param {String} scmOrganisation Name of the SCM organization
     * @param {Object} opts Optional parameters
     * @param {String} opts.credentialId Credential ID
     * @param {Number} opts.pageSize Number of items in a page
     * @param {Number} opts.pageNumber Page number
     * @param {module:api/BlueOceanApi~getSCMOrganisationRepositoriesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/GithubOrganization>}
     */

  }, {
    key: "getSCMOrganisationRepositories",
    value: function getSCMOrganisationRepositories(organization, scm, scmOrganisation, opts, callback) {
      opts = opts || {};
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getSCMOrganisationRepositories");
      } // verify the required parameter 'scm' is set


      if (scm === undefined || scm === null) {
        throw new Error("Missing the required parameter 'scm' when calling getSCMOrganisationRepositories");
      } // verify the required parameter 'scmOrganisation' is set


      if (scmOrganisation === undefined || scmOrganisation === null) {
        throw new Error("Missing the required parameter 'scmOrganisation' when calling getSCMOrganisationRepositories");
      }

      var pathParams = {
        'organization': organization,
        'scm': scm,
        'scmOrganisation': scmOrganisation
      };
      var queryParams = {
        'credentialId': opts['credentialId'],
        'pageSize': opts['pageSize'],
        'pageNumber': opts['pageNumber']
      };
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = [_GithubOrganization["default"]];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getSCMOrganisationRepository operation.
     * @callback module:api/BlueOceanApi~getSCMOrganisationRepositoryCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/GithubOrganization>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve SCM organization repository details for an organization
     * @param {String} organization Name of the organization
     * @param {String} scm Name of SCM
     * @param {String} scmOrganisation Name of the SCM organization
     * @param {String} repository Name of the SCM repository
     * @param {Object} opts Optional parameters
     * @param {String} opts.credentialId Credential ID
     * @param {module:api/BlueOceanApi~getSCMOrganisationRepositoryCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/GithubOrganization>}
     */

  }, {
    key: "getSCMOrganisationRepository",
    value: function getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, opts, callback) {
      opts = opts || {};
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getSCMOrganisationRepository");
      } // verify the required parameter 'scm' is set


      if (scm === undefined || scm === null) {
        throw new Error("Missing the required parameter 'scm' when calling getSCMOrganisationRepository");
      } // verify the required parameter 'scmOrganisation' is set


      if (scmOrganisation === undefined || scmOrganisation === null) {
        throw new Error("Missing the required parameter 'scmOrganisation' when calling getSCMOrganisationRepository");
      } // verify the required parameter 'repository' is set


      if (repository === undefined || repository === null) {
        throw new Error("Missing the required parameter 'repository' when calling getSCMOrganisationRepository");
      }

      var pathParams = {
        'organization': organization,
        'scm': scm,
        'scmOrganisation': scmOrganisation,
        'repository': repository
      };
      var queryParams = {
        'credentialId': opts['credentialId']
      };
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = [_GithubOrganization["default"]];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getSCMOrganisations operation.
     * @callback module:api/BlueOceanApi~getSCMOrganisationsCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/GithubOrganization>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve SCM organizations details for an organization
     * @param {String} organization Name of the organization
     * @param {String} scm Name of SCM
     * @param {Object} opts Optional parameters
     * @param {String} opts.credentialId Credential ID
     * @param {module:api/BlueOceanApi~getSCMOrganisationsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/GithubOrganization>}
     */

  }, {
    key: "getSCMOrganisations",
    value: function getSCMOrganisations(organization, scm, opts, callback) {
      opts = opts || {};
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getSCMOrganisations");
      } // verify the required parameter 'scm' is set


      if (scm === undefined || scm === null) {
        throw new Error("Missing the required parameter 'scm' when calling getSCMOrganisations");
      }

      var pathParams = {
        'organization': organization,
        'scm': scm
      };
      var queryParams = {
        'credentialId': opts['credentialId']
      };
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = [_GithubOrganization["default"]];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/scm/{scm}/organizations', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getUser operation.
     * @callback module:api/BlueOceanApi~getUserCallback
     * @param {String} error Error message, if any.
     * @param {module:model/User} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve user details for an organization
     * @param {String} organization Name of the organization
     * @param {String} user Name of the user
     * @param {module:api/BlueOceanApi~getUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/User}
     */

  }, {
    key: "getUser",
    value: function getUser(organization, user, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getUser");
      } // verify the required parameter 'user' is set


      if (user === undefined || user === null) {
        throw new Error("Missing the required parameter 'user' when calling getUser");
      }

      var pathParams = {
        'organization': organization,
        'user': user
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _User["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/users/{user}', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getUserFavorites operation.
     * @callback module:api/BlueOceanApi~getUserFavoritesCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/FavoriteImpl>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve user favorites details for an organization
     * @param {String} user Name of the user
     * @param {module:api/BlueOceanApi~getUserFavoritesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/FavoriteImpl>}
     */

  }, {
    key: "getUserFavorites",
    value: function getUserFavorites(user, callback) {
      var postBody = null; // verify the required parameter 'user' is set

      if (user === undefined || user === null) {
        throw new Error("Missing the required parameter 'user' when calling getUserFavorites");
      }

      var pathParams = {
        'user': user
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = [_FavoriteImpl["default"]];
      return this.apiClient.callApi('/blue/rest/users/{user}/favorites', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getUsers operation.
     * @callback module:api/BlueOceanApi~getUsersCallback
     * @param {String} error Error message, if any.
     * @param {module:model/User} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve users details for an organization
     * @param {String} organization Name of the organization
     * @param {module:api/BlueOceanApi~getUsersCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/User}
     */

  }, {
    key: "getUsers",
    value: function getUsers(organization, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling getUsers");
      }

      var pathParams = {
        'organization': organization
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _User["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/users/', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the postPipelineRun operation.
     * @callback module:api/BlueOceanApi~postPipelineRunCallback
     * @param {String} error Error message, if any.
     * @param {module:model/QueueItemImpl} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Replay an organization pipeline run
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} run Name of the run
     * @param {module:api/BlueOceanApi~postPipelineRunCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/QueueItemImpl}
     */

  }, {
    key: "postPipelineRun",
    value: function postPipelineRun(organization, pipeline, run, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling postPipelineRun");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling postPipelineRun");
      } // verify the required parameter 'run' is set


      if (run === undefined || run === null) {
        throw new Error("Missing the required parameter 'run' when calling postPipelineRun");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'run': run
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _QueueItemImpl["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay', 'POST', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the postPipelineRuns operation.
     * @callback module:api/BlueOceanApi~postPipelineRunsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/QueueItemImpl} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Start a build for an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {module:api/BlueOceanApi~postPipelineRunsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/QueueItemImpl}
     */

  }, {
    key: "postPipelineRuns",
    value: function postPipelineRuns(organization, pipeline, callback) {
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling postPipelineRuns");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling postPipelineRuns");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _QueueItemImpl["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs', 'POST', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the putPipelineFavorite operation.
     * @callback module:api/BlueOceanApi~putPipelineFavoriteCallback
     * @param {String} error Error message, if any.
     * @param {module:model/FavoriteImpl} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Favorite/unfavorite a pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {Boolean} body Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
     * @param {module:api/BlueOceanApi~putPipelineFavoriteCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/FavoriteImpl}
     */

  }, {
    key: "putPipelineFavorite",
    value: function putPipelineFavorite(organization, pipeline, body, callback) {
      var postBody = body; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling putPipelineFavorite");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling putPipelineFavorite");
      } // verify the required parameter 'body' is set


      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling putPipelineFavorite");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = _FavoriteImpl["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite', 'PUT', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the putPipelineRun operation.
     * @callback module:api/BlueOceanApi~putPipelineRunCallback
     * @param {String} error Error message, if any.
     * @param {module:model/PipelineRun} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Stop a build of an organization pipeline
     * @param {String} organization Name of the organization
     * @param {String} pipeline Name of the pipeline
     * @param {String} run Name of the run
     * @param {Object} opts Optional parameters
     * @param {String} opts.blocking Set to true to make blocking stop, default: false
     * @param {Number} opts.timeOutInSecs Timeout in seconds, default: 10 seconds
     * @param {module:api/BlueOceanApi~putPipelineRunCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/PipelineRun}
     */

  }, {
    key: "putPipelineRun",
    value: function putPipelineRun(organization, pipeline, run, opts, callback) {
      opts = opts || {};
      var postBody = null; // verify the required parameter 'organization' is set

      if (organization === undefined || organization === null) {
        throw new Error("Missing the required parameter 'organization' when calling putPipelineRun");
      } // verify the required parameter 'pipeline' is set


      if (pipeline === undefined || pipeline === null) {
        throw new Error("Missing the required parameter 'pipeline' when calling putPipelineRun");
      } // verify the required parameter 'run' is set


      if (run === undefined || run === null) {
        throw new Error("Missing the required parameter 'run' when calling putPipelineRun");
      }

      var pathParams = {
        'organization': organization,
        'pipeline': pipeline,
        'run': run
      };
      var queryParams = {
        'blocking': opts['blocking'],
        'timeOutInSecs': opts['timeOutInSecs']
      };
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _PipelineRun["default"];
      return this.apiClient.callApi('/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop', 'PUT', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the search operation.
     * @callback module:api/BlueOceanApi~searchCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search for any resource details
     * @param {String} q Query string
     * @param {module:api/BlueOceanApi~searchCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */

  }, {
    key: "search",
    value: function search(q, callback) {
      var postBody = null; // verify the required parameter 'q' is set

      if (q === undefined || q === null) {
        throw new Error("Missing the required parameter 'q' when calling search");
      }

      var pathParams = {};
      var queryParams = {
        'q': q
      };
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = 'String';
      return this.apiClient.callApi('/blue/rest/search/', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the searchClasses operation.
     * @callback module:api/BlueOceanApi~searchClassesCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get classes details
     * @param {String} q Query string containing an array of class names
     * @param {module:api/BlueOceanApi~searchClassesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */

  }, {
    key: "searchClasses",
    value: function searchClasses(q, callback) {
      var postBody = null; // verify the required parameter 'q' is set

      if (q === undefined || q === null) {
        throw new Error("Missing the required parameter 'q' when calling searchClasses");
      }

      var pathParams = {};
      var queryParams = {
        'q': q
      };
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = 'String';
      return this.apiClient.callApi('/blue/rest/classes/', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
  }]);

  return BlueOceanApi;
}();

exports["default"] = BlueOceanApi;