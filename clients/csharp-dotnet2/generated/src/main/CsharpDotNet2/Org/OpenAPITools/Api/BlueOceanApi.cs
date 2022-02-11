using System;
using System.Collections.Generic;
using RestSharp;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Org.OpenAPITools.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IBlueOceanApi
    {
        /// <summary>
        ///  Delete queue item from an organization pipeline queue
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="queue">Name of the queue item</param>
        /// <returns></returns>
        void DeletePipelineQueueItem (string organization, string pipeline, string queue);
        /// <summary>
        ///  Retrieve authenticated user details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <returns>User</returns>
        User GetAuthenticatedUser (string organization);
        /// <summary>
        ///  Get a list of class names supported by a given class
        /// </summary>
        /// <param name="_class">Name of the class</param>
        /// <returns>string</returns>
        string GetClasses (string _class);
        /// <summary>
        ///  Retrieve JSON Web Key
        /// </summary>
        /// <param name="key">Key ID received as part of JWT header field kid</param>
        /// <returns>string</returns>
        string GetJsonWebKey (int? key);
        /// <summary>
        ///  Retrieve JSON Web Token
        /// </summary>
        /// <param name="expiryTimeInMins">Token expiry time in minutes, default: 30 minutes</param>
        /// <param name="maxExpiryTimeInMins">Maximum token expiry time in minutes, default: 480 minutes</param>
        /// <returns>string</returns>
        string GetJsonWebToken (int? expiryTimeInMins, int? maxExpiryTimeInMins);
        /// <summary>
        ///  Retrieve organization details
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <returns>Organisation</returns>
        Organisation GetOrganisation (string organization);
        /// <summary>
        ///  Retrieve all organizations details
        /// </summary>
        /// <returns>List&lt;Organisation&gt;</returns>
        List<Organisation> GetOrganisations ();
        /// <summary>
        ///  Retrieve pipeline details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>Pipeline</returns>
        Pipeline GetPipeline (string organization, string pipeline);
        /// <summary>
        ///  Retrieve all activities details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>List&lt;PipelineActivity&gt;</returns>
        List<PipelineActivity> GetPipelineActivities (string organization, string pipeline);
        /// <summary>
        ///  Retrieve branch details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="branch">Name of the branch</param>
        /// <returns>BranchImpl</returns>
        BranchImpl GetPipelineBranch (string organization, string pipeline, string branch);
        /// <summary>
        ///  Retrieve branch run details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="branch">Name of the branch</param>
        /// <param name="run">Name of the run</param>
        /// <returns>PipelineRun</returns>
        PipelineRun GetPipelineBranchRun (string organization, string pipeline, string branch, string run);
        /// <summary>
        ///  Retrieve all branches details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>MultibranchPipeline</returns>
        MultibranchPipeline GetPipelineBranches (string organization, string pipeline);
        /// <summary>
        ///  Retrieve pipeline folder for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="folder">Name of the folder</param>
        /// <returns>PipelineFolderImpl</returns>
        PipelineFolderImpl GetPipelineFolder (string organization, string folder);
        /// <summary>
        ///  Retrieve pipeline details for an organization folder
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="folder">Name of the folder</param>
        /// <returns>PipelineImpl</returns>
        PipelineImpl GetPipelineFolderPipeline (string organization, string pipeline, string folder);
        /// <summary>
        ///  Retrieve queue details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>List&lt;QueueItemImpl&gt;</returns>
        List<QueueItemImpl> GetPipelineQueue (string organization, string pipeline);
        /// <summary>
        ///  Retrieve run details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <returns>PipelineRun</returns>
        PipelineRun GetPipelineRun (string organization, string pipeline, string run);
        /// <summary>
        ///  Get log for a pipeline run
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="start">Start position of the log</param>
        /// <param name="download">Set to true in order to download the file, otherwise it&#39;s passed as a response body</param>
        /// <returns>string</returns>
        string GetPipelineRunLog (string organization, string pipeline, string run, int? start, bool? download);
        /// <summary>
        ///  Retrieve run node details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <returns>PipelineRunNode</returns>
        PipelineRunNode GetPipelineRunNode (string organization, string pipeline, string run, string node);
        /// <summary>
        ///  Retrieve run node details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <param name="step">Name of the step</param>
        /// <returns>PipelineStepImpl</returns>
        PipelineStepImpl GetPipelineRunNodeStep (string organization, string pipeline, string run, string node, string step);
        /// <summary>
        ///  Get log for a pipeline run node step
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <param name="step">Name of the step</param>
        /// <returns>string</returns>
        string GetPipelineRunNodeStepLog (string organization, string pipeline, string run, string node, string step);
        /// <summary>
        ///  Retrieve run node steps details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <returns>List&lt;PipelineStepImpl&gt;</returns>
        List<PipelineStepImpl> GetPipelineRunNodeSteps (string organization, string pipeline, string run, string node);
        /// <summary>
        ///  Retrieve run nodes details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <returns>List&lt;PipelineRunNode&gt;</returns>
        List<PipelineRunNode> GetPipelineRunNodes (string organization, string pipeline, string run);
        /// <summary>
        ///  Retrieve all runs details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>List&lt;PipelineRun&gt;</returns>
        List<PipelineRun> GetPipelineRuns (string organization, string pipeline);
        /// <summary>
        ///  Retrieve all pipelines details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <returns>List&lt;Pipeline&gt;</returns>
        List<Pipeline> GetPipelines (string organization);
        /// <summary>
        ///  Retrieve SCM details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <returns>GithubScm</returns>
        GithubScm GetSCM (string organization, string scm);
        /// <summary>
        ///  Retrieve SCM organization repositories details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <param name="scmOrganisation">Name of the SCM organization</param>
        /// <param name="credentialId">Credential ID</param>
        /// <param name="pageSize">Number of items in a page</param>
        /// <param name="pageNumber">Page number</param>
        /// <returns>List&lt;GithubOrganization&gt;</returns>
        List<GithubOrganization> GetSCMOrganisationRepositories (string organization, string scm, string scmOrganisation, string credentialId, int? pageSize, int? pageNumber);
        /// <summary>
        ///  Retrieve SCM organization repository details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <param name="scmOrganisation">Name of the SCM organization</param>
        /// <param name="repository">Name of the SCM repository</param>
        /// <param name="credentialId">Credential ID</param>
        /// <returns>List&lt;GithubOrganization&gt;</returns>
        List<GithubOrganization> GetSCMOrganisationRepository (string organization, string scm, string scmOrganisation, string repository, string credentialId);
        /// <summary>
        ///  Retrieve SCM organizations details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <param name="credentialId">Credential ID</param>
        /// <returns>List&lt;GithubOrganization&gt;</returns>
        List<GithubOrganization> GetSCMOrganisations (string organization, string scm, string credentialId);
        /// <summary>
        ///  Retrieve user details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="user">Name of the user</param>
        /// <returns>User</returns>
        User GetUser (string organization, string user);
        /// <summary>
        ///  Retrieve user favorites details for an organization
        /// </summary>
        /// <param name="user">Name of the user</param>
        /// <returns>List&lt;FavoriteImpl&gt;</returns>
        List<FavoriteImpl> GetUserFavorites (string user);
        /// <summary>
        ///  Retrieve users details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <returns>User</returns>
        User GetUsers (string organization);
        /// <summary>
        ///  Replay an organization pipeline run
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <returns>QueueItemImpl</returns>
        QueueItemImpl PostPipelineRun (string organization, string pipeline, string run);
        /// <summary>
        ///  Start a build for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>QueueItemImpl</returns>
        QueueItemImpl PostPipelineRuns (string organization, string pipeline);
        /// <summary>
        ///  Favorite/unfavorite a pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="body">Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite</param>
        /// <returns>FavoriteImpl</returns>
        FavoriteImpl PutPipelineFavorite (string organization, string pipeline, bool? body);
        /// <summary>
        ///  Stop a build of an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="blocking">Set to true to make blocking stop, default: false</param>
        /// <param name="timeOutInSecs">Timeout in seconds, default: 10 seconds</param>
        /// <returns>PipelineRun</returns>
        PipelineRun PutPipelineRun (string organization, string pipeline, string run, string blocking, int? timeOutInSecs);
        /// <summary>
        ///  Search for any resource details
        /// </summary>
        /// <param name="q">Query string</param>
        /// <returns>string</returns>
        string Search (string q);
        /// <summary>
        ///  Get classes details
        /// </summary>
        /// <param name="q">Query string containing an array of class names</param>
        /// <returns>string</returns>
        string SearchClasses (string q);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class BlueOceanApi : IBlueOceanApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="BlueOceanApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public BlueOceanApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="BlueOceanApi"/> class.
        /// </summary>
        /// <returns></returns>
        public BlueOceanApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }

        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}

        /// <summary>
        ///  Delete queue item from an organization pipeline queue
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="queue">Name of the queue item</param>
        /// <returns></returns>
        public void DeletePipelineQueueItem (string organization, string pipeline, string queue)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling DeletePipelineQueueItem");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling DeletePipelineQueueItem");
            
            // verify the required parameter 'queue' is set
            if (queue == null) throw new ApiException(400, "Missing required parameter 'queue' when calling DeletePipelineQueueItem");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "queue" + "}", ApiClient.ParameterToString(queue));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeletePipelineQueueItem: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeletePipelineQueueItem: " + response.ErrorMessage, response.ErrorMessage);

            return;
        }

        /// <summary>
        ///  Retrieve authenticated user details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <returns>User</returns>
        public User GetAuthenticatedUser (string organization)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetAuthenticatedUser");
            

            var path = "/blue/rest/organizations/{organization}/user/";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAuthenticatedUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAuthenticatedUser: " + response.ErrorMessage, response.ErrorMessage);

            return (User) ApiClient.Deserialize(response.Content, typeof(User), response.Headers);
        }

        /// <summary>
        ///  Get a list of class names supported by a given class
        /// </summary>
        /// <param name="_class">Name of the class</param>
        /// <returns>string</returns>
        public string GetClasses (string _class)
        {
            
            // verify the required parameter '_class' is set
            if (_class == null) throw new ApiException(400, "Missing required parameter '_class' when calling GetClasses");
            

            var path = "/blue/rest/classes/{class}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "class" + "}", ApiClient.ParameterToString(_class));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetClasses: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetClasses: " + response.ErrorMessage, response.ErrorMessage);

            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }

        /// <summary>
        ///  Retrieve JSON Web Key
        /// </summary>
        /// <param name="key">Key ID received as part of JWT header field kid</param>
        /// <returns>string</returns>
        public string GetJsonWebKey (int? key)
        {
            
            // verify the required parameter 'key' is set
            if (key == null) throw new ApiException(400, "Missing required parameter 'key' when calling GetJsonWebKey");
            

            var path = "/jwt-auth/jwks/{key}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "key" + "}", ApiClient.ParameterToString(key));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] {  };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetJsonWebKey: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetJsonWebKey: " + response.ErrorMessage, response.ErrorMessage);

            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }

        /// <summary>
        ///  Retrieve JSON Web Token
        /// </summary>
        /// <param name="expiryTimeInMins">Token expiry time in minutes, default: 30 minutes</param>
        /// <param name="maxExpiryTimeInMins">Maximum token expiry time in minutes, default: 480 minutes</param>
        /// <returns>string</returns>
        public string GetJsonWebToken (int? expiryTimeInMins, int? maxExpiryTimeInMins)
        {
            

            var path = "/jwt-auth/token";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (expiryTimeInMins != null) queryParams.Add("expiryTimeInMins", ApiClient.ParameterToString(expiryTimeInMins)); // query parameter
 if (maxExpiryTimeInMins != null) queryParams.Add("maxExpiryTimeInMins", ApiClient.ParameterToString(maxExpiryTimeInMins)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] {  };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetJsonWebToken: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetJsonWebToken: " + response.ErrorMessage, response.ErrorMessage);

            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }

        /// <summary>
        ///  Retrieve organization details
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <returns>Organisation</returns>
        public Organisation GetOrganisation (string organization)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetOrganisation");
            

            var path = "/blue/rest/organizations/{organization}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetOrganisation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetOrganisation: " + response.ErrorMessage, response.ErrorMessage);

            return (Organisation) ApiClient.Deserialize(response.Content, typeof(Organisation), response.Headers);
        }

        /// <summary>
        ///  Retrieve all organizations details
        /// </summary>
        /// <returns>List&lt;Organisation&gt;</returns>
        public List<Organisation> GetOrganisations ()
        {
            

            var path = "/blue/rest/organizations/";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetOrganisations: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetOrganisations: " + response.ErrorMessage, response.ErrorMessage);

            return (List<Organisation>) ApiClient.Deserialize(response.Content, typeof(List<Organisation>), response.Headers);
        }

        /// <summary>
        ///  Retrieve pipeline details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>Pipeline</returns>
        public Pipeline GetPipeline (string organization, string pipeline)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipeline");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipeline");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipeline: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipeline: " + response.ErrorMessage, response.ErrorMessage);

            return (Pipeline) ApiClient.Deserialize(response.Content, typeof(Pipeline), response.Headers);
        }

        /// <summary>
        ///  Retrieve all activities details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>List&lt;PipelineActivity&gt;</returns>
        public List<PipelineActivity> GetPipelineActivities (string organization, string pipeline)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineActivities");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineActivities");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineActivities: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineActivities: " + response.ErrorMessage, response.ErrorMessage);

            return (List<PipelineActivity>) ApiClient.Deserialize(response.Content, typeof(List<PipelineActivity>), response.Headers);
        }

        /// <summary>
        ///  Retrieve branch details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="branch">Name of the branch</param>
        /// <returns>BranchImpl</returns>
        public BranchImpl GetPipelineBranch (string organization, string pipeline, string branch)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineBranch");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineBranch");
            
            // verify the required parameter 'branch' is set
            if (branch == null) throw new ApiException(400, "Missing required parameter 'branch' when calling GetPipelineBranch");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "branch" + "}", ApiClient.ParameterToString(branch));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineBranch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineBranch: " + response.ErrorMessage, response.ErrorMessage);

            return (BranchImpl) ApiClient.Deserialize(response.Content, typeof(BranchImpl), response.Headers);
        }

        /// <summary>
        ///  Retrieve branch run details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="branch">Name of the branch</param>
        /// <param name="run">Name of the run</param>
        /// <returns>PipelineRun</returns>
        public PipelineRun GetPipelineBranchRun (string organization, string pipeline, string branch, string run)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineBranchRun");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineBranchRun");
            
            // verify the required parameter 'branch' is set
            if (branch == null) throw new ApiException(400, "Missing required parameter 'branch' when calling GetPipelineBranchRun");
            
            // verify the required parameter 'run' is set
            if (run == null) throw new ApiException(400, "Missing required parameter 'run' when calling GetPipelineBranchRun");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "branch" + "}", ApiClient.ParameterToString(branch));
