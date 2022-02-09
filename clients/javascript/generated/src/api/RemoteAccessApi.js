/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import ComputerSet from '../model/ComputerSet';
import FreeStyleBuild from '../model/FreeStyleBuild';
import FreeStyleProject from '../model/FreeStyleProject';
import Hudson from '../model/Hudson';
import ListView from '../model/ListView';
import Queue from '../model/Queue';

/**
* RemoteAccess service.
* @module api/RemoteAccessApi
* @version 1.1.2-pre.0
*/
export default class RemoteAccessApi {

    /**
    * Constructs a new RemoteAccessApi. 
    * @alias module:api/RemoteAccessApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
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
    getComputer(depth, callback) {
      let postBody = null;
      // verify the required parameter 'depth' is set
      if (depth === undefined || depth === null) {
        throw new Error("Missing the required parameter 'depth' when calling getComputer");
      }

      let pathParams = {
      };
      let queryParams = {
        'depth': depth
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ComputerSet;
      return this.apiClient.callApi(
        '/computer/api/json', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    getJenkins(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = Hudson;
      return this.apiClient.callApi(
        '/api/json', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    getJob(name, callback) {
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJob");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = FreeStyleProject;
      return this.apiClient.callApi(
        '/job/{name}/api/json', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    getJobConfig(name, callback) {
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJobConfig");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = ['text/xml'];
      let returnType = 'String';
      return this.apiClient.callApi(
        '/job/{name}/config.xml', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
     * Retrieve job's last build details
     * @param {String} name Name of the job
     * @param {module:api/RemoteAccessApi~getJobLastBuildCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/FreeStyleBuild}
     */
    getJobLastBuild(name, callback) {
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJobLastBuild");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = FreeStyleBuild;
      return this.apiClient.callApi(
        '/job/{name}/lastBuild/api/json', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
     * Retrieve job's build progressive text output
     * @param {String} name Name of the job
     * @param {String} number Build number
     * @param {String} start Starting point of progressive text output
     * @param {module:api/RemoteAccessApi~getJobProgressiveTextCallback} callback The callback function, accepting three arguments: error, data, response
     */
    getJobProgressiveText(name, number, start, callback) {
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getJobProgressiveText");
      }
      // verify the required parameter 'number' is set
      if (number === undefined || number === null) {
        throw new Error("Missing the required parameter 'number' when calling getJobProgressiveText");
      }
      // verify the required parameter 'start' is set
      if (start === undefined || start === null) {
        throw new Error("Missing the required parameter 'start' when calling getJobProgressiveText");
      }

      let pathParams = {
        'name': name,
        'number': number
      };
      let queryParams = {
        'start': start
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = [];
      let returnType = null;
      return this.apiClient.callApi(
        '/job/{name}/{number}/logText/progressiveText', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    getQueue(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = Queue;
      return this.apiClient.callApi(
        '/queue/api/json', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
     * @param {String} number Queue number
     * @param {module:api/RemoteAccessApi~getQueueItemCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Queue}
     */
    getQueueItem(number, callback) {
      let postBody = null;
      // verify the required parameter 'number' is set
      if (number === undefined || number === null) {
        throw new Error("Missing the required parameter 'number' when calling getQueueItem");
      }

      let pathParams = {
        'number': number
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = Queue;
      return this.apiClient.callApi(
        '/queue/item/{number}/api/json', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    getView(name, callback) {
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getView");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ListView;
      return this.apiClient.callApi(
        '/view/{name}/api/json', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    getViewConfig(name, callback) {
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling getViewConfig");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = ['text/xml'];
      let returnType = 'String';
      return this.apiClient.callApi(
        '/view/{name}/config.xml', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    headJenkins(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = [];
      let returnType = null;
      return this.apiClient.callApi(
        '/api/json', 'HEAD',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
     * @param {String} opts.mode Set to 'copy' for copying an existing job
     * @param {String} opts.jenkinsCrumb CSRF protection token
     * @param {String} opts.contentType Content type header application/xml
     * @param {String} opts.body Job configuration in config.xml format
     * @param {module:api/RemoteAccessApi~postCreateItemCallback} callback The callback function, accepting three arguments: error, data, response
     */
    postCreateItem(name, opts, callback) {
      opts = opts || {};
      let postBody = opts['body'];
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postCreateItem");
      }

      let pathParams = {
      };
      let queryParams = {
        'name': name,
        'from': opts['from'],
        'mode': opts['mode']
      };
      let headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb'],
        'Content-Type': opts['contentType']
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = ['application/json'];
      let accepts = ['*/*'];
      let returnType = null;
      return this.apiClient.callApi(
        '/createItem', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    postCreateView(name, opts, callback) {
      opts = opts || {};
      let postBody = opts['body'];
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postCreateView");
      }

      let pathParams = {
      };
      let queryParams = {
        'name': name
      };
      let headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb'],
        'Content-Type': opts['contentType']
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = ['application/json'];
      let accepts = ['*/*'];
      let returnType = null;
      return this.apiClient.callApi(
        '/createView', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    postJobBuild(name, json, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobBuild");
      }
      // verify the required parameter 'json' is set
      if (json === undefined || json === null) {
        throw new Error("Missing the required parameter 'json' when calling postJobBuild");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
        'json': json,
        'token': opts['token']
      };
      let headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = [];
      let returnType = null;
      return this.apiClient.callApi(
        '/job/{name}/build', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    postJobConfig(name, body, opts, callback) {
      opts = opts || {};
      let postBody = body;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobConfig");
      }
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling postJobConfig");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
      };
      let headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = ['application/json'];
      let accepts = ['*/*'];
      let returnType = null;
      return this.apiClient.callApi(
        '/job/{name}/config.xml', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    postJobDelete(name, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobDelete");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
      };
      let headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = [];
      let returnType = null;
      return this.apiClient.callApi(
        '/job/{name}/doDelete', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    postJobDisable(name, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobDisable");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
      };
      let headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = [];
      let returnType = null;
      return this.apiClient.callApi(
        '/job/{name}/disable', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    postJobEnable(name, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobEnable");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
      };
      let headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = [];
      let returnType = null;
      return this.apiClient.callApi(
        '/job/{name}/enable', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    postJobLastBuildStop(name, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postJobLastBuildStop");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
      };
      let headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = [];
      let accepts = [];
      let returnType = null;
      return this.apiClient.callApi(
        '/job/{name}/lastBuild/stop', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
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
    postViewConfig(name, body, opts, callback) {
      opts = opts || {};
      let postBody = body;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling postViewConfig");
      }
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling postViewConfig");
      }

      let pathParams = {
        'name': name
      };
      let queryParams = {
      };
      let headerParams = {
        'Jenkins-Crumb': opts['jenkinsCrumb']
      };
      let formParams = {
      };

      let authNames = ['jenkins_auth'];
      let contentTypes = ['application/json'];
      let accepts = ['*/*'];
      let returnType = null;
      return this.apiClient.callApi(
        '/view/{name}/config.xml', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
