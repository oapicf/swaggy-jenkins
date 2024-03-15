// tslint:disable
/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


import { HttpMethods, QueryConfig, ResponseBody, ResponseText } from 'redux-query';
import * as runtime from '../runtime';
import {
    ComputerSet,
    ComputerSetFromJSON,
    ComputerSetToJSON,
    FreeStyleBuild,
    FreeStyleBuildFromJSON,
    FreeStyleBuildToJSON,
    FreeStyleProject,
    FreeStyleProjectFromJSON,
    FreeStyleProjectToJSON,
    Hudson,
    HudsonFromJSON,
    HudsonToJSON,
    ListView,
    ListViewFromJSON,
    ListViewToJSON,
    Queue,
    QueueFromJSON,
    QueueToJSON,
} from '../models';

export interface GetComputerRequest {
    depth: number;
}

export interface GetJobRequest {
    name: string;
}

export interface GetJobConfigRequest {
    name: string;
}

export interface GetJobLastBuildRequest {
    name: string;
}

export interface GetJobProgressiveTextRequest {
    name: string;
    number: string;
    start: string;
}

export interface GetQueueItemRequest {
    number: string;
}

export interface GetViewRequest {
    name: string;
}

export interface GetViewConfigRequest {
    name: string;
}

export interface PostCreateItemRequest {
    name: string;
    from?: string;
    mode?: string;
    jenkinsCrumb?: string;
    contentType?: string;
    body?: string;
}

export interface PostCreateViewRequest {
    name: string;
    jenkinsCrumb?: string;
    contentType?: string;
    body?: string;
}

export interface PostJobBuildRequest {
    name: string;
    json: string;
    token?: string;
    jenkinsCrumb?: string;
}

export interface PostJobConfigRequest {
    name: string;
    body: string;
    jenkinsCrumb?: string;
}

export interface PostJobDeleteRequest {
    name: string;
    jenkinsCrumb?: string;
}

export interface PostJobDisableRequest {
    name: string;
    jenkinsCrumb?: string;
}

export interface PostJobEnableRequest {
    name: string;
    jenkinsCrumb?: string;
}

export interface PostJobLastBuildStopRequest {
    name: string;
    jenkinsCrumb?: string;
}

export interface PostViewConfigRequest {
    name: string;
    body: string;
    jenkinsCrumb?: string;
}


/**
 * Retrieve computer details
 */
function getComputerRaw<T>(requestParameters: GetComputerRequest, requestConfig: runtime.TypedQueryConfig<T, ComputerSet> = {}): QueryConfig<T> {
    if (requestParameters.depth === null || requestParameters.depth === undefined) {
        throw new runtime.RequiredError('depth','Required parameter requestParameters.depth was null or undefined when calling getComputer.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.depth !== undefined) {
        queryParameters['depth'] = requestParameters.depth;
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/computer/api/json`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(ComputerSetFromJSON(body), text);
    }

    return config;
}

/**
* Retrieve computer details
*/
export function getComputer<T>(requestParameters: GetComputerRequest, requestConfig?: runtime.TypedQueryConfig<T, ComputerSet>): QueryConfig<T> {
    return getComputerRaw(requestParameters, requestConfig);
}

/**
 * Retrieve Jenkins details
 */
function getJenkinsRaw<T>( requestConfig: runtime.TypedQueryConfig<T, Hudson> = {}): QueryConfig<T> {
    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/api/json`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(HudsonFromJSON(body), text);
    }

    return config;
}

/**
* Retrieve Jenkins details
*/
export function getJenkins<T>( requestConfig?: runtime.TypedQueryConfig<T, Hudson>): QueryConfig<T> {
    return getJenkinsRaw( requestConfig);
}

/**
 * Retrieve job details
 */
function getJobRaw<T>(requestParameters: GetJobRequest, requestConfig: runtime.TypedQueryConfig<T, FreeStyleProject> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling getJob.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/job/{name}/api/json`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(FreeStyleProjectFromJSON(body), text);
    }

    return config;
}

/**
* Retrieve job details
*/
export function getJob<T>(requestParameters: GetJobRequest, requestConfig?: runtime.TypedQueryConfig<T, FreeStyleProject>): QueryConfig<T> {
    return getJobRaw(requestParameters, requestConfig);
}

/**
 * Retrieve job configuration
 */
function getJobConfigRaw<T>(requestParameters: GetJobConfigRequest, requestConfig: runtime.TypedQueryConfig<T, string> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling getJobConfig.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/job/{name}/config.xml`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        throw "OH NO";
    }

    return config;
}

/**
* Retrieve job configuration
*/
export function getJobConfig<T>(requestParameters: GetJobConfigRequest, requestConfig?: runtime.TypedQueryConfig<T, string>): QueryConfig<T> {
    return getJobConfigRaw(requestParameters, requestConfig);
}