path = path.Replace("{" + "run" + "}", ApiClient.ParameterToString(run));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineBranchRun: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineBranchRun: " + response.ErrorMessage, response.ErrorMessage);

            return (PipelineRun) ApiClient.Deserialize(response.Content, typeof(PipelineRun), response.Headers);
        }

        /// <summary>
        ///  Retrieve all branches details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>MultibranchPipeline</returns>
        public MultibranchPipeline GetPipelineBranches (string organization, string pipeline)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineBranches");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineBranches");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineBranches: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineBranches: " + response.ErrorMessage, response.ErrorMessage);

            return (MultibranchPipeline) ApiClient.Deserialize(response.Content, typeof(MultibranchPipeline), response.Headers);
        }

        /// <summary>
        ///  Retrieve pipeline folder for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="folder">Name of the folder</param>
        /// <returns>PipelineFolderImpl</returns>
        public PipelineFolderImpl GetPipelineFolder (string organization, string folder)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineFolder");
            
            // verify the required parameter 'folder' is set
            if (folder == null) throw new ApiException(400, "Missing required parameter 'folder' when calling GetPipelineFolder");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{folder}/";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "folder" + "}", ApiClient.ParameterToString(folder));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineFolder: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineFolder: " + response.ErrorMessage, response.ErrorMessage);

            return (PipelineFolderImpl) ApiClient.Deserialize(response.Content, typeof(PipelineFolderImpl), response.Headers);
        }

        /// <summary>
        ///  Retrieve pipeline details for an organization folder
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="folder">Name of the folder</param>
        /// <returns>PipelineImpl</returns>
        public PipelineImpl GetPipelineFolderPipeline (string organization, string pipeline, string folder)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineFolderPipeline");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineFolderPipeline");
            
            // verify the required parameter 'folder' is set
            if (folder == null) throw new ApiException(400, "Missing required parameter 'folder' when calling GetPipelineFolderPipeline");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "folder" + "}", ApiClient.ParameterToString(folder));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineFolderPipeline: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineFolderPipeline: " + response.ErrorMessage, response.ErrorMessage);

            return (PipelineImpl) ApiClient.Deserialize(response.Content, typeof(PipelineImpl), response.Headers);
        }

        /// <summary>
        ///  Retrieve queue details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>List&lt;QueueItemImpl&gt;</returns>
        public List<QueueItemImpl> GetPipelineQueue (string organization, string pipeline)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineQueue");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineQueue");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineQueue: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineQueue: " + response.ErrorMessage, response.ErrorMessage);

            return (List<QueueItemImpl>) ApiClient.Deserialize(response.Content, typeof(List<QueueItemImpl>), response.Headers);
        }

        /// <summary>
        ///  Retrieve run details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <returns>PipelineRun</returns>
        public PipelineRun GetPipelineRun (string organization, string pipeline, string run)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineRun");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineRun");
            
            // verify the required parameter 'run' is set
            if (run == null) throw new ApiException(400, "Missing required parameter 'run' when calling GetPipelineRun");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "run" + "}", ApiClient.ParameterToString(run));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRun: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRun: " + response.ErrorMessage, response.ErrorMessage);

            return (PipelineRun) ApiClient.Deserialize(response.Content, typeof(PipelineRun), response.Headers);
        }

        /// <summary>
        ///  Get log for a pipeline run
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="start">Start position of the log</param>
        /// <param name="download">Set to true in order to download the file, otherwise it&#39;s passed as a response body</param>
        /// <returns>string</returns>
        public string GetPipelineRunLog (string organization, string pipeline, string run, int? start, bool? download)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineRunLog");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineRunLog");
            
            // verify the required parameter 'run' is set
            if (run == null) throw new ApiException(400, "Missing required parameter 'run' when calling GetPipelineRunLog");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "run" + "}", ApiClient.ParameterToString(run));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (start != null) queryParams.Add("start", ApiClient.ParameterToString(start)); // query parameter
 if (download != null) queryParams.Add("download", ApiClient.ParameterToString(download)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunLog: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunLog: " + response.ErrorMessage, response.ErrorMessage);

            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }

        /// <summary>
        ///  Retrieve run node details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <returns>PipelineRunNode</returns>
        public PipelineRunNode GetPipelineRunNode (string organization, string pipeline, string run, string node)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineRunNode");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineRunNode");
            
            // verify the required parameter 'run' is set
            if (run == null) throw new ApiException(400, "Missing required parameter 'run' when calling GetPipelineRunNode");
            
            // verify the required parameter 'node' is set
            if (node == null) throw new ApiException(400, "Missing required parameter 'node' when calling GetPipelineRunNode");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "run" + "}", ApiClient.ParameterToString(run));
