// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { BranchImpl } from '../models/BranchImpl';
import { FavoriteImpl } from '../models/FavoriteImpl';
import { GithubOrganization } from '../models/GithubOrganization';
import { GithubScm } from '../models/GithubScm';
import { MultibranchPipeline } from '../models/MultibranchPipeline';
import { Organisation } from '../models/Organisation';
import { Pipeline } from '../models/Pipeline';
import { PipelineActivity } from '../models/PipelineActivity';
import { PipelineFolderImpl } from '../models/PipelineFolderImpl';
import { PipelineImpl } from '../models/PipelineImpl';
import { PipelineRun } from '../models/PipelineRun';
import { PipelineRunNode } from '../models/PipelineRunNode';
import { PipelineStepImpl } from '../models/PipelineStepImpl';
import { QueueItemImpl } from '../models/QueueItemImpl';
import { UNKNOWNBASETYPE } from '../models/UNKNOWN_BASE_TYPE';
import { User } from '../models/User';

/**
 * no description
 */
export class BlueOceanApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Delete queue item from an organization pipeline queue
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param queue Name of the queue item
     */
    public async deletePipelineQueueItem(organization: string, pipeline: string, queue: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "deletePipelineQueueItem", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "deletePipelineQueueItem", "pipeline");
        }


        // verify required parameter 'queue' is not null or undefined
        if (queue === null || queue === undefined) {
            throw new RequiredError("BlueOceanApi", "deletePipelineQueueItem", "queue");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'queue' + '}', encodeURIComponent(String(queue)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.DELETE);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve authenticated user details for an organization
     * @param organization Name of the organization
     */
    public async getAuthenticatedUser(organization: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getAuthenticatedUser", "organization");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/user/'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Get a list of class names supported by a given class
     * @param _class Name of the class
     */
    public async getClasses(_class: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter '_class' is not null or undefined
        if (_class === null || _class === undefined) {
            throw new RequiredError("BlueOceanApi", "getClasses", "_class");
        }


        // Path Params
        const localVarPath = '/blue/rest/classes/{class}'
            .replace('{' + 'class' + '}', encodeURIComponent(String(_class)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve JSON Web Key
     * @param key Key ID received as part of JWT header field kid
     */
    public async getJsonWebKey(key: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'key' is not null or undefined
        if (key === null || key === undefined) {
            throw new RequiredError("BlueOceanApi", "getJsonWebKey", "key");
        }


        // Path Params
        const localVarPath = '/jwt-auth/jwks/{key}'
            .replace('{' + 'key' + '}', encodeURIComponent(String(key)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve JSON Web Token
     * @param expiryTimeInMins Token expiry time in minutes, default: 30 minutes
     * @param maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes
     */
    public async getJsonWebToken(expiryTimeInMins?: number, maxExpiryTimeInMins?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;



        // Path Params
        const localVarPath = '/jwt-auth/token';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (expiryTimeInMins !== undefined) {
            requestContext.setQueryParam("expiryTimeInMins", ObjectSerializer.serialize(expiryTimeInMins, "number", ""));
        }

        // Query Params
        if (maxExpiryTimeInMins !== undefined) {
            requestContext.setQueryParam("maxExpiryTimeInMins", ObjectSerializer.serialize(maxExpiryTimeInMins, "number", ""));
        }


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve organization details
     * @param organization Name of the organization
     */
    public async getOrganisation(organization: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getOrganisation", "organization");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve all organizations details
     */
    public async getOrganisations(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/blue/rest/organizations/';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve pipeline details for an organization
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public async getPipeline(organization: string, pipeline: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipeline", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipeline", "pipeline");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve all activities details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public async getPipelineActivities(organization: string, pipeline: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineActivities", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineActivities", "pipeline");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve branch details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param branch Name of the branch
     */
    public async getPipelineBranch(organization: string, pipeline: string, branch: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineBranch", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineBranch", "pipeline");
        }


        // verify required parameter 'branch' is not null or undefined
        if (branch === null || branch === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineBranch", "branch");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'branch' + '}', encodeURIComponent(String(branch)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve branch run details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param branch Name of the branch
     * @param run Name of the run
     */
    public async getPipelineBranchRun(organization: string, pipeline: string, branch: string, run: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineBranchRun", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineBranchRun", "pipeline");
        }


        // verify required parameter 'branch' is not null or undefined
        if (branch === null || branch === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineBranchRun", "branch");
        }


        // verify required parameter 'run' is not null or undefined
        if (run === null || run === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineBranchRun", "run");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'branch' + '}', encodeURIComponent(String(branch)))
            .replace('{' + 'run' + '}', encodeURIComponent(String(run)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve all branches details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public async getPipelineBranches(organization: string, pipeline: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineBranches", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineBranches", "pipeline");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve pipeline folder for an organization
     * @param organization Name of the organization
     * @param folder Name of the folder
     */
    public async getPipelineFolder(organization: string, folder: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineFolder", "organization");
        }


        // verify required parameter 'folder' is not null or undefined
        if (folder === null || folder === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineFolder", "folder");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{folder}/'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'folder' + '}', encodeURIComponent(String(folder)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve pipeline details for an organization folder
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param folder Name of the folder
     */
    public async getPipelineFolderPipeline(organization: string, pipeline: string, folder: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineFolderPipeline", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineFolderPipeline", "pipeline");
        }


        // verify required parameter 'folder' is not null or undefined
        if (folder === null || folder === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineFolderPipeline", "folder");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'folder' + '}', encodeURIComponent(String(folder)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve queue details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public async getPipelineQueue(organization: string, pipeline: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineQueue", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineQueue", "pipeline");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve run details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public async getPipelineRun(organization: string, pipeline: string, run: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRun", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRun", "pipeline");
        }


        // verify required parameter 'run' is not null or undefined
        if (run === null || run === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRun", "run");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'run' + '}', encodeURIComponent(String(run)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Get log for a pipeline run
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param start Start position of the log
     * @param download Set to true in order to download the file, otherwise it&#39;s passed as a response body
     */
    public async getPipelineRunLog(organization: string, pipeline: string, run: string, start?: number, download?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunLog", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunLog", "pipeline");
        }


        // verify required parameter 'run' is not null or undefined
        if (run === null || run === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunLog", "run");
        }




        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'run' + '}', encodeURIComponent(String(run)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (start !== undefined) {
            requestContext.setQueryParam("start", ObjectSerializer.serialize(start, "number", ""));
        }

        // Query Params
        if (download !== undefined) {
            requestContext.setQueryParam("download", ObjectSerializer.serialize(download, "boolean", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve run node details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     */
    public async getPipelineRunNode(organization: string, pipeline: string, run: string, node: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNode", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNode", "pipeline");
        }


        // verify required parameter 'run' is not null or undefined
        if (run === null || run === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNode", "run");
        }


        // verify required parameter 'node' is not null or undefined
        if (node === null || node === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNode", "node");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'run' + '}', encodeURIComponent(String(run)))
            .replace('{' + 'node' + '}', encodeURIComponent(String(node)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve run node details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     * @param step Name of the step
     */
    public async getPipelineRunNodeStep(organization: string, pipeline: string, run: string, node: string, step: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeStep", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeStep", "pipeline");
        }


        // verify required parameter 'run' is not null or undefined
        if (run === null || run === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeStep", "run");
        }


        // verify required parameter 'node' is not null or undefined
        if (node === null || node === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeStep", "node");
        }


        // verify required parameter 'step' is not null or undefined
        if (step === null || step === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeStep", "step");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'run' + '}', encodeURIComponent(String(run)))
            .replace('{' + 'node' + '}', encodeURIComponent(String(node)))
            .replace('{' + 'step' + '}', encodeURIComponent(String(step)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Get log for a pipeline run node step
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     * @param step Name of the step
     */
    public async getPipelineRunNodeStepLog(organization: string, pipeline: string, run: string, node: string, step: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeStepLog", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeStepLog", "pipeline");
        }


        // verify required parameter 'run' is not null or undefined
        if (run === null || run === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeStepLog", "run");
        }


        // verify required parameter 'node' is not null or undefined
        if (node === null || node === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeStepLog", "node");
        }


        // verify required parameter 'step' is not null or undefined
        if (step === null || step === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeStepLog", "step");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'run' + '}', encodeURIComponent(String(run)))
            .replace('{' + 'node' + '}', encodeURIComponent(String(node)))
            .replace('{' + 'step' + '}', encodeURIComponent(String(step)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve run node steps details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     */
    public async getPipelineRunNodeSteps(organization: string, pipeline: string, run: string, node: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeSteps", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeSteps", "pipeline");
        }


        // verify required parameter 'run' is not null or undefined
        if (run === null || run === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeSteps", "run");
        }


        // verify required parameter 'node' is not null or undefined
        if (node === null || node === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodeSteps", "node");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'run' + '}', encodeURIComponent(String(run)))
            .replace('{' + 'node' + '}', encodeURIComponent(String(node)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve run nodes details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public async getPipelineRunNodes(organization: string, pipeline: string, run: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodes", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodes", "pipeline");
        }


        // verify required parameter 'run' is not null or undefined
        if (run === null || run === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRunNodes", "run");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'run' + '}', encodeURIComponent(String(run)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve all runs details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public async getPipelineRuns(organization: string, pipeline: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRuns", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelineRuns", "pipeline");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve all pipelines details for an organization
     * @param organization Name of the organization
     */
    public async getPipelines(organization: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getPipelines", "organization");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve SCM details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     */
    public async getSCM(organization: string, scm: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getSCM", "organization");
        }


        // verify required parameter 'scm' is not null or undefined
        if (scm === null || scm === undefined) {
            throw new RequiredError("BlueOceanApi", "getSCM", "scm");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/scm/{scm}'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'scm' + '}', encodeURIComponent(String(scm)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve SCM organization repositories details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     * @param scmOrganisation Name of the SCM organization
     * @param credentialId Credential ID
     * @param pageSize Number of items in a page
     * @param pageNumber Page number
     */
    public async getSCMOrganisationRepositories(organization: string, scm: string, scmOrganisation: string, credentialId?: string, pageSize?: number, pageNumber?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getSCMOrganisationRepositories", "organization");
        }


        // verify required parameter 'scm' is not null or undefined
        if (scm === null || scm === undefined) {
            throw new RequiredError("BlueOceanApi", "getSCMOrganisationRepositories", "scm");
        }


        // verify required parameter 'scmOrganisation' is not null or undefined
        if (scmOrganisation === null || scmOrganisation === undefined) {
            throw new RequiredError("BlueOceanApi", "getSCMOrganisationRepositories", "scmOrganisation");
        }





        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'scm' + '}', encodeURIComponent(String(scm)))
            .replace('{' + 'scmOrganisation' + '}', encodeURIComponent(String(scmOrganisation)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (credentialId !== undefined) {
            requestContext.setQueryParam("credentialId", ObjectSerializer.serialize(credentialId, "string", ""));
        }

        // Query Params
        if (pageSize !== undefined) {
            requestContext.setQueryParam("pageSize", ObjectSerializer.serialize(pageSize, "number", ""));
        }

        // Query Params
        if (pageNumber !== undefined) {
            requestContext.setQueryParam("pageNumber", ObjectSerializer.serialize(pageNumber, "number", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve SCM organization repository details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     * @param scmOrganisation Name of the SCM organization
     * @param repository Name of the SCM repository
     * @param credentialId Credential ID
     */
    public async getSCMOrganisationRepository(organization: string, scm: string, scmOrganisation: string, repository: string, credentialId?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getSCMOrganisationRepository", "organization");
        }


        // verify required parameter 'scm' is not null or undefined
        if (scm === null || scm === undefined) {
            throw new RequiredError("BlueOceanApi", "getSCMOrganisationRepository", "scm");
        }


        // verify required parameter 'scmOrganisation' is not null or undefined
        if (scmOrganisation === null || scmOrganisation === undefined) {
            throw new RequiredError("BlueOceanApi", "getSCMOrganisationRepository", "scmOrganisation");
        }


        // verify required parameter 'repository' is not null or undefined
        if (repository === null || repository === undefined) {
            throw new RequiredError("BlueOceanApi", "getSCMOrganisationRepository", "repository");
        }



        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'scm' + '}', encodeURIComponent(String(scm)))
            .replace('{' + 'scmOrganisation' + '}', encodeURIComponent(String(scmOrganisation)))
            .replace('{' + 'repository' + '}', encodeURIComponent(String(repository)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (credentialId !== undefined) {
            requestContext.setQueryParam("credentialId", ObjectSerializer.serialize(credentialId, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve SCM organizations details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     * @param credentialId Credential ID
     */
    public async getSCMOrganisations(organization: string, scm: string, credentialId?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getSCMOrganisations", "organization");
        }


        // verify required parameter 'scm' is not null or undefined
        if (scm === null || scm === undefined) {
            throw new RequiredError("BlueOceanApi", "getSCMOrganisations", "scm");
        }



        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/scm/{scm}/organizations'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'scm' + '}', encodeURIComponent(String(scm)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (credentialId !== undefined) {
            requestContext.setQueryParam("credentialId", ObjectSerializer.serialize(credentialId, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve user details for an organization
     * @param organization Name of the organization
     * @param user Name of the user
     */
    public async getUser(organization: string, user: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getUser", "organization");
        }


        // verify required parameter 'user' is not null or undefined
        if (user === null || user === undefined) {
            throw new RequiredError("BlueOceanApi", "getUser", "user");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/users/{user}'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'user' + '}', encodeURIComponent(String(user)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve user favorites details for an organization
     * @param user Name of the user
     */
    public async getUserFavorites(user: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'user' is not null or undefined
        if (user === null || user === undefined) {
            throw new RequiredError("BlueOceanApi", "getUserFavorites", "user");
        }


        // Path Params
        const localVarPath = '/blue/rest/users/{user}/favorites'
            .replace('{' + 'user' + '}', encodeURIComponent(String(user)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve users details for an organization
     * @param organization Name of the organization
     */
    public async getUsers(organization: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "getUsers", "organization");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/users/'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Replay an organization pipeline run
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public async postPipelineRun(organization: string, pipeline: string, run: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "postPipelineRun", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "postPipelineRun", "pipeline");
        }


        // verify required parameter 'run' is not null or undefined
        if (run === null || run === undefined) {
            throw new RequiredError("BlueOceanApi", "postPipelineRun", "run");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'run' + '}', encodeURIComponent(String(run)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Start a build for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public async postPipelineRuns(organization: string, pipeline: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "postPipelineRuns", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "postPipelineRuns", "pipeline");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Favorite/unfavorite a pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param UNKNOWN_BASE_TYPE Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite
     */
    public async putPipelineFavorite(organization: string, pipeline: string, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "putPipelineFavorite", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "putPipelineFavorite", "pipeline");
        }


        // verify required parameter 'UNKNOWN_BASE_TYPE' is not null or undefined
        if (UNKNOWN_BASE_TYPE === null || UNKNOWN_BASE_TYPE === undefined) {
            throw new RequiredError("BlueOceanApi", "putPipelineFavorite", "UNKNOWN_BASE_TYPE");
        }


        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.PUT);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(UNKNOWN_BASE_TYPE, "UNKNOWN_BASE_TYPE", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Stop a build of an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param blocking Set to true to make blocking stop, default: false
     * @param timeOutInSecs Timeout in seconds, default: 10 seconds
     */
    public async putPipelineRun(organization: string, pipeline: string, run: string, blocking?: string, timeOutInSecs?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'organization' is not null or undefined
        if (organization === null || organization === undefined) {
            throw new RequiredError("BlueOceanApi", "putPipelineRun", "organization");
        }


        // verify required parameter 'pipeline' is not null or undefined
        if (pipeline === null || pipeline === undefined) {
            throw new RequiredError("BlueOceanApi", "putPipelineRun", "pipeline");
        }


        // verify required parameter 'run' is not null or undefined
        if (run === null || run === undefined) {
            throw new RequiredError("BlueOceanApi", "putPipelineRun", "run");
        }




        // Path Params
        const localVarPath = '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop'
            .replace('{' + 'organization' + '}', encodeURIComponent(String(organization)))
            .replace('{' + 'pipeline' + '}', encodeURIComponent(String(pipeline)))
            .replace('{' + 'run' + '}', encodeURIComponent(String(run)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.PUT);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (blocking !== undefined) {
            requestContext.setQueryParam("blocking", ObjectSerializer.serialize(blocking, "string", ""));
        }

        // Query Params
        if (timeOutInSecs !== undefined) {
            requestContext.setQueryParam("timeOutInSecs", ObjectSerializer.serialize(timeOutInSecs, "number", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Search for any resource details
     * @param q Query string
     */
    public async search(q: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'q' is not null or undefined
        if (q === null || q === undefined) {
            throw new RequiredError("BlueOceanApi", "search", "q");
        }


        // Path Params
        const localVarPath = '/blue/rest/search/';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (q !== undefined) {
            requestContext.setQueryParam("q", ObjectSerializer.serialize(q, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Get classes details
     * @param q Query string containing an array of class names
     */
    public async searchClasses(q: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'q' is not null or undefined
        if (q === null || q === undefined) {
            throw new RequiredError("BlueOceanApi", "searchClasses", "q");
        }


        // Path Params
        const localVarPath = '/blue/rest/classes/';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (q !== undefined) {
            requestContext.setQueryParam("q", ObjectSerializer.serialize(q, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["jenkins_auth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class BlueOceanApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to deletePipelineQueueItem
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async deletePipelineQueueItem(response: ResponseContext): Promise<void > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            return;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: void = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "void", ""
            ) as void;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getAuthenticatedUser
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getAuthenticatedUser(response: ResponseContext): Promise<User > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: User = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "User", ""
            ) as User;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: User = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "User", ""
            ) as User;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getClasses
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getClasses(response: ResponseContext): Promise<string > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getJsonWebKey
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getJsonWebKey(response: ResponseContext): Promise<string > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getJsonWebToken
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getJsonWebToken(response: ResponseContext): Promise<string > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getOrganisation
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getOrganisation(response: ResponseContext): Promise<Organisation > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Organisation = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Organisation", ""
            ) as Organisation;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Pipeline cannot be found on Jenkins instance", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Organisation = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Organisation", ""
            ) as Organisation;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getOrganisations
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getOrganisations(response: ResponseContext): Promise<Array<Organisation> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<Organisation> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<Organisation>", ""
            ) as Array<Organisation>;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<Organisation> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<Organisation>", ""
            ) as Array<Organisation>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipeline
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipeline(response: ResponseContext): Promise<Pipeline > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Pipeline = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Pipeline", ""
            ) as Pipeline;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Pipeline cannot be found on Jenkins instance", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Pipeline = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Pipeline", ""
            ) as Pipeline;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineActivities
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineActivities(response: ResponseContext): Promise<Array<PipelineActivity> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<PipelineActivity> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<PipelineActivity>", ""
            ) as Array<PipelineActivity>;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<PipelineActivity> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<PipelineActivity>", ""
            ) as Array<PipelineActivity>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineBranch
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineBranch(response: ResponseContext): Promise<BranchImpl > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: BranchImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "BranchImpl", ""
            ) as BranchImpl;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: BranchImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "BranchImpl", ""
            ) as BranchImpl;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineBranchRun
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineBranchRun(response: ResponseContext): Promise<PipelineRun > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: PipelineRun = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineRun", ""
            ) as PipelineRun;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: PipelineRun = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineRun", ""
            ) as PipelineRun;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineBranches
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineBranches(response: ResponseContext): Promise<MultibranchPipeline > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: MultibranchPipeline = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "MultibranchPipeline", ""
            ) as MultibranchPipeline;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: MultibranchPipeline = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "MultibranchPipeline", ""
            ) as MultibranchPipeline;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineFolder
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineFolder(response: ResponseContext): Promise<PipelineFolderImpl > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: PipelineFolderImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineFolderImpl", ""
            ) as PipelineFolderImpl;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: PipelineFolderImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineFolderImpl", ""
            ) as PipelineFolderImpl;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineFolderPipeline
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineFolderPipeline(response: ResponseContext): Promise<PipelineImpl > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: PipelineImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineImpl", ""
            ) as PipelineImpl;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: PipelineImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineImpl", ""
            ) as PipelineImpl;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineQueue
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineQueue(response: ResponseContext): Promise<Array<QueueItemImpl> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<QueueItemImpl> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<QueueItemImpl>", ""
            ) as Array<QueueItemImpl>;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<QueueItemImpl> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<QueueItemImpl>", ""
            ) as Array<QueueItemImpl>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineRun
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineRun(response: ResponseContext): Promise<PipelineRun > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: PipelineRun = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineRun", ""
            ) as PipelineRun;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: PipelineRun = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineRun", ""
            ) as PipelineRun;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineRunLog
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineRunLog(response: ResponseContext): Promise<string > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineRunNode
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineRunNode(response: ResponseContext): Promise<PipelineRunNode > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: PipelineRunNode = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineRunNode", ""
            ) as PipelineRunNode;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: PipelineRunNode = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineRunNode", ""
            ) as PipelineRunNode;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineRunNodeStep
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineRunNodeStep(response: ResponseContext): Promise<PipelineStepImpl > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: PipelineStepImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineStepImpl", ""
            ) as PipelineStepImpl;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: PipelineStepImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineStepImpl", ""
            ) as PipelineStepImpl;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineRunNodeStepLog
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineRunNodeStepLog(response: ResponseContext): Promise<string > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineRunNodeSteps
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineRunNodeSteps(response: ResponseContext): Promise<Array<PipelineStepImpl> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<PipelineStepImpl> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<PipelineStepImpl>", ""
            ) as Array<PipelineStepImpl>;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<PipelineStepImpl> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<PipelineStepImpl>", ""
            ) as Array<PipelineStepImpl>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineRunNodes
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineRunNodes(response: ResponseContext): Promise<Array<PipelineRunNode> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<PipelineRunNode> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<PipelineRunNode>", ""
            ) as Array<PipelineRunNode>;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<PipelineRunNode> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<PipelineRunNode>", ""
            ) as Array<PipelineRunNode>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelineRuns
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelineRuns(response: ResponseContext): Promise<Array<PipelineRun> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<PipelineRun> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<PipelineRun>", ""
            ) as Array<PipelineRun>;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<PipelineRun> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<PipelineRun>", ""
            ) as Array<PipelineRun>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getPipelines
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getPipelines(response: ResponseContext): Promise<Array<Pipeline> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<Pipeline> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<Pipeline>", ""
            ) as Array<Pipeline>;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<Pipeline> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<Pipeline>", ""
            ) as Array<Pipeline>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getSCM
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getSCM(response: ResponseContext): Promise<GithubScm > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GithubScm = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GithubScm", ""
            ) as GithubScm;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: GithubScm = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GithubScm", ""
            ) as GithubScm;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getSCMOrganisationRepositories
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getSCMOrganisationRepositories(response: ResponseContext): Promise<Array<GithubOrganization> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<GithubOrganization> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<GithubOrganization>", ""
            ) as Array<GithubOrganization>;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<GithubOrganization> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<GithubOrganization>", ""
            ) as Array<GithubOrganization>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getSCMOrganisationRepository
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getSCMOrganisationRepository(response: ResponseContext): Promise<Array<GithubOrganization> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<GithubOrganization> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<GithubOrganization>", ""
            ) as Array<GithubOrganization>;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<GithubOrganization> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<GithubOrganization>", ""
            ) as Array<GithubOrganization>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getSCMOrganisations
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getSCMOrganisations(response: ResponseContext): Promise<Array<GithubOrganization> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<GithubOrganization> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<GithubOrganization>", ""
            ) as Array<GithubOrganization>;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<GithubOrganization> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<GithubOrganization>", ""
            ) as Array<GithubOrganization>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getUser
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getUser(response: ResponseContext): Promise<User > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: User = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "User", ""
            ) as User;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: User = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "User", ""
            ) as User;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getUserFavorites
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getUserFavorites(response: ResponseContext): Promise<Array<FavoriteImpl> > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<FavoriteImpl> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<FavoriteImpl>", ""
            ) as Array<FavoriteImpl>;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<FavoriteImpl> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<FavoriteImpl>", ""
            ) as Array<FavoriteImpl>;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getUsers
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getUsers(response: ResponseContext): Promise<User > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: User = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "User", ""
            ) as User;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: User = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "User", ""
            ) as User;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to postPipelineRun
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async postPipelineRun(response: ResponseContext): Promise<QueueItemImpl > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: QueueItemImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "QueueItemImpl", ""
            ) as QueueItemImpl;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: QueueItemImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "QueueItemImpl", ""
            ) as QueueItemImpl;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to postPipelineRuns
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async postPipelineRuns(response: ResponseContext): Promise<QueueItemImpl > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: QueueItemImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "QueueItemImpl", ""
            ) as QueueItemImpl;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: QueueItemImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "QueueItemImpl", ""
            ) as QueueItemImpl;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to putPipelineFavorite
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async putPipelineFavorite(response: ResponseContext): Promise<FavoriteImpl > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: FavoriteImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "FavoriteImpl", ""
            ) as FavoriteImpl;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: FavoriteImpl = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "FavoriteImpl", ""
            ) as FavoriteImpl;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to putPipelineRun
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async putPipelineRun(response: ResponseContext): Promise<PipelineRun > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: PipelineRun = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineRun", ""
            ) as PipelineRun;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: PipelineRun = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PipelineRun", ""
            ) as PipelineRun;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to search
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async search(response: ResponseContext): Promise<string > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchClasses
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchClasses(response: ResponseContext): Promise<string > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Authentication failed - incorrect username and/or password", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Jenkins requires authentication - please set username and password", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