/**
 * Retrieve job\'s last build details
 */
function getJobLastBuildRaw<T>(requestParameters: GetJobLastBuildRequest, requestConfig: runtime.TypedQueryConfig<T, FreeStyleBuild> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling getJobLastBuild.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/job/{name}/lastBuild/api/json`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(FreeStyleBuildFromJSON(body), text);
    }

    return config;
}

/**
* Retrieve job\'s last build details
*/
export function getJobLastBuild<T>(requestParameters: GetJobLastBuildRequest, requestConfig?: runtime.TypedQueryConfig<T, FreeStyleBuild>): QueryConfig<T> {
    return getJobLastBuildRaw(requestParameters, requestConfig);
}

/**
 * Retrieve job\'s build progressive text output
 */
function getJobProgressiveTextRaw<T>(requestParameters: GetJobProgressiveTextRequest, requestConfig: runtime.TypedQueryConfig<T, void> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling getJobProgressiveText.');
    }

    if (requestParameters.number === null || requestParameters.number === undefined) {
        throw new runtime.RequiredError('number','Required parameter requestParameters.number was null or undefined when calling getJobProgressiveText.');
    }

    if (requestParameters.start === null || requestParameters.start === undefined) {
        throw new runtime.RequiredError('start','Required parameter requestParameters.start was null or undefined when calling getJobProgressiveText.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.start !== undefined) {
        queryParameters['start'] = requestParameters.start;
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/job/{name}/{number}/logText/progressiveText`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))).replace(`{${"number"}}`, encodeURIComponent(String(requestParameters.number))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
    }

    return config;
}

/**
* Retrieve job\'s build progressive text output
*/
export function getJobProgressiveText<T>(requestParameters: GetJobProgressiveTextRequest, requestConfig?: runtime.TypedQueryConfig<T, void>): QueryConfig<T> {
    return getJobProgressiveTextRaw(requestParameters, requestConfig);
}

/**
 * Retrieve queue details
 */
function getQueueRaw<T>( requestConfig: runtime.TypedQueryConfig<T, Queue> = {}): QueryConfig<T> {
    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/queue/api/json`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(QueueFromJSON(body), text);
    }

    return config;
}

/**
* Retrieve queue details
*/
export function getQueue<T>( requestConfig?: runtime.TypedQueryConfig<T, Queue>): QueryConfig<T> {
    return getQueueRaw( requestConfig);
}

/**
 * Retrieve queued item details
 */
function getQueueItemRaw<T>(requestParameters: GetQueueItemRequest, requestConfig: runtime.TypedQueryConfig<T, Queue> = {}): QueryConfig<T> {
    if (requestParameters.number === null || requestParameters.number === undefined) {
        throw new runtime.RequiredError('number','Required parameter requestParameters.number was null or undefined when calling getQueueItem.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/queue/item/{number}/api/json`.replace(`{${"number"}}`, encodeURIComponent(String(requestParameters.number))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(QueueFromJSON(body), text);
    }

    return config;
}

/**
* Retrieve queued item details
*/
export function getQueueItem<T>(requestParameters: GetQueueItemRequest, requestConfig?: runtime.TypedQueryConfig<T, Queue>): QueryConfig<T> {
    return getQueueItemRaw(requestParameters, requestConfig);
}

/**
 * Retrieve view details
 */
function getViewRaw<T>(requestParameters: GetViewRequest, requestConfig: runtime.TypedQueryConfig<T, ListView> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling getView.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/view/{name}/api/json`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(ListViewFromJSON(body), text);
    }

    return config;
}

/**
* Retrieve view details
*/
export function getView<T>(requestParameters: GetViewRequest, requestConfig?: runtime.TypedQueryConfig<T, ListView>): QueryConfig<T> {
    return getViewRaw(requestParameters, requestConfig);
}

/**
 * Retrieve view configuration
 */
function getViewConfigRaw<T>(requestParameters: GetViewConfigRequest, requestConfig: runtime.TypedQueryConfig<T, string> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling getViewConfig.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/view/{name}/config.xml`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        throw "OH NO";
    }

    return config;
}

/**
* Retrieve view configuration
*/
export function getViewConfig<T>(requestParameters: GetViewConfigRequest, requestConfig?: runtime.TypedQueryConfig<T, string>): QueryConfig<T> {
    return getViewConfigRaw(requestParameters, requestConfig);
}

/**
 * Retrieve Jenkins headers
 */