path = path.Replace("{" + "node" + "}", ApiClient.ParameterToString(node));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunNode: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunNode: " + response.ErrorMessage, response.ErrorMessage);

            return (PipelineRunNode) ApiClient.Deserialize(response.Content, typeof(PipelineRunNode), response.Headers);
        }

        /// <summary>
        ///  Retrieve run node details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <param name="step">Name of the step</param>
        /// <returns>PipelineStepImpl</returns>
        public PipelineStepImpl GetPipelineRunNodeStep (string organization, string pipeline, string run, string node, string step)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineRunNodeStep");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineRunNodeStep");
            
            // verify the required parameter 'run' is set
            if (run == null) throw new ApiException(400, "Missing required parameter 'run' when calling GetPipelineRunNodeStep");
            
            // verify the required parameter 'node' is set
            if (node == null) throw new ApiException(400, "Missing required parameter 'node' when calling GetPipelineRunNodeStep");
            
            // verify the required parameter 'step' is set
            if (step == null) throw new ApiException(400, "Missing required parameter 'step' when calling GetPipelineRunNodeStep");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "run" + "}", ApiClient.ParameterToString(run));
path = path.Replace("{" + "node" + "}", ApiClient.ParameterToString(node));
path = path.Replace("{" + "step" + "}", ApiClient.ParameterToString(step));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunNodeStep: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunNodeStep: " + response.ErrorMessage, response.ErrorMessage);

            return (PipelineStepImpl) ApiClient.Deserialize(response.Content, typeof(PipelineStepImpl), response.Headers);
        }

        /// <summary>
        ///  Get log for a pipeline run node step
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <param name="step">Name of the step</param>
        /// <returns>string</returns>
        public string GetPipelineRunNodeStepLog (string organization, string pipeline, string run, string node, string step)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineRunNodeStepLog");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineRunNodeStepLog");
            
            // verify the required parameter 'run' is set
            if (run == null) throw new ApiException(400, "Missing required parameter 'run' when calling GetPipelineRunNodeStepLog");
            
            // verify the required parameter 'node' is set
            if (node == null) throw new ApiException(400, "Missing required parameter 'node' when calling GetPipelineRunNodeStepLog");
            
            // verify the required parameter 'step' is set
            if (step == null) throw new ApiException(400, "Missing required parameter 'step' when calling GetPipelineRunNodeStepLog");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "run" + "}", ApiClient.ParameterToString(run));
