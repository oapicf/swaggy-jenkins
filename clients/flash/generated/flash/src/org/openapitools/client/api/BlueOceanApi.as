package org.openapitools.client.api {

import org.openapitools.common.ApiInvoker;
import org.openapitools.exception.ApiErrorCodes;
import org.openapitools.exception.ApiError;
import org.openapitools.common.ApiUserCredentials;
import org.openapitools.event.Response;
import org.openapitools.common.OpenApi;
import org.openapitools.client.model.Body;
import org.openapitools.client.model.BranchImpl;
import org.openapitools.client.model.FavoriteImpl;
import org.openapitools.client.model.GithubScm;
import org.openapitools.client.model.MultibranchPipeline;
import org.openapitools.client.model.Organisation;
import org.openapitools.client.model.Organisations;
import org.openapitools.client.model.Pipeline;
import org.openapitools.client.model.PipelineActivities;
import org.openapitools.client.model.PipelineFolderImpl;
import org.openapitools.client.model.PipelineImpl;
import org.openapitools.client.model.PipelineQueue;
import org.openapitools.client.model.PipelineRun;
import org.openapitools.client.model.PipelineRunNode;
import org.openapitools.client.model.PipelineRunNodeSteps;
import org.openapitools.client.model.PipelineRunNodes;
import org.openapitools.client.model.PipelineRuns;
import org.openapitools.client.model.PipelineStepImpl;
import org.openapitools.client.model.Pipelines;
import org.openapitools.client.model.QueueItemImpl;
import org.openapitools.client.model.ScmOrganisations;
import org.openapitools.client.model.User;
import org.openapitools.client.model.UserFavorites;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class BlueOceanApi extends OpenApi {
    /**
    * Constructor for the BlueOceanApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function BlueOceanApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_delete_pipeline_queue_item: String = "delete_pipeline_queue_item";
        public static const event_get_authenticated_user: String = "get_authenticated_user";
        public static const event_get_classes: String = "get_classes";
        public static const event_get_json_web_key: String = "get_json_web_key";
        public static const event_get_json_web_token: String = "get_json_web_token";
        public static const event_get_organisation: String = "get_organisation";
        public static const event_get_organisations: String = "get_organisations";
        public static const event_get_pipeline: String = "get_pipeline";
        public static const event_get_pipeline_activities: String = "get_pipeline_activities";
        public static const event_get_pipeline_branch: String = "get_pipeline_branch";
        public static const event_get_pipeline_branch_run: String = "get_pipeline_branch_run";
        public static const event_get_pipeline_branches: String = "get_pipeline_branches";
        public static const event_get_pipeline_folder: String = "get_pipeline_folder";
        public static const event_get_pipeline_folder_pipeline: String = "get_pipeline_folder_pipeline";
        public static const event_get_pipeline_queue: String = "get_pipeline_queue";
        public static const event_get_pipeline_run: String = "get_pipeline_run";
        public static const event_get_pipeline_run_log: String = "get_pipeline_run_log";
        public static const event_get_pipeline_run_node: String = "get_pipeline_run_node";
        public static const event_get_pipeline_run_node_step: String = "get_pipeline_run_node_step";
        public static const event_get_pipeline_run_node_step_log: String = "get_pipeline_run_node_step_log";
        public static const event_get_pipeline_run_node_steps: String = "get_pipeline_run_node_steps";
        public static const event_get_pipeline_run_nodes: String = "get_pipeline_run_nodes";
        public static const event_get_pipeline_runs: String = "get_pipeline_runs";
        public static const event_get_pipelines: String = "get_pipelines";
        public static const event_get_scm: String = "get_scm";
        public static const event_get_scm_organisation_repositories: String = "get_scm_organisation_repositories";
        public static const event_get_scm_organisation_repository: String = "get_scm_organisation_repository";
        public static const event_get_scm_organisations: String = "get_scm_organisations";
        public static const event_get_user: String = "get_user";
        public static const event_get_user_favorites: String = "get_user_favorites";
        public static const event_get_users: String = "get_users";
        public static const event_post_pipeline_run: String = "post_pipeline_run";
        public static const event_post_pipeline_runs: String = "post_pipeline_runs";
        public static const event_put_pipeline_favorite: String = "put_pipeline_favorite";
        public static const event_put_pipeline_run: String = "put_pipeline_run";
        public static const event_search: String = "search";
        public static const event_search_classes: String = "search_classes";


    /*
     * Returns void 
     */
    public function delete_pipeline_queue_item (organization: String, pipeline: String, queue: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "queue" + "}", getApiInvoker().escapeString(queue));

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

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "DELETE", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "delete_pipeline_queue_item";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns User 
     */
    public function get_authenticated_user (organization: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/user/".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization));

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

        token.returnType = User;
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
     * Returns String 
     */
    public function get_json_web_key (key: Number): String {
        // create path and map variables
        var path: String = "/jwt-auth/jwks/{key}".replace(/{format}/g,"xml").replace("{" + "key" + "}", getApiInvoker().escapeString(key));

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
        token.completionEventType = "get_json_web_key";

        token.returnType = String;
        return requestId;

    }

    /*
     * Returns String 
     */
    public function get_json_web_token (expiryTimeInMins: Number, maxExpiryTimeInMins: Number): String {
        // create path and map variables
        var path: String = "/jwt-auth/token".replace(/{format}/g,"xml");

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

        if("null" != String(expiryTimeInMins))
            queryParams["expiryTimeInMins"] = toPathValue(expiryTimeInMins);
if("null" != String(maxExpiryTimeInMins))
            queryParams["maxExpiryTimeInMins"] = toPathValue(maxExpiryTimeInMins);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_json_web_token";

        token.returnType = String;
        return requestId;

    }

    /*
     * Returns Organisation 
     */
    public function get_organisation (organization: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization));

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

        token.returnType = Organisation;
        return requestId;

    }

    /*
     * Returns Organisations 
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

        token.returnType = Organisations;
        return requestId;

    }

    /*
     * Returns Pipeline 
     */
    public function get_pipeline (organization: String, pipeline: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline));

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
        token.completionEventType = "get_pipeline";

        token.returnType = Pipeline;
        return requestId;

    }

    /*
     * Returns PipelineActivities 
     */
    public function get_pipeline_activities (organization: String, pipeline: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline));

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
        token.completionEventType = "get_pipeline_activities";

        token.returnType = PipelineActivities;
        return requestId;

    }

    /*
     * Returns BranchImpl 
     */
    public function get_pipeline_branch (organization: String, pipeline: String, branch: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "branch" + "}", getApiInvoker().escapeString(branch));

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
        token.completionEventType = "get_pipeline_branch";

        token.returnType = BranchImpl;
        return requestId;

    }

    /*
     * Returns PipelineRun 
     */
    public function get_pipeline_branch_run (organization: String, pipeline: String, branch: String, run: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "branch" + "}", getApiInvoker().escapeString(branch)).replace("{" + "run" + "}", getApiInvoker().escapeString(run));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
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
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipeline_branch_run";

        token.returnType = PipelineRun;
        return requestId;

    }

    /*
     * Returns MultibranchPipeline 
     */
    public function get_pipeline_branches (organization: String, pipeline: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline));

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
        token.completionEventType = "get_pipeline_branches";

        token.returnType = MultibranchPipeline;
        return requestId;

    }

    /*
     * Returns PipelineFolderImpl 
     */
    public function get_pipeline_folder (organization: String, folder: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{folder}/".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "folder" + "}", getApiInvoker().escapeString(folder));

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
        token.completionEventType = "get_pipeline_folder";

        token.returnType = PipelineFolderImpl;
        return requestId;

    }

    /*
     * Returns PipelineImpl 
     */
    public function get_pipeline_folder_pipeline (organization: String, pipeline: String, folder: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "folder" + "}", getApiInvoker().escapeString(folder));

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
        token.completionEventType = "get_pipeline_folder_pipeline";

        token.returnType = PipelineImpl;
        return requestId;

    }

    /*
     * Returns PipelineQueue 
     */
    public function get_pipeline_queue (organization: String, pipeline: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline));

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
        token.completionEventType = "get_pipeline_queue";

        token.returnType = PipelineQueue;
        return requestId;

    }

    /*
     * Returns PipelineRun 
     */
    public function get_pipeline_run (organization: String, pipeline: String, run: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "run" + "}", getApiInvoker().escapeString(run));

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
        token.completionEventType = "get_pipeline_run";

        token.returnType = PipelineRun;
        return requestId;

    }

    /*
     * Returns String 
     */
    public function get_pipeline_run_log (organization: String, pipeline: String, run: String, start: Number, download: Boolean): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "run" + "}", getApiInvoker().escapeString(run));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
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
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(start))
            queryParams["start"] = toPathValue(start);
