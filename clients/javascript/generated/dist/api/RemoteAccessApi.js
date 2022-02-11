"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ComputerSet = _interopRequireDefault(require("../model/ComputerSet"));

var _FreeStyleBuild = _interopRequireDefault(require("../model/FreeStyleBuild"));

var _FreeStyleProject = _interopRequireDefault(require("../model/FreeStyleProject"));

var _Hudson = _interopRequireDefault(require("../model/Hudson"));

var _ListView = _interopRequireDefault(require("../model/ListView"));

var _Queue = _interopRequireDefault(require("../model/Queue"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

/**
* RemoteAccess service.
* @module api/RemoteAccessApi
* @version 1.1.2-pre.0
*/
var RemoteAccessApi = /*#__PURE__*/function () {
  /**
  * Constructs a new RemoteAccessApi. 
  * @alias module:api/RemoteAccessApi
  * @class
  * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
  * default to {@link module:ApiClient#instance} if unspecified.
  */
  function RemoteAccessApi(apiClient) {
    _classCallCheck(this, RemoteAccessApi);

    this.apiClient = apiClient || _ApiClient["default"].instance;
  }
  /**
   * Callback function to receive the result of the getComputer operation.
   * @callback module:api/RemoteAccessApi~getComputerCallback
   * @param {String} error Error message, if any.
   * @param {module:model/ComputerSet} data The data returned by the service call.
   * @param {String} response The complete HTTP response.
   */

  /**
   * Retrieve computer details
   * @param {Number} depth Recursion depth in response model
   * @param {module:api/RemoteAccessApi~getComputerCallback} callback The callback function, accepting three arguments: error, data, response
   * data is of type: {@link module:model/ComputerSet}
   */


  _createClass(RemoteAccessApi, [{
    key: "getComputer",
    value: function getComputer(depth, callback) {
      var postBody = null; // verify the required parameter 'depth' is set

      if (depth === undefined || depth === null) {
        throw new Error("Missing the required parameter 'depth' when calling getComputer");
      }

      var pathParams = {};
      var queryParams = {
        'depth': depth
      };
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _ComputerSet["default"];
      return this.apiClient.callApi('/computer/api/json', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getJenkins operation.
     * @callback module:api/RemoteAccessApi~getJenkinsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Hudson} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve Jenkins details
     * @param {module:api/RemoteAccessApi~getJenkinsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Hudson}
     */

  }, {
    key: "getJenkins",
    value: function getJenkins(callback) {
      var postBody = null;
      var pathParams = {};
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _Hudson["default"];
      return this.apiClient.callApi('/api/json', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getJob operation.
     * @callback module:api/RemoteAccessApi~getJobCallback
     * @param {String} error Error message, if any.
     * @param {module:model/FreeStyleProject} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve job details
     * @param {String} name Name of the job
     * @param {module:api/RemoteAccessApi~getJobCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/FreeStyleProject}
     */

  }, {
    key: "getJob",
    value: function getJob(name, callback) {
      var postBody = null; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJob");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _FreeStyleProject["default"];
      return this.apiClient.callApi('/job/{name}/api/json', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getJobConfig operation.
     * @callback module:api/RemoteAccessApi~getJobConfigCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve job configuration
     * @param {String} name Name of the job
     * @param {module:api/RemoteAccessApi~getJobConfigCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */

  }, {
    key: "getJobConfig",
    value: function getJobConfig(name, callback) {
      var postBody = null; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJobConfig");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['text/xml'];
      var returnType = 'String';
      return this.apiClient.callApi('/job/{name}/config.xml', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getJobLastBuild operation.
     * @callback module:api/RemoteAccessApi~getJobLastBuildCallback
     * @param {String} error Error message, if any.
     * @param {module:model/FreeStyleBuild} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve job's last build details
     * @param {String} name Name of the job
     * @param {module:api/RemoteAccessApi~getJobLastBuildCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/FreeStyleBuild}
     */

  }, {
    key: "getJobLastBuild",
    value: function getJobLastBuild(name, callback) {
      var postBody = null; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJobLastBuild");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _FreeStyleBuild["default"];
      return this.apiClient.callApi('/job/{name}/lastBuild/api/json', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getJobProgressiveText operation.
     * @callback module:api/RemoteAccessApi~getJobProgressiveTextCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve job's build progressive text output
     * @param {String} name Name of the job
     * @param {String} number Build number
     * @param {String} start Starting point of progressive text output
     * @param {module:api/RemoteAccessApi~getJobProgressiveTextCallback} callback The callback function, accepting three arguments: error, data, response
     */

  }, {
    key: "getJobProgressiveText",
    value: function getJobProgressiveText(name, number, start, callback) {
      var postBody = null; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJobProgressiveText");
      } // verify the required parameter 'number' is set


      if (number === undefined || number === null) {
        throw new Error("Missing the required parameter 'number' when calling getJobProgressiveText");
      } // verify the required parameter 'start' is set


      if (start === undefined || start === null) {
        throw new Error("Missing the required parameter 'start' when calling getJobProgressiveText");
      }

      var pathParams = {
        'name': name,
        'number': number
      };
      var queryParams = {
        'start': start
      };
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi('/job/{name}/{number}/logText/progressiveText', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getQueue operation.
     * @callback module:api/RemoteAccessApi~getQueueCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Queue} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve queue details
     * @param {module:api/RemoteAccessApi~getQueueCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Queue}
     */

  }, {
    key: "getQueue",
    value: function getQueue(callback) {
      var postBody = null;
      var pathParams = {};
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _Queue["default"];
      return this.apiClient.callApi('/queue/api/json', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getQueueItem operation.
     * @callback module:api/RemoteAccessApi~getQueueItemCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Queue} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve queued item details
     * @param {String} number Queue number
     * @param {module:api/RemoteAccessApi~getQueueItemCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Queue}
     */

  }, {
    key: "getQueueItem",
    value: function getQueueItem(number, callback) {
      var postBody = null; // verify the required parameter 'number' is set

      if (number === undefined || number === null) {
        throw new Error("Missing the required parameter 'number' when calling getQueueItem");
      }

      var pathParams = {
        'number': number
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _Queue["default"];
      return this.apiClient.callApi('/queue/item/{number}/api/json', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getView operation.
     * @callback module:api/RemoteAccessApi~getViewCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ListView} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve view details
     * @param {String} name Name of the view
     * @param {module:api/RemoteAccessApi~getViewCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ListView}
     */

  }, {
    key: "getView",
    value: function getView(name, callback) {
      var postBody = null; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getView");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = _ListView["default"];
      return this.apiClient.callApi('/view/{name}/api/json', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the getViewConfig operation.
     * @callback module:api/RemoteAccessApi~getViewConfigCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve view configuration
     * @param {String} name Name of the view
     * @param {module:api/RemoteAccessApi~getViewConfigCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */

  }, {
    key: "getViewConfig",
    value: function getViewConfig(name, callback) {
      var postBody = null; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getViewConfig");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['text/xml'];
      var returnType = 'String';
      return this.apiClient.callApi('/view/{name}/config.xml', 'GET', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the headJenkins operation.
     * @callback module:api/RemoteAccessApi~headJenkinsCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve Jenkins headers
     * @param {module:api/RemoteAccessApi~headJenkinsCallback} callback The callback function, accepting three arguments: error, data, response
     */

  }, {
    key: "headJenkins",
    value: function headJenkins(callback) {
      var postBody = null;
      var pathParams = {};
      var queryParams = {};
      var headerParams = {};
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi('/api/json', 'HEAD', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the postCreateItem operation.
     * @callback module:api/RemoteAccessApi~postCreateItemCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create a new job using job configuration, or copied from an existing job
     * @param {String} name Name of the new job
     * @param {Object} opts Optional parameters
     * @param {String} opts.from Existing job to copy from
     * @param {String} opts.mode Set to 'copy' for copying an existing job
     * @param {String} opts.jenkinsCrumb CSRF protection token
     * @param {String} opts.contentType Content type header application/xml
     * @param {String} opts.body Job configuration in config.xml format
     * @param {module:api/RemoteAccessApi~postCreateItemCallback} callback The callback function, accepting three arguments: error, data, response
     */

  }, {
    key: "postCreateItem",
    value: function postCreateItem(name, opts, callback) {
      opts = opts || {};
      var postBody = opts['body']; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postCreateItem");
      }

      var pathParams = {};
      var queryParams = {
        'name': name,
        'from': opts['from'],
        'mode': opts['mode']
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb'],
        'Content-Type': opts['contentType']
      };
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = ['application/json'];
      var accepts = ['*/*'];
      var returnType = null;
      return this.apiClient.callApi('/createItem', 'POST', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the postCreateView operation.
     * @callback module:api/RemoteAccessApi~postCreateViewCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create a new view using view configuration
     * @param {String} name Name of the new view
     * @param {Object} opts Optional parameters
     * @param {String} opts.jenkinsCrumb CSRF protection token
     * @param {String} opts.contentType Content type header application/xml
     * @param {String} opts.body View configuration in config.xml format
     * @param {module:api/RemoteAccessApi~postCreateViewCallback} callback The callback function, accepting three arguments: error, data, response
     */

  }, {
    key: "postCreateView",
    value: function postCreateView(name, opts, callback) {
      opts = opts || {};
      var postBody = opts['body']; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postCreateView");
      }

      var pathParams = {};
      var queryParams = {
        'name': name
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb'],
        'Content-Type': opts['contentType']
      };
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = ['application/json'];
      var accepts = ['*/*'];
      var returnType = null;
      return this.apiClient.callApi('/createView', 'POST', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the postJobBuild operation.
     * @callback module:api/RemoteAccessApi~postJobBuildCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Build a job
     * @param {String} name Name of the job
     * @param {String} json 
     * @param {Object} opts Optional parameters
     * @param {String} opts.token 
     * @param {String} opts.jenkinsCrumb CSRF protection token
     * @param {module:api/RemoteAccessApi~postJobBuildCallback} callback The callback function, accepting three arguments: error, data, response
     */

  }, {
    key: "postJobBuild",
    value: function postJobBuild(name, json, opts, callback) {
      opts = opts || {};
      var postBody = null; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobBuild");
      } // verify the required parameter 'json' is set


      if (json === undefined || json === null) {
        throw new Error("Missing the required parameter 'json' when calling postJobBuild");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {
        'json': json,
        'token': opts['token']
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi('/job/{name}/build', 'POST', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the postJobConfig operation.
     * @callback module:api/RemoteAccessApi~postJobConfigCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update job configuration
     * @param {String} name Name of the job
     * @param {String} body Job configuration in config.xml format
     * @param {Object} opts Optional parameters
     * @param {String} opts.jenkinsCrumb CSRF protection token
     * @param {module:api/RemoteAccessApi~postJobConfigCallback} callback The callback function, accepting three arguments: error, data, response
     */

  }, {
    key: "postJobConfig",
    value: function postJobConfig(name, body, opts, callback) {
      opts = opts || {};
      var postBody = body; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobConfig");
      } // verify the required parameter 'body' is set


      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling postJobConfig");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {};
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = ['application/json'];
      var accepts = ['*/*'];
      var returnType = null;
      return this.apiClient.callApi('/job/{name}/config.xml', 'POST', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the postJobDelete operation.
     * @callback module:api/RemoteAccessApi~postJobDeleteCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Delete a job
     * @param {String} name Name of the job
     * @param {Object} opts Optional parameters
     * @param {String} opts.jenkinsCrumb CSRF protection token
     * @param {module:api/RemoteAccessApi~postJobDeleteCallback} callback The callback function, accepting three arguments: error, data, response
     */

  }, {
    key: "postJobDelete",
    value: function postJobDelete(name, opts, callback) {
      opts = opts || {};
      var postBody = null; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobDelete");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {};
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi('/job/{name}/doDelete', 'POST', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the postJobDisable operation.
     * @callback module:api/RemoteAccessApi~postJobDisableCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Disable a job
     * @param {String} name Name of the job
     * @param {Object} opts Optional parameters
     * @param {String} opts.jenkinsCrumb CSRF protection token
     * @param {module:api/RemoteAccessApi~postJobDisableCallback} callback The callback function, accepting three arguments: error, data, response
     */

  }, {
    key: "postJobDisable",
    value: function postJobDisable(name, opts, callback) {
      opts = opts || {};
      var postBody = null; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobDisable");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {};
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi('/job/{name}/disable', 'POST', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the postJobEnable operation.
     * @callback module:api/RemoteAccessApi~postJobEnableCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Enable a job
     * @param {String} name Name of the job
     * @param {Object} opts Optional parameters
     * @param {String} opts.jenkinsCrumb CSRF protection token
     * @param {module:api/RemoteAccessApi~postJobEnableCallback} callback The callback function, accepting three arguments: error, data, response
     */

  }, {
    key: "postJobEnable",
    value: function postJobEnable(name, opts, callback) {
      opts = opts || {};
      var postBody = null; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobEnable");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {};
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi('/job/{name}/enable', 'POST', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the postJobLastBuildStop operation.
     * @callback module:api/RemoteAccessApi~postJobLastBuildStopCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Stop a job
     * @param {String} name Name of the job
     * @param {Object} opts Optional parameters
     * @param {String} opts.jenkinsCrumb CSRF protection token
     * @param {module:api/RemoteAccessApi~postJobLastBuildStopCallback} callback The callback function, accepting three arguments: error, data, response
     */

  }, {
    key: "postJobLastBuildStop",
    value: function postJobLastBuildStop(name, opts, callback) {
      opts = opts || {};
      var postBody = null; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobLastBuildStop");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {};
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi('/job/{name}/lastBuild/stop', 'POST', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
    /**
     * Callback function to receive the result of the postViewConfig operation.
     * @callback module:api/RemoteAccessApi~postViewConfigCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update view configuration
     * @param {String} name Name of the view
     * @param {String} body View configuration in config.xml format
     * @param {Object} opts Optional parameters
     * @param {String} opts.jenkinsCrumb CSRF protection token
     * @param {module:api/RemoteAccessApi~postViewConfigCallback} callback The callback function, accepting three arguments: error, data, response
     */

  }, {
    key: "postViewConfig",
    value: function postViewConfig(name, body, opts, callback) {
      opts = opts || {};
      var postBody = body; // verify the required parameter 'name' is set

      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postViewConfig");
      } // verify the required parameter 'body' is set


      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling postViewConfig");
      }

      var pathParams = {
        'name': name
      };
      var queryParams = {};
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {};
      var authNames = ['jenkins_auth'];
      var contentTypes = ['application/json'];
      var accepts = ['*/*'];
      var returnType = null;
      return this.apiClient.callApi('/view/{name}/config.xml', 'POST', pathParams, queryParams, headerParams, formParams, postBody, authNames, contentTypes, accepts, returnType, null, callback);
    }
  }]);

  return RemoteAccessApi;
}();

exports["default"] = RemoteAccessApi;