path = path.Replace("{" + "node" + "}", ApiClient.ParameterToString(node));
path = path.Replace("{" + "step" + "}", ApiClient.ParameterToString(step));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunNodeStepLog: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunNodeStepLog: " + response.ErrorMessage, response.ErrorMessage);

            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }

        /// <summary>
        ///  Retrieve run node steps details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="node">Name of the node</param>
        /// <returns>List&lt;PipelineStepImpl&gt;</returns>
        public List<PipelineStepImpl> GetPipelineRunNodeSteps (string organization, string pipeline, string run, string node)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineRunNodeSteps");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineRunNodeSteps");
            
            // verify the required parameter 'run' is set
            if (run == null) throw new ApiException(400, "Missing required parameter 'run' when calling GetPipelineRunNodeSteps");
            
            // verify the required parameter 'node' is set
            if (node == null) throw new ApiException(400, "Missing required parameter 'node' when calling GetPipelineRunNodeSteps");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "run" + "}", ApiClient.ParameterToString(run));
path = path.Replace("{" + "node" + "}", ApiClient.ParameterToString(node));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunNodeSteps: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunNodeSteps: " + response.ErrorMessage, response.ErrorMessage);

            return (List<PipelineStepImpl>) ApiClient.Deserialize(response.Content, typeof(List<PipelineStepImpl>), response.Headers);
        }

        /// <summary>
        ///  Retrieve run nodes details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <returns>List&lt;PipelineRunNode&gt;</returns>
        public List<PipelineRunNode> GetPipelineRunNodes (string organization, string pipeline, string run)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineRunNodes");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineRunNodes");
            
            // verify the required parameter 'run' is set
            if (run == null) throw new ApiException(400, "Missing required parameter 'run' when calling GetPipelineRunNodes");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "run" + "}", ApiClient.ParameterToString(run));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunNodes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRunNodes: " + response.ErrorMessage, response.ErrorMessage);

            return (List<PipelineRunNode>) ApiClient.Deserialize(response.Content, typeof(List<PipelineRunNode>), response.Headers);
        }

        /// <summary>
        ///  Retrieve all runs details for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>List&lt;PipelineRun&gt;</returns>
        public List<PipelineRun> GetPipelineRuns (string organization, string pipeline)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelineRuns");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineRuns");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRuns: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineRuns: " + response.ErrorMessage, response.ErrorMessage);

            return (List<PipelineRun>) ApiClient.Deserialize(response.Content, typeof(List<PipelineRun>), response.Headers);
        }

        /// <summary>
        ///  Retrieve all pipelines details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <returns>List&lt;Pipeline&gt;</returns>
        public List<Pipeline> GetPipelines (string organization)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetPipelines");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelines: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelines: " + response.ErrorMessage, response.ErrorMessage);

            return (List<Pipeline>) ApiClient.Deserialize(response.Content, typeof(List<Pipeline>), response.Headers);
        }

        /// <summary>
        ///  Retrieve SCM details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <returns>GithubScm</returns>
        public GithubScm GetSCM (string organization, string scm)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetSCM");
            
            // verify the required parameter 'scm' is set
            if (scm == null) throw new ApiException(400, "Missing required parameter 'scm' when calling GetSCM");
            

            var path = "/blue/rest/organizations/{organization}/scm/{scm}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "scm" + "}", ApiClient.ParameterToString(scm));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSCM: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSCM: " + response.ErrorMessage, response.ErrorMessage);

            return (GithubScm) ApiClient.Deserialize(response.Content, typeof(GithubScm), response.Headers);
        }

        /// <summary>
        ///  Retrieve SCM organization repositories details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <param name="scmOrganisation">Name of the SCM organization</param>
        /// <param name="credentialId">Credential ID</param>
        /// <param name="pageSize">Number of items in a page</param>
        /// <param name="pageNumber">Page number</param>
        /// <returns>List&lt;GithubOrganization&gt;</returns>
        public List<GithubOrganization> GetSCMOrganisationRepositories (string organization, string scm, string scmOrganisation, string credentialId, int? pageSize, int? pageNumber)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetSCMOrganisationRepositories");
            
            // verify the required parameter 'scm' is set
            if (scm == null) throw new ApiException(400, "Missing required parameter 'scm' when calling GetSCMOrganisationRepositories");
            
            // verify the required parameter 'scmOrganisation' is set
            if (scmOrganisation == null) throw new ApiException(400, "Missing required parameter 'scmOrganisation' when calling GetSCMOrganisationRepositories");
            

            var path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "scm" + "}", ApiClient.ParameterToString(scm));