function headJenkinsRaw<T>( requestConfig: runtime.TypedQueryConfig<T, void> = {}): QueryConfig<T> {
    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/api/json`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'HEAD',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
    }

    return config;
}

/**
* Retrieve Jenkins headers
*/
export function headJenkins<T>( requestConfig?: runtime.TypedQueryConfig<T, void>): QueryConfig<T> {
    return headJenkinsRaw( requestConfig);
}

/**
 * Create a new job using job configuration, or copied from an existing job
 */
function postCreateItemRaw<T>(requestParameters: PostCreateItemRequest, requestConfig: runtime.TypedQueryConfig<T, void> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling postCreateItem.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.name !== undefined) {
        queryParameters['name'] = requestParameters.name;
    }


    if (requestParameters.from !== undefined) {
        queryParameters['from'] = requestParameters.from;
    }


    if (requestParameters.mode !== undefined) {
        queryParameters['mode'] = requestParameters.mode;
    }

    const headerParameters : runtime.HttpHeaders = {};

    headerParameters['Content-Type'] = 'application/json';

    if (requestParameters.jenkinsCrumb !== undefined && requestParameters.jenkinsCrumb !== null) {
        headerParameters['Jenkins-Crumb'] = String(requestParameters.jenkinsCrumb);
    }

    if (requestParameters.contentType !== undefined && requestParameters.contentType !== null) {
        headerParameters['Content-Type'] = String(requestParameters.contentType);
    }


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/createItem`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'POST',
            headers: headerParameters,
        },
        body: queryParameters || requestParameters.body as any,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
    }

    return config;
}

/**
* Create a new job using job configuration, or copied from an existing job
*/
export function postCreateItem<T>(requestParameters: PostCreateItemRequest, requestConfig?: runtime.TypedQueryConfig<T, void>): QueryConfig<T> {
    return postCreateItemRaw(requestParameters, requestConfig);
}

/**
 * Create a new view using view configuration
 */
function postCreateViewRaw<T>(requestParameters: PostCreateViewRequest, requestConfig: runtime.TypedQueryConfig<T, void> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling postCreateView.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.name !== undefined) {
        queryParameters['name'] = requestParameters.name;
    }

    const headerParameters : runtime.HttpHeaders = {};

    headerParameters['Content-Type'] = 'application/json';

    if (requestParameters.jenkinsCrumb !== undefined && requestParameters.jenkinsCrumb !== null) {
        headerParameters['Jenkins-Crumb'] = String(requestParameters.jenkinsCrumb);
    }

    if (requestParameters.contentType !== undefined && requestParameters.contentType !== null) {
        headerParameters['Content-Type'] = String(requestParameters.contentType);
    }


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/createView`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'POST',
            headers: headerParameters,
        },
        body: queryParameters || requestParameters.body as any,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
    }

    return config;
}

/**
* Create a new view using view configuration
*/
export function postCreateView<T>(requestParameters: PostCreateViewRequest, requestConfig?: runtime.TypedQueryConfig<T, void>): QueryConfig<T> {
    return postCreateViewRaw(requestParameters, requestConfig);
}

/**
 * Build a job
 */
function postJobBuildRaw<T>(requestParameters: PostJobBuildRequest, requestConfig: runtime.TypedQueryConfig<T, void> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling postJobBuild.');
    }

    if (requestParameters.json === null || requestParameters.json === undefined) {
        throw new runtime.RequiredError('json','Required parameter requestParameters.json was null or undefined when calling postJobBuild.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.json !== undefined) {
        queryParameters['json'] = requestParameters.json;
    }


    if (requestParameters.token !== undefined) {
        queryParameters['token'] = requestParameters.token;
    }

    const headerParameters : runtime.HttpHeaders = {};

    if (requestParameters.jenkinsCrumb !== undefined && requestParameters.jenkinsCrumb !== null) {
        headerParameters['Jenkins-Crumb'] = String(requestParameters.jenkinsCrumb);
    }


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/job/{name}/build`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'POST',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
    }

    return config;
}

/**
* Build a job
*/
export function postJobBuild<T>(requestParameters: PostJobBuildRequest, requestConfig?: runtime.TypedQueryConfig<T, void>): QueryConfig<T> {
    return postJobBuildRaw(requestParameters, requestConfig);
}

/**
 * Update job configuration
 */
function postJobConfigRaw<T>(requestParameters: PostJobConfigRequest, requestConfig: runtime.TypedQueryConfig<T, void> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling postJobConfig.');
    }

    if (requestParameters.body === null || requestParameters.body === undefined) {
        throw new runtime.RequiredError('body','Required parameter requestParameters.body was null or undefined when calling postJobConfig.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};

    headerParameters['Content-Type'] = 'application/json';

    if (requestParameters.jenkinsCrumb !== undefined && requestParameters.jenkinsCrumb !== null) {
        headerParameters['Jenkins-Crumb'] = String(requestParameters.jenkinsCrumb);
    }


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/job/{name}/config.xml`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'POST',
            headers: headerParameters,
        },
        body: queryParameters || requestParameters.body as any,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
    }

    return config;
}

/**
* Update job configuration
*/
export function postJobConfig<T>(requestParameters: PostJobConfigRequest, requestConfig?: runtime.TypedQueryConfig<T, void>): QueryConfig<T> {
    return postJobConfigRaw(requestParameters, requestConfig);
}

/**
 * Delete a job
 */
function postJobDeleteRaw<T>(requestParameters: PostJobDeleteRequest, requestConfig: runtime.TypedQueryConfig<T, void> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling postJobDelete.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};

    if (requestParameters.jenkinsCrumb !== undefined && requestParameters.jenkinsCrumb !== null) {
        headerParameters['Jenkins-Crumb'] = String(requestParameters.jenkinsCrumb);
    }


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/job/{name}/doDelete`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'POST',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
    }

    return config;
}

