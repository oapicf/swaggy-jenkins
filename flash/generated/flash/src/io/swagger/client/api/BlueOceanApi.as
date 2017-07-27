package io.swagger.client.api {

import io.swagger.common.ApiInvoker;
import io.swagger.exception.ApiErrorCodes;
import io.swagger.exception.ApiError;
import io.swagger.common.ApiUserCredentials;
import io.swagger.event.Response;
import io.swagger.common.SwaggerApi;
import io.swagger.client.model.GetMultibranchPipeline;
import io.swagger.client.model.GetOrganisations;
import io.swagger.client.model.GetPipelines;
import io.swagger.client.model.IojenkinsblueoceanrestimplpipelineBranchImpl;
import io.swagger.client.model.IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl;
import io.swagger.client.model.IojenkinsblueoceanserviceembeddedrestPipelineImpl;
import io.swagger.client.model.SwaggyjenkinsOrganisation;
import io.swagger.client.model.SwaggyjenkinsPipeline;
import io.swagger.client.model.SwaggyjenkinsUser;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class BlueOceanApi extends SwaggerApi {
    /**
    * Constructor for the BlueOceanApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function BlueOceanApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_get_authenticated_user: String = "get_authenticated_user";
        public static const event_get_classes: String = "get_classes";
        public static const event_get_organisation: String = "get_organisation";
        public static const event_get_organisations: String = "get_organisations";
        public static const event_get_pipeline_branch_by_org: String = "get_pipeline_branch_by_org";
        public static const event_get_pipeline_branches_by_org: String = "get_pipeline_branches_by_org";
        public static const event_get_pipeline_by_org: String = "get_pipeline_by_org";
        public static const event_get_pipeline_folder_by_org: String = "get_pipeline_folder_by_org";
        public static const event_get_pipeline_folder_by_org_1: String = "get_pipeline_folder_by_org_1";
        public static const event_get_pipelines_by_org: String = "get_pipelines_by_org";
        public static const event_get_user: String = "get_user";
        public static const event_get_users: String = "get_users";
        public static const event_search: String = "search";
        public static const event_search_2: String = "search_2";


    /*
     * Returns SwaggyjenkinsUser 
     */
    public function get_authenticated_user (organisation: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organisation}/user/".replace(/{format}/g,"xml").replace("{" + "organisation" + "}", getApiInvoker().escapeString(organisation));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_authenticated_user";

        token.returnType = SwaggyjenkinsUser;
        return requestId;

    }

    /*
     * Returns String 
     */
    public function get_classes (class: String): String {
        // create path and map variables
        var path: String = "/blue/rest/classes/{class}".replace(/{format}/g,"xml").replace("{" + "class" + "}", getApiInvoker().escapeString(class));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_classes";

        token.returnType = String;
        return requestId;

    }

    /*
     * Returns SwaggyjenkinsOrganisation 
     */
    public function get_organisation (organisation: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organisation}".replace(/{format}/g,"xml").replace("{" + "organisation" + "}", getApiInvoker().escapeString(organisation));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_organisation";

        token.returnType = SwaggyjenkinsOrganisation;
        return requestId;

    }

    /*
     * Returns GetOrganisations 
     */
    public function get_organisations (): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();


        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_organisations";

        token.returnType = GetOrganisations;
        return requestId;

    }

    /*
     * Returns IojenkinsblueoceanrestimplpipelineBranchImpl 
     */
    public function get_pipeline_branch_by_org (organisation: String, pipeline: String, branch: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/".replace(/{format}/g,"xml").replace("{" + "organisation" + "}", getApiInvoker().escapeString(organisation)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "branch" + "}", getApiInvoker().escapeString(branch));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipeline_branch_by_org";

        token.returnType = IojenkinsblueoceanrestimplpipelineBranchImpl;
        return requestId;

    }

    /*
     * Returns GetMultibranchPipeline 
     */
    public function get_pipeline_branches_by_org (organisation: String, pipeline: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches".replace(/{format}/g,"xml").replace("{" + "organisation" + "}", getApiInvoker().escapeString(organisation)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipeline_branches_by_org";

        token.returnType = GetMultibranchPipeline;
        return requestId;

    }

    /*
     * Returns SwaggyjenkinsPipeline 
     */
    public function get_pipeline_by_org (organisation: String, pipeline: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organisation}/pipelines/{pipeline}".replace(/{format}/g,"xml").replace("{" + "organisation" + "}", getApiInvoker().escapeString(organisation)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipeline_by_org";

        token.returnType = SwaggyjenkinsPipeline;
        return requestId;

    }

    /*
     * Returns IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl 
     */
    public function get_pipeline_folder_by_org (organisation: String, folder: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organisation}/pipelines/{folder}/".replace(/{format}/g,"xml").replace("{" + "organisation" + "}", getApiInvoker().escapeString(organisation)).replace("{" + "folder" + "}", getApiInvoker().escapeString(folder));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipeline_folder_by_org";

        token.returnType = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl;
        return requestId;

    }

    /*
     * Returns IojenkinsblueoceanserviceembeddedrestPipelineImpl 
     */
    public function get_pipeline_folder_by_org_1 (organisation: String, pipeline: String, folder: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}".replace(/{format}/g,"xml").replace("{" + "organisation" + "}", getApiInvoker().escapeString(organisation)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "folder" + "}", getApiInvoker().escapeString(folder));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipeline_folder_by_org_1";

        token.returnType = IojenkinsblueoceanserviceembeddedrestPipelineImpl;
        return requestId;

    }

    /*
     * Returns GetPipelines 
     */
    public function get_pipelines_by_org (organisation: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organisation}/pipelines/".replace(/{format}/g,"xml").replace("{" + "organisation" + "}", getApiInvoker().escapeString(organisation));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipelines_by_org";

        token.returnType = GetPipelines;
        return requestId;

    }

    /*
     * Returns SwaggyjenkinsUser 
     */
    public function get_user (organisation: String, user: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organisation}/users/{user}".replace(/{format}/g,"xml").replace("{" + "organisation" + "}", getApiInvoker().escapeString(organisation)).replace("{" + "user" + "}", getApiInvoker().escapeString(user));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_user";

        token.returnType = SwaggyjenkinsUser;
        return requestId;

    }

    /*
     * Returns SwaggyjenkinsUser 
     */
    public function get_users (organisation: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organisation}/users/".replace(/{format}/g,"xml").replace("{" + "organisation" + "}", getApiInvoker().escapeString(organisation));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_users";

        token.returnType = SwaggyjenkinsUser;
        return requestId;

    }

    /*
     * Returns String 
     */
    public function search (q: String): String {
        // create path and map variables
        var path: String = "/blue/rest/classes/".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(q))
            queryParams["q"] = toPathValue(q);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "search";

        token.returnType = String;
        return requestId;

    }

    /*
     * Returns String 
     */
    public function search_2 (q: String): String {
        // create path and map variables
        var path: String = "/blue/rest/search/".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(q))
            queryParams["q"] = toPathValue(q);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "search_2";

        token.returnType = String;
        return requestId;

    }
}
}