path = path.Replace("{" + "scmOrganisation" + "}", ApiClient.ParameterToString(scmOrganisation));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (credentialId != null) queryParams.Add("credentialId", ApiClient.ParameterToString(credentialId)); // query parameter
 if (pageSize != null) queryParams.Add("pageSize", ApiClient.ParameterToString(pageSize)); // query parameter
 if (pageNumber != null) queryParams.Add("pageNumber", ApiClient.ParameterToString(pageNumber)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSCMOrganisationRepositories: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSCMOrganisationRepositories: " + response.ErrorMessage, response.ErrorMessage);

            return (List<GithubOrganization>) ApiClient.Deserialize(response.Content, typeof(List<GithubOrganization>), response.Headers);
        }

        /// <summary>
        ///  Retrieve SCM organization repository details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <param name="scmOrganisation">Name of the SCM organization</param>
        /// <param name="repository">Name of the SCM repository</param>
        /// <param name="credentialId">Credential ID</param>
        /// <returns>List&lt;GithubOrganization&gt;</returns>
        public List<GithubOrganization> GetSCMOrganisationRepository (string organization, string scm, string scmOrganisation, string repository, string credentialId)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetSCMOrganisationRepository");
            
            // verify the required parameter 'scm' is set
            if (scm == null) throw new ApiException(400, "Missing required parameter 'scm' when calling GetSCMOrganisationRepository");
            
            // verify the required parameter 'scmOrganisation' is set
            if (scmOrganisation == null) throw new ApiException(400, "Missing required parameter 'scmOrganisation' when calling GetSCMOrganisationRepository");
            
            // verify the required parameter 'repository' is set
            if (repository == null) throw new ApiException(400, "Missing required parameter 'repository' when calling GetSCMOrganisationRepository");
            

            var path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "scm" + "}", ApiClient.ParameterToString(scm));