/**
* Delete a job
*/
export function postJobDelete<T>(requestParameters: PostJobDeleteRequest, requestConfig?: runtime.TypedQueryConfig<T, void>): QueryConfig<T> {
    return postJobDeleteRaw(requestParameters, requestConfig);
}

/**
 * Disable a job
 */
function postJobDisableRaw<T>(requestParameters: PostJobDisableRequest, requestConfig: runtime.TypedQueryConfig<T, void> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling postJobDisable.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};

    if (requestParameters.jenkinsCrumb !== undefined && requestParameters.jenkinsCrumb !== null) {
        headerParameters['Jenkins-Crumb'] = String(requestParameters.jenkinsCrumb);
    }


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/job/{name}/disable`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'POST',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
    }

    return config;
}

/**
* Disable a job
*/
export function postJobDisable<T>(requestParameters: PostJobDisableRequest, requestConfig?: runtime.TypedQueryConfig<T, void>): QueryConfig<T> {
    return postJobDisableRaw(requestParameters, requestConfig);
}

/**
 * Enable a job
 */
function postJobEnableRaw<T>(requestParameters: PostJobEnableRequest, requestConfig: runtime.TypedQueryConfig<T, void> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling postJobEnable.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};

    if (requestParameters.jenkinsCrumb !== undefined && requestParameters.jenkinsCrumb !== null) {
        headerParameters['Jenkins-Crumb'] = String(requestParameters.jenkinsCrumb);
    }


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/job/{name}/enable`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'POST',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
    }

    return config;
}

/**
* Enable a job
*/
export function postJobEnable<T>(requestParameters: PostJobEnableRequest, requestConfig?: runtime.TypedQueryConfig<T, void>): QueryConfig<T> {
    return postJobEnableRaw(requestParameters, requestConfig);
}

/**
 * Stop a job
 */
function postJobLastBuildStopRaw<T>(requestParameters: PostJobLastBuildStopRequest, requestConfig: runtime.TypedQueryConfig<T, void> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling postJobLastBuildStop.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};

    if (requestParameters.jenkinsCrumb !== undefined && requestParameters.jenkinsCrumb !== null) {
        headerParameters['Jenkins-Crumb'] = String(requestParameters.jenkinsCrumb);
    }


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/job/{name}/lastBuild/stop`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'POST',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
    }

    return config;
}

/**
* Stop a job
*/
export function postJobLastBuildStop<T>(requestParameters: PostJobLastBuildStopRequest, requestConfig?: runtime.TypedQueryConfig<T, void>): QueryConfig<T> {
    return postJobLastBuildStopRaw(requestParameters, requestConfig);
}

/**
 * Update view configuration
 */
function postViewConfigRaw<T>(requestParameters: PostViewConfigRequest, requestConfig: runtime.TypedQueryConfig<T, void> = {}): QueryConfig<T> {
    if (requestParameters.name === null || requestParameters.name === undefined) {
        throw new runtime.RequiredError('name','Required parameter requestParameters.name was null or undefined when calling postViewConfig.');
    }

    if (requestParameters.body === null || requestParameters.body === undefined) {
        throw new runtime.RequiredError('body','Required parameter requestParameters.body was null or undefined when calling postViewConfig.');
    }

    let queryParameters = null;


    const headerParameters : runtime.HttpHeaders = {};

    headerParameters['Content-Type'] = 'application/json';

    if (requestParameters.jenkinsCrumb !== undefined && requestParameters.jenkinsCrumb !== null) {
        headerParameters['Jenkins-Crumb'] = String(requestParameters.jenkinsCrumb);
    }


    const { meta = {} } = requestConfig;

    meta.authType = ['basic'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/view/{name}/config.xml`.replace(`{${"name"}}`, encodeURIComponent(String(requestParameters.name))),
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'POST',
            headers: headerParameters,
        },
        body: queryParameters || requestParameters.body as any,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
    }

    return config;
}

/**
* Update view configuration
*/
export function postViewConfig<T>(requestParameters: PostViewConfigRequest, requestConfig?: runtime.TypedQueryConfig<T, void>): QueryConfig<T> {
    return postViewConfigRaw(requestParameters, requestConfig);
}