if("null" != String(download))
            queryParams["download"] = toPathValue(download);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipeline_run_log";

        token.returnType = String;
        return requestId;

    }

    /*
     * Returns PipelineRunNode 
     */
    public function get_pipeline_run_node (organization: String, pipeline: String, run: String, node: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "run" + "}", getApiInvoker().escapeString(run)).replace("{" + "node" + "}", getApiInvoker().escapeString(node));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
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
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipeline_run_node";

        token.returnType = PipelineRunNode;
        return requestId;

    }

    /*
     * Returns PipelineStepImpl 
     */
    public function get_pipeline_run_node_step (organization: String, pipeline: String, run: String, node: String, step: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "run" + "}", getApiInvoker().escapeString(run)).replace("{" + "node" + "}", getApiInvoker().escapeString(node)).replace("{" + "step" + "}", getApiInvoker().escapeString(step));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
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
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipeline_run_node_step";

        token.returnType = PipelineStepImpl;
        return requestId;

    }

    /*
     * Returns String 
     */
    public function get_pipeline_run_node_step_log (organization: String, pipeline: String, run: String, node: String, step: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "run" + "}", getApiInvoker().escapeString(run)).replace("{" + "node" + "}", getApiInvoker().escapeString(node)).replace("{" + "step" + "}", getApiInvoker().escapeString(step));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
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
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipeline_run_node_step_log";

        token.returnType = String;
        return requestId;

    }

    /*
     * Returns PipelineRunNodeSteps 
     */
    public function get_pipeline_run_node_steps (organization: String, pipeline: String, run: String, node: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "run" + "}", getApiInvoker().escapeString(run)).replace("{" + "node" + "}", getApiInvoker().escapeString(node));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
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
) {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_pipeline_run_node_steps";

        token.returnType = PipelineRunNodeSteps;
        return requestId;

    }

    /*
     * Returns PipelineRunNodes 
     */
    public function get_pipeline_run_nodes (organization: String, pipeline: String, run: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "run" + "}", getApiInvoker().escapeString(run));

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
        token.completionEventType = "get_pipeline_run_nodes";

        token.returnType = PipelineRunNodes;
        return requestId;

    }

    /*
     * Returns PipelineRuns 
     */
    public function get_pipeline_runs (organization: String, pipeline: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline));

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
        token.completionEventType = "get_pipeline_runs";

        token.returnType = PipelineRuns;
        return requestId;

    }

    /*
     * Returns Pipelines 
     */
    public function get_pipelines (organization: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization));

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
        token.completionEventType = "get_pipelines";

        token.returnType = Pipelines;
        return requestId;

    }

    /*
     * Returns GithubScm 
     */
    public function get_scm (organization: String, scm: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/scm/{scm}".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "scm" + "}", getApiInvoker().escapeString(scm));

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
        token.completionEventType = "get_scm";

        token.returnType = GithubScm;
        return requestId;

    }

    /*
     * Returns ScmOrganisations 
     */
    public function get_scm_organisation_repositories (organization: String, scm: String, scmOrganisation: String, credentialId: String, pageSize: Number, pageNumber: Number): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "scm" + "}", getApiInvoker().escapeString(scm)).replace("{" + "scmOrganisation" + "}", getApiInvoker().escapeString(scmOrganisation));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
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
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(credentialId))
            queryParams["credentialId"] = toPathValue(credentialId);