path = path.Replace("{" + "scmOrganisation" + "}", ApiClient.ParameterToString(scmOrganisation));
path = path.Replace("{" + "repository" + "}", ApiClient.ParameterToString(repository));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (credentialId != null) queryParams.Add("credentialId", ApiClient.ParameterToString(credentialId)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSCMOrganisationRepository: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSCMOrganisationRepository: " + response.ErrorMessage, response.ErrorMessage);

            return (List<GithubOrganization>) ApiClient.Deserialize(response.Content, typeof(List<GithubOrganization>), response.Headers);
        }

        /// <summary>
        ///  Retrieve SCM organizations details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="scm">Name of SCM</param>
        /// <param name="credentialId">Credential ID</param>
        /// <returns>List&lt;GithubOrganization&gt;</returns>
        public List<GithubOrganization> GetSCMOrganisations (string organization, string scm, string credentialId)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetSCMOrganisations");
            
            // verify the required parameter 'scm' is set
            if (scm == null) throw new ApiException(400, "Missing required parameter 'scm' when calling GetSCMOrganisations");
            

            var path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "scm" + "}", ApiClient.ParameterToString(scm));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (credentialId != null) queryParams.Add("credentialId", ApiClient.ParameterToString(credentialId)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSCMOrganisations: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetSCMOrganisations: " + response.ErrorMessage, response.ErrorMessage);

            return (List<GithubOrganization>) ApiClient.Deserialize(response.Content, typeof(List<GithubOrganization>), response.Headers);
        }

        /// <summary>
        ///  Retrieve user details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="user">Name of the user</param>
        /// <returns>User</returns>
        public User GetUser (string organization, string user)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetUser");
            
            // verify the required parameter 'user' is set
            if (user == null) throw new ApiException(400, "Missing required parameter 'user' when calling GetUser");
            

            var path = "/blue/rest/organizations/{organization}/users/{user}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "user" + "}", ApiClient.ParameterToString(user));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUser: " + response.ErrorMessage, response.ErrorMessage);

            return (User) ApiClient.Deserialize(response.Content, typeof(User), response.Headers);
        }

        /// <summary>
        ///  Retrieve user favorites details for an organization
        /// </summary>
        /// <param name="user">Name of the user</param>
        /// <returns>List&lt;FavoriteImpl&gt;</returns>
        public List<FavoriteImpl> GetUserFavorites (string user)
        {
            
            // verify the required parameter 'user' is set
            if (user == null) throw new ApiException(400, "Missing required parameter 'user' when calling GetUserFavorites");
            

            var path = "/blue/rest/users/{user}/favorites";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "user" + "}", ApiClient.ParameterToString(user));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUserFavorites: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUserFavorites: " + response.ErrorMessage, response.ErrorMessage);

            return (List<FavoriteImpl>) ApiClient.Deserialize(response.Content, typeof(List<FavoriteImpl>), response.Headers);
        }

        /// <summary>
        ///  Retrieve users details for an organization
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <returns>User</returns>
        public User GetUsers (string organization)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling GetUsers");
            

            var path = "/blue/rest/organizations/{organization}/users/";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUsers: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUsers: " + response.ErrorMessage, response.ErrorMessage);

            return (User) ApiClient.Deserialize(response.Content, typeof(User), response.Headers);
        }

        /// <summary>
        ///  Replay an organization pipeline run
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <returns>QueueItemImpl</returns>
        public QueueItemImpl PostPipelineRun (string organization, string pipeline, string run)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling PostPipelineRun");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling PostPipelineRun");
            
            // verify the required parameter 'run' is set
            if (run == null) throw new ApiException(400, "Missing required parameter 'run' when calling PostPipelineRun");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "run" + "}", ApiClient.ParameterToString(run));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostPipelineRun: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostPipelineRun: " + response.ErrorMessage, response.ErrorMessage);

            return (QueueItemImpl) ApiClient.Deserialize(response.Content, typeof(QueueItemImpl), response.Headers);
        }

        /// <summary>
        ///  Start a build for an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>QueueItemImpl</returns>
        public QueueItemImpl PostPipelineRuns (string organization, string pipeline)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling PostPipelineRuns");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling PostPipelineRuns");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostPipelineRuns: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostPipelineRuns: " + response.ErrorMessage, response.ErrorMessage);

            return (QueueItemImpl) ApiClient.Deserialize(response.Content, typeof(QueueItemImpl), response.Headers);
        }

        /// <summary>
        ///  Favorite/unfavorite a pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="body">Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite</param>
        /// <returns>FavoriteImpl</returns>
        public FavoriteImpl PutPipelineFavorite (string organization, string pipeline, bool? body)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling PutPipelineFavorite");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling PutPipelineFavorite");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PutPipelineFavorite");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PutPipelineFavorite: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PutPipelineFavorite: " + response.ErrorMessage, response.ErrorMessage);

            return (FavoriteImpl) ApiClient.Deserialize(response.Content, typeof(FavoriteImpl), response.Headers);
        }

        /// <summary>
        ///  Stop a build of an organization pipeline
        /// </summary>
        /// <param name="organization">Name of the organization</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="run">Name of the run</param>
        /// <param name="blocking">Set to true to make blocking stop, default: false</param>
        /// <param name="timeOutInSecs">Timeout in seconds, default: 10 seconds</param>
        /// <returns>PipelineRun</returns>
        public PipelineRun PutPipelineRun (string organization, string pipeline, string run, string blocking, int? timeOutInSecs)
        {
            
            // verify the required parameter 'organization' is set
            if (organization == null) throw new ApiException(400, "Missing required parameter 'organization' when calling PutPipelineRun");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling PutPipelineRun");
            
            // verify the required parameter 'run' is set
            if (run == null) throw new ApiException(400, "Missing required parameter 'run' when calling PutPipelineRun");
            

            var path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organization" + "}", ApiClient.ParameterToString(organization));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "run" + "}", ApiClient.ParameterToString(run));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (blocking != null) queryParams.Add("blocking", ApiClient.ParameterToString(blocking)); // query parameter
 if (timeOutInSecs != null) queryParams.Add("timeOutInSecs", ApiClient.ParameterToString(timeOutInSecs)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PutPipelineRun: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PutPipelineRun: " + response.ErrorMessage, response.ErrorMessage);

            return (PipelineRun) ApiClient.Deserialize(response.Content, typeof(PipelineRun), response.Headers);
        }

        /// <summary>
        ///  Search for any resource details
        /// </summary>
        /// <param name="q">Query string</param>
        /// <returns>string</returns>
        public string Search (string q)
        {
            
            // verify the required parameter 'q' is set
            if (q == null) throw new ApiException(400, "Missing required parameter 'q' when calling Search");
            

            var path = "/blue/rest/search/";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (q != null) queryParams.Add("q", ApiClient.ParameterToString(q)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling Search: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling Search: " + response.ErrorMessage, response.ErrorMessage);

            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }

        /// <summary>
        ///  Get classes details
        /// </summary>
        /// <param name="q">Query string containing an array of class names</param>
        /// <returns>string</returns>
        public string SearchClasses (string q)
        {
            
            // verify the required parameter 'q' is set
            if (q == null) throw new ApiException(400, "Missing required parameter 'q' when calling SearchClasses");
            

            var path = "/blue/rest/classes/";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (q != null) queryParams.Add("q", ApiClient.ParameterToString(q)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "jenkins_auth" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchClasses: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchClasses: " + response.ErrorMessage, response.ErrorMessage);

            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }

    }
}
