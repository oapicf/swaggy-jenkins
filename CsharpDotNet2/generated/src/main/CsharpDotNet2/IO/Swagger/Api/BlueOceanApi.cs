using System;
using System.Collections.Generic;
using RestSharp;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace IO.Swagger.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IBlueOceanApi
    {
        /// <summary>
        ///  Retrieve authenticated user details for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param>
        /// <returns>SwaggyjenkinsUser</returns>
        SwaggyjenkinsUser GetAuthenticatedUser (string organisation);
        /// <summary>
        ///  Get a list of class names supported by a given class
        /// </summary>
        /// <param name="_class">Name of the class</param>
        /// <returns>string</returns>
        string GetClasses (string _class);
        /// <summary>
        ///  Retrieve organisation details
        /// </summary>
        /// <param name="organisation">Name of the organisation</param>
        /// <returns>SwaggyjenkinsOrganisation</returns>
        SwaggyjenkinsOrganisation GetOrganisation (string organisation);
        /// <summary>
        ///  Retrieve all organisations details
        /// </summary>
        /// <returns>GetOrganisations</returns>
        GetOrganisations GetOrganisations ();
        /// <summary>
        ///  Retrieve branch details for an organisation pipeline
        /// </summary>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="branch">Name of the branch</param>
        /// <returns>IojenkinsblueoceanrestimplpipelineBranchImpl</returns>
        IojenkinsblueoceanrestimplpipelineBranchImpl GetPipelineBranchByOrg (string organisation, string pipeline, string branch);
        /// <summary>
        ///  Retrieve all branches details for an organisation pipeline
        /// </summary>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>GetMultibranchPipeline</returns>
        GetMultibranchPipeline GetPipelineBranchesByOrg (string organisation, string pipeline);
        /// <summary>
        ///  Retrieve pipeline details for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <returns>SwaggyjenkinsPipeline</returns>
        SwaggyjenkinsPipeline GetPipelineByOrg (string organisation, string pipeline);
        /// <summary>
        ///  Retrieve pipeline folder for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="folder">Name of the folder</param>
        /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl</returns>
        IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl GetPipelineFolderByOrg (string organisation, string folder);
        /// <summary>
        ///  Retrieve pipeline details for an organisation folder
        /// </summary>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="pipeline">Name of the pipeline</param>
        /// <param name="folder">Name of the folder</param>
        /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineImpl</returns>
        IojenkinsblueoceanserviceembeddedrestPipelineImpl GetPipelineFolderByOrg_1 (string organisation, string pipeline, string folder);
        /// <summary>
        ///  Retrieve all pipelines details for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param>
        /// <returns>GetPipelines</returns>
        GetPipelines GetPipelinesByOrg (string organisation);
        /// <summary>
        ///  Retrieve user details for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param>
        /// <param name="user">Name of the user</param>
        /// <returns>SwaggyjenkinsUser</returns>
        SwaggyjenkinsUser GetUser (string organisation, string user);
        /// <summary>
        ///  Retrieve users details for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param>
        /// <returns>SwaggyjenkinsUser</returns>
        SwaggyjenkinsUser GetUsers (string organisation);
        /// <summary>
        ///  Get classes details
        /// </summary>
        /// <param name="q">Query string containing an array of class names</param>
        /// <returns>string</returns>
        string Search (string q);
        /// <summary>
        ///  Search for any resource details
        /// </summary>
        /// <param name="q">Query string</param>
        /// <returns>string</returns>
        string Search_2 (string q);
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
        ///  Retrieve authenticated user details for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param> 
        /// <returns>SwaggyjenkinsUser</returns>            
        public SwaggyjenkinsUser GetAuthenticatedUser (string organisation)
        {
            
            // verify the required parameter 'organisation' is set
            if (organisation == null) throw new ApiException(400, "Missing required parameter 'organisation' when calling GetAuthenticatedUser");
            
    
            var path = "/blue/rest/organizations/{organisation}/user/";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organisation" + "}", ApiClient.ParameterToString(organisation));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetAuthenticatedUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAuthenticatedUser: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SwaggyjenkinsUser) ApiClient.Deserialize(response.Content, typeof(SwaggyjenkinsUser), response.Headers);
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
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetClasses: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetClasses: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve organisation details
        /// </summary>
        /// <param name="organisation">Name of the organisation</param> 
        /// <returns>SwaggyjenkinsOrganisation</returns>            
        public SwaggyjenkinsOrganisation GetOrganisation (string organisation)
        {
            
            // verify the required parameter 'organisation' is set
            if (organisation == null) throw new ApiException(400, "Missing required parameter 'organisation' when calling GetOrganisation");
            
    
            var path = "/blue/rest/organizations/{organisation}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organisation" + "}", ApiClient.ParameterToString(organisation));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetOrganisation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetOrganisation: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SwaggyjenkinsOrganisation) ApiClient.Deserialize(response.Content, typeof(SwaggyjenkinsOrganisation), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve all organisations details
        /// </summary>
        /// <returns>GetOrganisations</returns>            
        public GetOrganisations GetOrganisations ()
        {
            
    
            var path = "/blue/rest/organizations/";
            path = path.Replace("{format}", "json");
                
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetOrganisations: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetOrganisations: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GetOrganisations) ApiClient.Deserialize(response.Content, typeof(GetOrganisations), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve branch details for an organisation pipeline
        /// </summary>
        /// <param name="organisation">Name of the organisation</param> 
        /// <param name="pipeline">Name of the pipeline</param> 
        /// <param name="branch">Name of the branch</param> 
        /// <returns>IojenkinsblueoceanrestimplpipelineBranchImpl</returns>            
        public IojenkinsblueoceanrestimplpipelineBranchImpl GetPipelineBranchByOrg (string organisation, string pipeline, string branch)
        {
            
            // verify the required parameter 'organisation' is set
            if (organisation == null) throw new ApiException(400, "Missing required parameter 'organisation' when calling GetPipelineBranchByOrg");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineBranchByOrg");
            
            // verify the required parameter 'branch' is set
            if (branch == null) throw new ApiException(400, "Missing required parameter 'branch' when calling GetPipelineBranchByOrg");
            
    
            var path = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organisation" + "}", ApiClient.ParameterToString(organisation));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "branch" + "}", ApiClient.ParameterToString(branch));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineBranchByOrg: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineBranchByOrg: " + response.ErrorMessage, response.ErrorMessage);
    
            return (IojenkinsblueoceanrestimplpipelineBranchImpl) ApiClient.Deserialize(response.Content, typeof(IojenkinsblueoceanrestimplpipelineBranchImpl), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve all branches details for an organisation pipeline
        /// </summary>
        /// <param name="organisation">Name of the organisation</param> 
        /// <param name="pipeline">Name of the pipeline</param> 
        /// <returns>GetMultibranchPipeline</returns>            
        public GetMultibranchPipeline GetPipelineBranchesByOrg (string organisation, string pipeline)
        {
            
            // verify the required parameter 'organisation' is set
            if (organisation == null) throw new ApiException(400, "Missing required parameter 'organisation' when calling GetPipelineBranchesByOrg");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineBranchesByOrg");
            
    
            var path = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organisation" + "}", ApiClient.ParameterToString(organisation));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineBranchesByOrg: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineBranchesByOrg: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GetMultibranchPipeline) ApiClient.Deserialize(response.Content, typeof(GetMultibranchPipeline), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve pipeline details for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param> 
        /// <param name="pipeline">Name of the pipeline</param> 
        /// <returns>SwaggyjenkinsPipeline</returns>            
        public SwaggyjenkinsPipeline GetPipelineByOrg (string organisation, string pipeline)
        {
            
            // verify the required parameter 'organisation' is set
            if (organisation == null) throw new ApiException(400, "Missing required parameter 'organisation' when calling GetPipelineByOrg");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineByOrg");
            
    
            var path = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organisation" + "}", ApiClient.ParameterToString(organisation));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineByOrg: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineByOrg: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SwaggyjenkinsPipeline) ApiClient.Deserialize(response.Content, typeof(SwaggyjenkinsPipeline), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve pipeline folder for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param> 
        /// <param name="folder">Name of the folder</param> 
        /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl</returns>            
        public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl GetPipelineFolderByOrg (string organisation, string folder)
        {
            
            // verify the required parameter 'organisation' is set
            if (organisation == null) throw new ApiException(400, "Missing required parameter 'organisation' when calling GetPipelineFolderByOrg");
            
            // verify the required parameter 'folder' is set
            if (folder == null) throw new ApiException(400, "Missing required parameter 'folder' when calling GetPipelineFolderByOrg");
            
    
            var path = "/blue/rest/organizations/{organisation}/pipelines/{folder}/";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organisation" + "}", ApiClient.ParameterToString(organisation));
path = path.Replace("{" + "folder" + "}", ApiClient.ParameterToString(folder));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineFolderByOrg: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineFolderByOrg: " + response.ErrorMessage, response.ErrorMessage);
    
            return (IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl) ApiClient.Deserialize(response.Content, typeof(IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve pipeline details for an organisation folder
        /// </summary>
        /// <param name="organisation">Name of the organisation</param> 
        /// <param name="pipeline">Name of the pipeline</param> 
        /// <param name="folder">Name of the folder</param> 
        /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineImpl</returns>            
        public IojenkinsblueoceanserviceembeddedrestPipelineImpl GetPipelineFolderByOrg_1 (string organisation, string pipeline, string folder)
        {
            
            // verify the required parameter 'organisation' is set
            if (organisation == null) throw new ApiException(400, "Missing required parameter 'organisation' when calling GetPipelineFolderByOrg_1");
            
            // verify the required parameter 'pipeline' is set
            if (pipeline == null) throw new ApiException(400, "Missing required parameter 'pipeline' when calling GetPipelineFolderByOrg_1");
            
            // verify the required parameter 'folder' is set
            if (folder == null) throw new ApiException(400, "Missing required parameter 'folder' when calling GetPipelineFolderByOrg_1");
            
    
            var path = "/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organisation" + "}", ApiClient.ParameterToString(organisation));
path = path.Replace("{" + "pipeline" + "}", ApiClient.ParameterToString(pipeline));
path = path.Replace("{" + "folder" + "}", ApiClient.ParameterToString(folder));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineFolderByOrg_1: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelineFolderByOrg_1: " + response.ErrorMessage, response.ErrorMessage);
    
            return (IojenkinsblueoceanserviceembeddedrestPipelineImpl) ApiClient.Deserialize(response.Content, typeof(IojenkinsblueoceanserviceembeddedrestPipelineImpl), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve all pipelines details for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param> 
        /// <returns>GetPipelines</returns>            
        public GetPipelines GetPipelinesByOrg (string organisation)
        {
            
            // verify the required parameter 'organisation' is set
            if (organisation == null) throw new ApiException(400, "Missing required parameter 'organisation' when calling GetPipelinesByOrg");
            
    
            var path = "/blue/rest/organizations/{organisation}/pipelines/";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organisation" + "}", ApiClient.ParameterToString(organisation));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelinesByOrg: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetPipelinesByOrg: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GetPipelines) ApiClient.Deserialize(response.Content, typeof(GetPipelines), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve user details for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param> 
        /// <param name="user">Name of the user</param> 
        /// <returns>SwaggyjenkinsUser</returns>            
        public SwaggyjenkinsUser GetUser (string organisation, string user)
        {
            
            // verify the required parameter 'organisation' is set
            if (organisation == null) throw new ApiException(400, "Missing required parameter 'organisation' when calling GetUser");
            
            // verify the required parameter 'user' is set
            if (user == null) throw new ApiException(400, "Missing required parameter 'user' when calling GetUser");
            
    
            var path = "/blue/rest/organizations/{organisation}/users/{user}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organisation" + "}", ApiClient.ParameterToString(organisation));
path = path.Replace("{" + "user" + "}", ApiClient.ParameterToString(user));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUser: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SwaggyjenkinsUser) ApiClient.Deserialize(response.Content, typeof(SwaggyjenkinsUser), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve users details for an organisation
        /// </summary>
        /// <param name="organisation">Name of the organisation</param> 
        /// <returns>SwaggyjenkinsUser</returns>            
        public SwaggyjenkinsUser GetUsers (string organisation)
        {
            
            // verify the required parameter 'organisation' is set
            if (organisation == null) throw new ApiException(400, "Missing required parameter 'organisation' when calling GetUsers");
            
    
            var path = "/blue/rest/organizations/{organisation}/users/";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "organisation" + "}", ApiClient.ParameterToString(organisation));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetUsers: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUsers: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SwaggyjenkinsUser) ApiClient.Deserialize(response.Content, typeof(SwaggyjenkinsUser), response.Headers);
        }
    
        /// <summary>
        ///  Get classes details
        /// </summary>
        /// <param name="q">Query string containing an array of class names</param> 
        /// <returns>string</returns>            
        public string Search (string q)
        {
            
            // verify the required parameter 'q' is set
            if (q == null) throw new ApiException(400, "Missing required parameter 'q' when calling Search");
            
    
            var path = "/blue/rest/classes/";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (q != null) queryParams.Add("q", ApiClient.ParameterToString(q)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling Search: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling Search: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        ///  Search for any resource details
        /// </summary>
        /// <param name="q">Query string</param> 
        /// <returns>string</returns>            
        public string Search_2 (string q)
        {
            
            // verify the required parameter 'q' is set
            if (q == null) throw new ApiException(400, "Missing required parameter 'q' when calling Search_2");
            
    
            var path = "/blue/rest/search/";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (q != null) queryParams.Add("q", ApiClient.ParameterToString(q)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling Search_2: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling Search_2: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
    }
}
