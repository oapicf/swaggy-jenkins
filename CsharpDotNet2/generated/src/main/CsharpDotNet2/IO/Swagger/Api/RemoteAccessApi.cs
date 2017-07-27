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
    public interface IRemoteAccessApi
    {
        /// <summary>
        ///  Retrieve computer details
        /// </summary>
        /// <returns>HudsonmodelComputerSet</returns>
        HudsonmodelComputerSet GetComputer ();
        /// <summary>
        ///  Retrieve CSRF protection token
        /// </summary>
        /// <returns>HudsonsecuritycsrfDefaultCrumbIssuer</returns>
        HudsonsecuritycsrfDefaultCrumbIssuer GetCrumb ();
        /// <summary>
        ///  Retrieve Jenkins details
        /// </summary>
        /// <returns>HudsonmodelHudson</returns>
        HudsonmodelHudson GetJenkins ();
        /// <summary>
        ///  Retrieve job details
        /// </summary>
        /// <param name="name">Name of the job</param>
        /// <returns>HudsonmodelFreeStyleProject</returns>
        HudsonmodelFreeStyleProject GetJob (string name);
        /// <summary>
        ///  Retrieve job configuration
        /// </summary>
        /// <param name="name">Name of the job</param>
        /// <returns>string</returns>
        string GetJobConfig (string name);
        /// <summary>
        ///  Retrieve job&#39;s last build details
        /// </summary>
        /// <param name="name">Name of the job</param>
        /// <returns>HudsonmodelFreeStyleBuild</returns>
        HudsonmodelFreeStyleBuild GetJobLastBuild (string name);
        /// <summary>
        ///  Retrieve job&#39;s build progressive text output
        /// </summary>
        /// <param name="name">Name of the job</param>
        /// <param name="number">Build number</param>
        /// <param name="start">Starting point of progressive text output</param>
        /// <returns></returns>
        void GetJobProgressiveText (string name, string number, string start);
        /// <summary>
        ///  Retrieve queue details
        /// </summary>
        /// <returns>HudsonmodelQueue</returns>
        HudsonmodelQueue GetQueue ();
        /// <summary>
        ///  Retrieve queued item details
        /// </summary>
        /// <param name="number">Queue number</param>
        /// <returns>HudsonmodelQueue</returns>
        HudsonmodelQueue GetQueueItem (string number);
        /// <summary>
        ///  Retrieve view details
        /// </summary>
        /// <param name="name">Name of the view</param>
        /// <returns>HudsonmodelListView</returns>
        HudsonmodelListView GetView (string name);
        /// <summary>
        ///  Retrieve view configuration
        /// </summary>
        /// <param name="name">Name of the view</param>
        /// <returns>string</returns>
        string GetViewConfig (string name);
        /// <summary>
        ///  Retrieve Jenkins headers
        /// </summary>
        /// <returns></returns>
        void HeadJenkins ();
        /// <summary>
        ///  Create a new job using job configuration, or copied from an existing job
        /// </summary>
        /// <param name="name">Name of the new job</param>
        /// <param name="from">Existing job to copy from</param>
        /// <param name="mode">Set to &#39;copy&#39; for copying an existing job</param>
        /// <param name="body">Job configuration in config.xml format</param>
        /// <param name="jenkinsCrumb">CSRF protection token</param>
        /// <param name="contentType">Content type header application/xml</param>
        /// <returns></returns>
        void PostCreateItem (string name, string from, string mode, string body, string jenkinsCrumb, string contentType);
        /// <summary>
        ///  Create a new view using view configuration
        /// </summary>
        /// <param name="name">Name of the new view</param>
        /// <param name="body">View configuration in config.xml format</param>
        /// <param name="jenkinsCrumb">CSRF protection token</param>
        /// <param name="contentType">Content type header application/xml</param>
        /// <returns></returns>
        void PostCreateView (string name, string body, string jenkinsCrumb, string contentType);
        /// <summary>
        ///  Build a job
        /// </summary>
        /// <param name="name">Name of the job</param>
        /// <param name="json"></param>
        /// <param name="token"></param>
        /// <param name="jenkinsCrumb">CSRF protection token</param>
        /// <returns></returns>
        void PostJobBuild (string name, string json, string token, string jenkinsCrumb);
        /// <summary>
        ///  Update job configuration
        /// </summary>
        /// <param name="name">Name of the job</param>
        /// <param name="body">Job configuration in config.xml format</param>
        /// <param name="jenkinsCrumb">CSRF protection token</param>
        /// <returns></returns>
        void PostJobConfig (string name, string body, string jenkinsCrumb);
        /// <summary>
        ///  Delete a job
        /// </summary>
        /// <param name="name">Name of the job</param>
        /// <param name="jenkinsCrumb">CSRF protection token</param>
        /// <returns></returns>
        void PostJobDelete (string name, string jenkinsCrumb);
        /// <summary>
        ///  Disable a job
        /// </summary>
        /// <param name="name">Name of the job</param>
        /// <param name="jenkinsCrumb">CSRF protection token</param>
        /// <returns></returns>
        void PostJobDisable (string name, string jenkinsCrumb);
        /// <summary>
        ///  Enable a job
        /// </summary>
        /// <param name="name">Name of the job</param>
        /// <param name="jenkinsCrumb">CSRF protection token</param>
        /// <returns></returns>
        void PostJobEnable (string name, string jenkinsCrumb);
        /// <summary>
        ///  Stop a job
        /// </summary>
        /// <param name="name">Name of the job</param>
        /// <param name="jenkinsCrumb">CSRF protection token</param>
        /// <returns></returns>
        void PostJobLastBuildStop (string name, string jenkinsCrumb);
        /// <summary>
        ///  Update view configuration
        /// </summary>
        /// <param name="name">Name of the view</param>
        /// <param name="body">View configuration in config.xml format</param>
        /// <param name="jenkinsCrumb">CSRF protection token</param>
        /// <returns></returns>
        void PostViewConfig (string name, string body, string jenkinsCrumb);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class RemoteAccessApi : IRemoteAccessApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RemoteAccessApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public RemoteAccessApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="RemoteAccessApi"/> class.
        /// </summary>
        /// <returns></returns>
        public RemoteAccessApi(String basePath)
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
        ///  Retrieve computer details
        /// </summary>
        /// <returns>HudsonmodelComputerSet</returns>            
        public HudsonmodelComputerSet GetComputer ()
        {
            
    
            var path = "/computer/api/json?depth=1";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetComputer: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetComputer: " + response.ErrorMessage, response.ErrorMessage);
    
            return (HudsonmodelComputerSet) ApiClient.Deserialize(response.Content, typeof(HudsonmodelComputerSet), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve CSRF protection token
        /// </summary>
        /// <returns>HudsonsecuritycsrfDefaultCrumbIssuer</returns>            
        public HudsonsecuritycsrfDefaultCrumbIssuer GetCrumb ()
        {
            
    
            var path = "/crumbIssuer/api/json";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetCrumb: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetCrumb: " + response.ErrorMessage, response.ErrorMessage);
    
            return (HudsonsecuritycsrfDefaultCrumbIssuer) ApiClient.Deserialize(response.Content, typeof(HudsonsecuritycsrfDefaultCrumbIssuer), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve Jenkins details
        /// </summary>
        /// <returns>HudsonmodelHudson</returns>            
        public HudsonmodelHudson GetJenkins ()
        {
            
    
            var path = "/api/json";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetJenkins: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetJenkins: " + response.ErrorMessage, response.ErrorMessage);
    
            return (HudsonmodelHudson) ApiClient.Deserialize(response.Content, typeof(HudsonmodelHudson), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve job details
        /// </summary>
        /// <param name="name">Name of the job</param> 
        /// <returns>HudsonmodelFreeStyleProject</returns>            
        public HudsonmodelFreeStyleProject GetJob (string name)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling GetJob");
            
    
            var path = "/job/{name}/api/json";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetJob: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetJob: " + response.ErrorMessage, response.ErrorMessage);
    
            return (HudsonmodelFreeStyleProject) ApiClient.Deserialize(response.Content, typeof(HudsonmodelFreeStyleProject), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve job configuration
        /// </summary>
        /// <param name="name">Name of the job</param> 
        /// <returns>string</returns>            
        public string GetJobConfig (string name)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling GetJobConfig");
            
    
            var path = "/job/{name}/config.xml";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetJobConfig: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetJobConfig: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve job&#39;s last build details
        /// </summary>
        /// <param name="name">Name of the job</param> 
        /// <returns>HudsonmodelFreeStyleBuild</returns>            
        public HudsonmodelFreeStyleBuild GetJobLastBuild (string name)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling GetJobLastBuild");
            
    
            var path = "/job/{name}/lastBuild/api/json";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetJobLastBuild: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetJobLastBuild: " + response.ErrorMessage, response.ErrorMessage);
    
            return (HudsonmodelFreeStyleBuild) ApiClient.Deserialize(response.Content, typeof(HudsonmodelFreeStyleBuild), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve job&#39;s build progressive text output
        /// </summary>
        /// <param name="name">Name of the job</param> 
        /// <param name="number">Build number</param> 
        /// <param name="start">Starting point of progressive text output</param> 
        /// <returns></returns>            
        public void GetJobProgressiveText (string name, string number, string start)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling GetJobProgressiveText");
            
            // verify the required parameter 'number' is set
            if (number == null) throw new ApiException(400, "Missing required parameter 'number' when calling GetJobProgressiveText");
            
            // verify the required parameter 'start' is set
            if (start == null) throw new ApiException(400, "Missing required parameter 'start' when calling GetJobProgressiveText");
            
    
            var path = "/job/{name}/{number}/logText/progressiveText";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
path = path.Replace("{" + "number" + "}", ApiClient.ParameterToString(number));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (start != null) queryParams.Add("start", ApiClient.ParameterToString(start)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetJobProgressiveText: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetJobProgressiveText: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        ///  Retrieve queue details
        /// </summary>
        /// <returns>HudsonmodelQueue</returns>            
        public HudsonmodelQueue GetQueue ()
        {
            
    
            var path = "/queue/api/json";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetQueue: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetQueue: " + response.ErrorMessage, response.ErrorMessage);
    
            return (HudsonmodelQueue) ApiClient.Deserialize(response.Content, typeof(HudsonmodelQueue), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve queued item details
        /// </summary>
        /// <param name="number">Queue number</param> 
        /// <returns>HudsonmodelQueue</returns>            
        public HudsonmodelQueue GetQueueItem (string number)
        {
            
            // verify the required parameter 'number' is set
            if (number == null) throw new ApiException(400, "Missing required parameter 'number' when calling GetQueueItem");
            
    
            var path = "/queue/item/{number}/api/json";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "number" + "}", ApiClient.ParameterToString(number));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetQueueItem: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetQueueItem: " + response.ErrorMessage, response.ErrorMessage);
    
            return (HudsonmodelQueue) ApiClient.Deserialize(response.Content, typeof(HudsonmodelQueue), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve view details
        /// </summary>
        /// <param name="name">Name of the view</param> 
        /// <returns>HudsonmodelListView</returns>            
        public HudsonmodelListView GetView (string name)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling GetView");
            
    
            var path = "/view/{name}/api/json";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetView: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetView: " + response.ErrorMessage, response.ErrorMessage);
    
            return (HudsonmodelListView) ApiClient.Deserialize(response.Content, typeof(HudsonmodelListView), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve view configuration
        /// </summary>
        /// <param name="name">Name of the view</param> 
        /// <returns>string</returns>            
        public string GetViewConfig (string name)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling GetViewConfig");
            
    
            var path = "/view/{name}/config.xml";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetViewConfig: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetViewConfig: " + response.ErrorMessage, response.ErrorMessage);
    
            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }
    
        /// <summary>
        ///  Retrieve Jenkins headers
        /// </summary>
        /// <returns></returns>            
        public void HeadJenkins ()
        {
            
    
            var path = "/api/json";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.HEAD, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling HeadJenkins: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling HeadJenkins: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        ///  Create a new job using job configuration, or copied from an existing job
        /// </summary>
        /// <param name="name">Name of the new job</param> 
        /// <param name="from">Existing job to copy from</param> 
        /// <param name="mode">Set to &#39;copy&#39; for copying an existing job</param> 
        /// <param name="body">Job configuration in config.xml format</param> 
        /// <param name="jenkinsCrumb">CSRF protection token</param> 
        /// <param name="contentType">Content type header application/xml</param> 
        /// <returns></returns>            
        public void PostCreateItem (string name, string from, string mode, string body, string jenkinsCrumb, string contentType)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling PostCreateItem");
            
    
            var path = "/createItem";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (name != null) queryParams.Add("name", ApiClient.ParameterToString(name)); // query parameter
 if (from != null) queryParams.Add("from", ApiClient.ParameterToString(from)); // query parameter
 if (mode != null) queryParams.Add("mode", ApiClient.ParameterToString(mode)); // query parameter
             if (jenkinsCrumb != null) headerParams.Add("Jenkins-Crumb", ApiClient.ParameterToString(jenkinsCrumb)); // header parameter
 if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
                        postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostCreateItem: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostCreateItem: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        ///  Create a new view using view configuration
        /// </summary>
        /// <param name="name">Name of the new view</param> 
        /// <param name="body">View configuration in config.xml format</param> 
        /// <param name="jenkinsCrumb">CSRF protection token</param> 
        /// <param name="contentType">Content type header application/xml</param> 
        /// <returns></returns>            
        public void PostCreateView (string name, string body, string jenkinsCrumb, string contentType)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling PostCreateView");
            
    
            var path = "/createView";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (name != null) queryParams.Add("name", ApiClient.ParameterToString(name)); // query parameter
             if (jenkinsCrumb != null) headerParams.Add("Jenkins-Crumb", ApiClient.ParameterToString(jenkinsCrumb)); // header parameter
 if (contentType != null) headerParams.Add("Content-Type", ApiClient.ParameterToString(contentType)); // header parameter
                        postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostCreateView: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostCreateView: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        ///  Build a job
        /// </summary>
        /// <param name="name">Name of the job</param> 
        /// <param name="json"></param> 
        /// <param name="token"></param> 
        /// <param name="jenkinsCrumb">CSRF protection token</param> 
        /// <returns></returns>            
        public void PostJobBuild (string name, string json, string token, string jenkinsCrumb)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling PostJobBuild");
            
            // verify the required parameter 'json' is set
            if (json == null) throw new ApiException(400, "Missing required parameter 'json' when calling PostJobBuild");
            
    
            var path = "/job/{name}/build";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (json != null) queryParams.Add("json", ApiClient.ParameterToString(json)); // query parameter
 if (token != null) queryParams.Add("token", ApiClient.ParameterToString(token)); // query parameter
             if (jenkinsCrumb != null) headerParams.Add("Jenkins-Crumb", ApiClient.ParameterToString(jenkinsCrumb)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobBuild: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobBuild: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        ///  Update job configuration
        /// </summary>
        /// <param name="name">Name of the job</param> 
        /// <param name="body">Job configuration in config.xml format</param> 
        /// <param name="jenkinsCrumb">CSRF protection token</param> 
        /// <returns></returns>            
        public void PostJobConfig (string name, string body, string jenkinsCrumb)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling PostJobConfig");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PostJobConfig");
            
    
            var path = "/job/{name}/config.xml";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (jenkinsCrumb != null) headerParams.Add("Jenkins-Crumb", ApiClient.ParameterToString(jenkinsCrumb)); // header parameter
                        postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobConfig: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobConfig: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        ///  Delete a job
        /// </summary>
        /// <param name="name">Name of the job</param> 
        /// <param name="jenkinsCrumb">CSRF protection token</param> 
        /// <returns></returns>            
        public void PostJobDelete (string name, string jenkinsCrumb)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling PostJobDelete");
            
    
            var path = "/job/{name}/doDelete";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (jenkinsCrumb != null) headerParams.Add("Jenkins-Crumb", ApiClient.ParameterToString(jenkinsCrumb)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobDelete: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobDelete: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        ///  Disable a job
        /// </summary>
        /// <param name="name">Name of the job</param> 
        /// <param name="jenkinsCrumb">CSRF protection token</param> 
        /// <returns></returns>            
        public void PostJobDisable (string name, string jenkinsCrumb)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling PostJobDisable");
            
    
            var path = "/job/{name}/disable";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (jenkinsCrumb != null) headerParams.Add("Jenkins-Crumb", ApiClient.ParameterToString(jenkinsCrumb)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobDisable: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobDisable: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        ///  Enable a job
        /// </summary>
        /// <param name="name">Name of the job</param> 
        /// <param name="jenkinsCrumb">CSRF protection token</param> 
        /// <returns></returns>            
        public void PostJobEnable (string name, string jenkinsCrumb)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling PostJobEnable");
            
    
            var path = "/job/{name}/enable";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (jenkinsCrumb != null) headerParams.Add("Jenkins-Crumb", ApiClient.ParameterToString(jenkinsCrumb)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobEnable: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobEnable: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        ///  Stop a job
        /// </summary>
        /// <param name="name">Name of the job</param> 
        /// <param name="jenkinsCrumb">CSRF protection token</param> 
        /// <returns></returns>            
        public void PostJobLastBuildStop (string name, string jenkinsCrumb)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling PostJobLastBuildStop");
            
    
            var path = "/job/{name}/lastBuild/stop";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (jenkinsCrumb != null) headerParams.Add("Jenkins-Crumb", ApiClient.ParameterToString(jenkinsCrumb)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobLastBuildStop: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostJobLastBuildStop: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        ///  Update view configuration
        /// </summary>
        /// <param name="name">Name of the view</param> 
        /// <param name="body">View configuration in config.xml format</param> 
        /// <param name="jenkinsCrumb">CSRF protection token</param> 
        /// <returns></returns>            
        public void PostViewConfig (string name, string body, string jenkinsCrumb)
        {
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling PostViewConfig");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PostViewConfig");
            
    
            var path = "/view/{name}/config.xml";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (jenkinsCrumb != null) headerParams.Add("Jenkins-Crumb", ApiClient.ParameterToString(jenkinsCrumb)); // header parameter
                        postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostViewConfig: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostViewConfig: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
    }
}