if("null" != String(pageSize))
            queryParams["pageSize"] = toPathValue(pageSize);
if("null" != String(pageNumber))
            queryParams["pageNumber"] = toPathValue(pageNumber);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_scm_organisation_repositories";

        token.returnType = ScmOrganisations;
        return requestId;

    }

    /*
     * Returns ScmOrganisations 
     */
    public function get_scm_organisation_repository (organization: String, scm: String, scmOrganisation: String, repository: String, credentialId: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "scm" + "}", getApiInvoker().escapeString(scm)).replace("{" + "scmOrganisation" + "}", getApiInvoker().escapeString(scmOrganisation)).replace("{" + "repository" + "}", getApiInvoker().escapeString(repository));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
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
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(credentialId))
            queryParams["credentialId"] = toPathValue(credentialId);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_scm_organisation_repository";

        token.returnType = ScmOrganisations;
        return requestId;

    }

    /*
     * Returns ScmOrganisations 
     */
    public function get_scm_organisations (organization: String, scm: String, credentialId: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/scm/{scm}/organizations".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "scm" + "}", getApiInvoker().escapeString(scm));

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

        if("null" != String(credentialId))
            queryParams["credentialId"] = toPathValue(credentialId);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_scm_organisations";

        token.returnType = ScmOrganisations;
        return requestId;

    }

    /*
     * Returns User 
     */
    public function get_user (organization: String, user: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/users/{user}".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "user" + "}", getApiInvoker().escapeString(user));

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

        token.returnType = User;
        return requestId;

    }

    /*
     * Returns UserFavorites 
     */
    public function get_user_favorites (user: String): String {
        // create path and map variables
        var path: String = "/blue/rest/users/{user}/favorites".replace(/{format}/g,"xml").replace("{" + "user" + "}", getApiInvoker().escapeString(user));

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
        token.completionEventType = "get_user_favorites";

        token.returnType = UserFavorites;
        return requestId;

    }

    /*
     * Returns User 
     */
    public function get_users (organization: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/users/".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization));

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

        token.returnType = User;
        return requestId;

    }

    /*
     * Returns QueueItemImpl 
     */
    public function post_pipeline_run (organization: String, pipeline: String, run: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "run" + "}", getApiInvoker().escapeString(run));

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

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "post_pipeline_run";

        token.returnType = QueueItemImpl;
        return requestId;

    }

    /*
     * Returns QueueItemImpl 
     */
    public function post_pipeline_runs (organization: String, pipeline: String): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline));

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

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "post_pipeline_runs";

        token.returnType = QueueItemImpl;
        return requestId;

    }

    /*
     * Returns FavoriteImpl 
     */
    public function put_pipeline_favorite (organization: String, pipeline: String, body: Body): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline));

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

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "PUT", queryParams, body, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "put_pipeline_favorite";

        token.returnType = FavoriteImpl;
        return requestId;

    }

    /*
     * Returns PipelineRun 
     */
    public function put_pipeline_run (organization: String, pipeline: String, run: String, blocking: String, timeOutInSecs: Number): String {
        // create path and map variables
        var path: String = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop".replace(/{format}/g,"xml").replace("{" + "organization" + "}", getApiInvoker().escapeString(organization)).replace("{" + "pipeline" + "}", getApiInvoker().escapeString(pipeline)).replace("{" + "run" + "}", getApiInvoker().escapeString(run));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
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
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(blocking))
            queryParams["blocking"] = toPathValue(blocking);
if("null" != String(timeOutInSecs))
            queryParams["timeOutInSecs"] = toPathValue(timeOutInSecs);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "PUT", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "put_pipeline_run";

        token.returnType = PipelineRun;
        return requestId;

    }

    /*
     * Returns String 
     */
    public function search (q: String): String {
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
        token.completionEventType = "search";

        token.returnType = String;
        return requestId;

    }

    /*
     * Returns String 
     */
    public function search_classes (q: String): String {
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
        token.completionEventType = "search_classes";

        token.returnType = String;
        return requestId;

    }
}
}
