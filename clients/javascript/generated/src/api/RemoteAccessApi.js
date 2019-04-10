/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 *
 * OpenAPI Generator version: 3.2.1-SNAPSHOT
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient', 'model/ComputerSet', 'model/FreeStyleBuild', 'model/FreeStyleProject', 'model/Hudson', 'model/ListView', 'model/Queue'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/ComputerSet'), require('../model/FreeStyleBuild'), require('../model/FreeStyleProject'), require('../model/Hudson'), require('../model/ListView'), require('../model/Queue'));
  } else {
    // Browser globals (root is window)
    if (!root.SwaggyJenkins) {
      root.SwaggyJenkins = {};
    }
    root.SwaggyJenkins.RemoteAccessApi = factory(root.SwaggyJenkins.ApiClient, root.SwaggyJenkins.ComputerSet, root.SwaggyJenkins.FreeStyleBuild, root.SwaggyJenkins.FreeStyleProject, root.SwaggyJenkins.Hudson, root.SwaggyJenkins.ListView, root.SwaggyJenkins.Queue);
  }
}(this, function(ApiClient, ComputerSet, FreeStyleBuild, FreeStyleProject, Hudson, ListView, Queue) {
  'use strict';

  /**
   * RemoteAccess service.
   * @module api/RemoteAccessApi
   * @version 1.1.1
   */

  /**
   * Constructs a new RemoteAccessApi. 
   * @alias module:api/RemoteAccessApi
   * @class
   * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
   * default to {@link module:ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


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
    this.getComputer = function(depth, callback) {
      var postBody = null;

      // verify the required parameter 'depth' is set
      if (depth === undefined || depth === null) {
        throw new Error("Missing the required parameter 'depth' when calling getComputer");
      }


      var pathParams = {
      };
      var queryParams = {
        'depth': depth,
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = ComputerSet;

      return this.apiClient.callApi(
        '/computer/api/json', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.getJenkins = function(callback) {
      var postBody = null;


      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = Hudson;

      return this.apiClient.callApi(
        '/api/json', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.getJob = function(name, callback) {
      var postBody = null;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJob");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = FreeStyleProject;

      return this.apiClient.callApi(
        '/job/{name}/api/json', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.getJobConfig = function(name, callback) {
      var postBody = null;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJobConfig");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['text/xml'];
      var returnType = 'String';

      return this.apiClient.callApi(
        '/job/{name}/config.xml', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getJobLastBuild operation.
     * @callback module:api/RemoteAccessApi~getJobLastBuildCallback
     * @param {String} error Error message, if any.
     * @param {module:model/FreeStyleBuild} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve job&#39;s last build details
     * @param {String} name Name of the job
     * @param {module:api/RemoteAccessApi~getJobLastBuildCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/FreeStyleBuild}
     */
    this.getJobLastBuild = function(name, callback) {
      var postBody = null;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJobLastBuild");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = FreeStyleBuild;

      return this.apiClient.callApi(
        '/job/{name}/lastBuild/api/json', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getJobProgressiveText operation.
     * @callback module:api/RemoteAccessApi~getJobProgressiveTextCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve job&#39;s build progressive text output
     * @param {String} name Name of the job
     * @param {String} _number Build number
     * @param {String} start Starting point of progressive text output
     * @param {module:api/RemoteAccessApi~getJobProgressiveTextCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.getJobProgressiveText = function(name, _number, start, callback) {
      var postBody = null;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJobProgressiveText");
      }

      // verify the required parameter '_number' is set
      if (_number === undefined || _number === null) {
        throw new Error("Missing the required parameter '_number' when calling getJobProgressiveText");
      }

      // verify the required parameter 'start' is set
      if (start === undefined || start === null) {
        throw new Error("Missing the required parameter 'start' when calling getJobProgressiveText");
      }


      var pathParams = {
        'name': name,
        'number': _number
      };
      var queryParams = {
        'start': start,
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;

      return this.apiClient.callApi(
        '/job/{name}/{number}/logText/progressiveText', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.getQueue = function(callback) {
      var postBody = null;


      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = Queue;

      return this.apiClient.callApi(
        '/queue/api/json', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
     * @param {String} _number Queue number
     * @param {module:api/RemoteAccessApi~getQueueItemCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Queue}
     */
    this.getQueueItem = function(_number, callback) {
      var postBody = null;

      // verify the required parameter '_number' is set
      if (_number === undefined || _number === null) {
        throw new Error("Missing the required parameter '_number' when calling getQueueItem");
      }


      var pathParams = {
        'number': _number
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = Queue;

      return this.apiClient.callApi(
        '/queue/item/{number}/api/json', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.getView = function(name, callback) {
      var postBody = null;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getView");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['application/json'];
      var returnType = ListView;

      return this.apiClient.callApi(
        '/view/{name}/api/json', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.getViewConfig = function(name, callback) {
      var postBody = null;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getViewConfig");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = ['text/xml'];
      var returnType = 'String';

      return this.apiClient.callApi(
        '/view/{name}/config.xml', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.headJenkins = function(callback) {
      var postBody = null;


      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;

      return this.apiClient.callApi(
        '/api/json', 'HEAD',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
     * @param {String} opts.mode Set to &#39;copy&#39; for copying an existing job
     * @param {String} opts.jenkinsCrumb CSRF protection token
     * @param {String} opts.contentType Content type header application/xml
     * @param {String} opts.body Job configuration in config.xml format
     * @param {module:api/RemoteAccessApi~postCreateItemCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.postCreateItem = function(name, opts, callback) {
      opts = opts || {};
      var postBody = opts['body'];

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postCreateItem");
      }


      var pathParams = {
      };
      var queryParams = {
        'name': name,
        'from': opts['from'],
        'mode': opts['mode'],
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb'],
        'Content-Type': opts['contentType']
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = ['application/json'];
      var accepts = ['*/*'];
      var returnType = null;

      return this.apiClient.callApi(
        '/createItem', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.postCreateView = function(name, opts, callback) {
      opts = opts || {};
      var postBody = opts['body'];

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postCreateView");
      }


      var pathParams = {
      };
      var queryParams = {
        'name': name,
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb'],
        'Content-Type': opts['contentType']
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = ['application/json'];
      var accepts = ['*/*'];
      var returnType = null;

      return this.apiClient.callApi(
        '/createView', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.postJobBuild = function(name, json, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobBuild");
      }

      // verify the required parameter 'json' is set
      if (json === undefined || json === null) {
        throw new Error("Missing the required parameter 'json' when calling postJobBuild");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
        'json': json,
        'token': opts['token'],
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;

      return this.apiClient.callApi(
        '/job/{name}/build', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.postJobConfig = function(name, body, opts, callback) {
      opts = opts || {};
      var postBody = body;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobConfig");
      }

      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling postJobConfig");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = ['application/json'];
      var accepts = ['*/*'];
      var returnType = null;

      return this.apiClient.callApi(
        '/job/{name}/config.xml', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.postJobDelete = function(name, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobDelete");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;

      return this.apiClient.callApi(
        '/job/{name}/doDelete', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.postJobDisable = function(name, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobDisable");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;

      return this.apiClient.callApi(
        '/job/{name}/disable', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.postJobEnable = function(name, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobEnable");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;

      return this.apiClient.callApi(
        '/job/{name}/enable', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.postJobLastBuildStop = function(name, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobLastBuildStop");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;

      return this.apiClient.callApi(
        '/job/{name}/lastBuild/stop', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
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
    this.postViewConfig = function(name, body, opts, callback) {
      opts = opts || {};
      var postBody = body;

      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postViewConfig");
      }

      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling postViewConfig");
      }


      var pathParams = {
        'name': name
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      var formParams = {
      };

      var authNames = ['jenkins_auth'];
      var contentTypes = ['application/json'];
      var accepts = ['*/*'];
      var returnType = null;

      return this.apiClient.callApi(
        '/view/{name}/config.xml', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
