import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import * as models from '../models/all';
import { Configuration} from '../configuration'

import { AllView } from '../models/AllView';
import { BranchImpl } from '../models/BranchImpl';
import { BranchImpllinks } from '../models/BranchImpllinks';
import { BranchImplpermissions } from '../models/BranchImplpermissions';
import { CauseAction } from '../models/CauseAction';
import { CauseUserIdCause } from '../models/CauseUserIdCause';
import { ClassesByClass } from '../models/ClassesByClass';
import { ClockDifference } from '../models/ClockDifference';
import { ComputerSet } from '../models/ComputerSet';
import { DefaultCrumbIssuer } from '../models/DefaultCrumbIssuer';
import { DiskSpaceMonitorDescriptorDiskSpace } from '../models/DiskSpaceMonitorDescriptorDiskSpace';
import { EmptyChangeLogSet } from '../models/EmptyChangeLogSet';
import { ExtensionClassContainerImpl1 } from '../models/ExtensionClassContainerImpl1';
import { ExtensionClassContainerImpl1links } from '../models/ExtensionClassContainerImpl1links';
import { ExtensionClassContainerImpl1map } from '../models/ExtensionClassContainerImpl1map';
import { ExtensionClassImpl } from '../models/ExtensionClassImpl';
import { ExtensionClassImpllinks } from '../models/ExtensionClassImpllinks';
import { FavoriteImpl } from '../models/FavoriteImpl';
import { FavoriteImpllinks } from '../models/FavoriteImpllinks';
import { FreeStyleBuild } from '../models/FreeStyleBuild';
import { FreeStyleProject } from '../models/FreeStyleProject';
import { FreeStyleProjectactions } from '../models/FreeStyleProjectactions';
import { FreeStyleProjecthealthReport } from '../models/FreeStyleProjecthealthReport';
import { GenericResource } from '../models/GenericResource';
import { GithubContent } from '../models/GithubContent';
import { GithubFile } from '../models/GithubFile';
import { GithubOrganization } from '../models/GithubOrganization';
import { GithubOrganizationlinks } from '../models/GithubOrganizationlinks';
import { GithubRepositories } from '../models/GithubRepositories';
import { GithubRepositorieslinks } from '../models/GithubRepositorieslinks';
import { GithubRepository } from '../models/GithubRepository';
import { GithubRepositorylinks } from '../models/GithubRepositorylinks';
import { GithubRepositorypermissions } from '../models/GithubRepositorypermissions';
import { GithubRespositoryContainer } from '../models/GithubRespositoryContainer';
import { GithubRespositoryContainerlinks } from '../models/GithubRespositoryContainerlinks';
import { GithubScm } from '../models/GithubScm';
import { GithubScmlinks } from '../models/GithubScmlinks';
import { Hudson } from '../models/Hudson';
import { HudsonMasterComputer } from '../models/HudsonMasterComputer';
import { HudsonMasterComputerexecutors } from '../models/HudsonMasterComputerexecutors';
import { HudsonMasterComputermonitorData } from '../models/HudsonMasterComputermonitorData';
import { HudsonassignedLabels } from '../models/HudsonassignedLabels';
import { InputStepImpl } from '../models/InputStepImpl';
import { InputStepImpllinks } from '../models/InputStepImpllinks';
import { Label1 } from '../models/Label1';
import { Link } from '../models/Link';
import { ListView } from '../models/ListView';
import { MultibranchPipeline } from '../models/MultibranchPipeline';
import { NullSCM } from '../models/NullSCM';
import { Organisation } from '../models/Organisation';
import { Pipeline } from '../models/Pipeline';
import { PipelineActivity } from '../models/PipelineActivity';
import { PipelineActivityartifacts } from '../models/PipelineActivityartifacts';
import { PipelineBranchesitem } from '../models/PipelineBranchesitem';
import { PipelineBranchesitemlatestRun } from '../models/PipelineBranchesitemlatestRun';
import { PipelineBranchesitempullRequest } from '../models/PipelineBranchesitempullRequest';
import { PipelineBranchesitempullRequestlinks } from '../models/PipelineBranchesitempullRequestlinks';
import { PipelineFolderImpl } from '../models/PipelineFolderImpl';
import { PipelineImpl } from '../models/PipelineImpl';
import { PipelineImpllinks } from '../models/PipelineImpllinks';
import { PipelineRun } from '../models/PipelineRun';
import { PipelineRunImpl } from '../models/PipelineRunImpl';
import { PipelineRunImpllinks } from '../models/PipelineRunImpllinks';
import { PipelineRunNode } from '../models/PipelineRunNode';
import { PipelineRunNodeedges } from '../models/PipelineRunNodeedges';
import { PipelineRunartifacts } from '../models/PipelineRunartifacts';
import { PipelineStepImpl } from '../models/PipelineStepImpl';
import { PipelineStepImpllinks } from '../models/PipelineStepImpllinks';
import { PipelinelatestRun } from '../models/PipelinelatestRun';
import { PipelinelatestRunartifacts } from '../models/PipelinelatestRunartifacts';
import { Queue } from '../models/Queue';
import { QueueBlockedItem } from '../models/QueueBlockedItem';
import { QueueItemImpl } from '../models/QueueItemImpl';
import { QueueLeftItem } from '../models/QueueLeftItem';
import { ResponseTimeMonitorData } from '../models/ResponseTimeMonitorData';
import { StringParameterDefinition } from '../models/StringParameterDefinition';
import { StringParameterValue } from '../models/StringParameterValue';
import { SwapSpaceMonitorMemoryUsage2 } from '../models/SwapSpaceMonitorMemoryUsage2';
import { UnlabeledLoadStatistics } from '../models/UnlabeledLoadStatistics';
import { User } from '../models/User';

import { ObservableBaseApi } from "./ObservableAPI";
import { BaseApiRequestFactory, BaseApiResponseProcessor} from "../apis/BaseApi";

export interface BaseApiGetCrumbRequest {
}

export class ObjectBaseApi {
    private api: ObservableBaseApi

    public constructor(configuration: Configuration, requestFactory?: BaseApiRequestFactory, responseProcessor?: BaseApiResponseProcessor) {
        this.api = new ObservableBaseApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Retrieve CSRF protection token
     * @param param the request object
     */
    public getCrumb(param: BaseApiGetCrumbRequest = {}, options?: Configuration): Promise<DefaultCrumbIssuer> {
        return this.api.getCrumb( options).toPromise();
    }

}

import { ObservableBlueOceanApi } from "./ObservableAPI";
import { BlueOceanApiRequestFactory, BlueOceanApiResponseProcessor} from "../apis/BlueOceanApi";

export interface BlueOceanApiDeletePipelineQueueItemRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApideletePipelineQueueItem
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApideletePipelineQueueItem
     */
    pipeline: string
    /**
     * Name of the queue item
     * @type string
     * @memberof BlueOceanApideletePipelineQueueItem
     */
    queue: string
}

export interface BlueOceanApiGetAuthenticatedUserRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetAuthenticatedUser
     */
    organization: string
}

export interface BlueOceanApiGetClassesRequest {
    /**
     * Name of the class
     * @type string
     * @memberof BlueOceanApigetClasses
     */
    _class: string
}

export interface BlueOceanApiGetJsonWebKeyRequest {
    /**
     * Key ID received as part of JWT header field kid
     * @type number
     * @memberof BlueOceanApigetJsonWebKey
     */
    key: number
}

export interface BlueOceanApiGetJsonWebTokenRequest {
    /**
     * Token expiry time in minutes, default: 30 minutes
     * @type number
     * @memberof BlueOceanApigetJsonWebToken
     */
    expiryTimeInMins?: number
    /**
     * Maximum token expiry time in minutes, default: 480 minutes
     * @type number
     * @memberof BlueOceanApigetJsonWebToken
     */
    maxExpiryTimeInMins?: number
}

export interface BlueOceanApiGetOrganisationRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetOrganisation
     */
    organization: string
}

export interface BlueOceanApiGetOrganisationsRequest {
}

export interface BlueOceanApiGetPipelineRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipeline
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipeline
     */
    pipeline: string
}

export interface BlueOceanApiGetPipelineActivitiesRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineActivities
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineActivities
     */
    pipeline: string
}

export interface BlueOceanApiGetPipelineBranchRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineBranch
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineBranch
     */
    pipeline: string
    /**
     * Name of the branch
     * @type string
     * @memberof BlueOceanApigetPipelineBranch
     */
    branch: string
}

export interface BlueOceanApiGetPipelineBranchRunRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineBranchRun
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineBranchRun
     */
    pipeline: string
    /**
     * Name of the branch
     * @type string
     * @memberof BlueOceanApigetPipelineBranchRun
     */
    branch: string
    /**
     * Name of the run
     * @type string
     * @memberof BlueOceanApigetPipelineBranchRun
     */
    run: string
}

export interface BlueOceanApiGetPipelineBranchesRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineBranches
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineBranches
     */
    pipeline: string
}

export interface BlueOceanApiGetPipelineFolderRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineFolder
     */
    organization: string
    /**
     * Name of the folder
     * @type string
     * @memberof BlueOceanApigetPipelineFolder
     */
    folder: string
}

export interface BlueOceanApiGetPipelineFolderPipelineRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineFolderPipeline
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineFolderPipeline
     */
    pipeline: string
    /**
     * Name of the folder
     * @type string
     * @memberof BlueOceanApigetPipelineFolderPipeline
     */
    folder: string
}

export interface BlueOceanApiGetPipelineQueueRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineQueue
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineQueue
     */
    pipeline: string
}

export interface BlueOceanApiGetPipelineRunRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineRun
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineRun
     */
    pipeline: string
    /**
     * Name of the run
     * @type string
     * @memberof BlueOceanApigetPipelineRun
     */
    run: string
}

export interface BlueOceanApiGetPipelineRunLogRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineRunLog
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineRunLog
     */
    pipeline: string
    /**
     * Name of the run
     * @type string
     * @memberof BlueOceanApigetPipelineRunLog
     */
    run: string
    /**
     * Start position of the log
     * @type number
     * @memberof BlueOceanApigetPipelineRunLog
     */
    start?: number
    /**
     * Set to true in order to download the file, otherwise it&#39;s passed as a response body
     * @type boolean
     * @memberof BlueOceanApigetPipelineRunLog
     */
    download?: boolean
}

export interface BlueOceanApiGetPipelineRunNodeRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineRunNode
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineRunNode
     */
    pipeline: string
    /**
     * Name of the run
     * @type string
     * @memberof BlueOceanApigetPipelineRunNode
     */
    run: string
    /**
     * Name of the node
     * @type string
     * @memberof BlueOceanApigetPipelineRunNode
     */
    node: string
}

export interface BlueOceanApiGetPipelineRunNodeStepRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeStep
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeStep
     */
    pipeline: string
    /**
     * Name of the run
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeStep
     */
    run: string
    /**
     * Name of the node
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeStep
     */
    node: string
    /**
     * Name of the step
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeStep
     */
    step: string
}

export interface BlueOceanApiGetPipelineRunNodeStepLogRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeStepLog
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeStepLog
     */
    pipeline: string
    /**
     * Name of the run
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeStepLog
     */
    run: string
    /**
     * Name of the node
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeStepLog
     */
    node: string
    /**
     * Name of the step
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeStepLog
     */
    step: string
}

export interface BlueOceanApiGetPipelineRunNodeStepsRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeSteps
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeSteps
     */
    pipeline: string
    /**
     * Name of the run
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeSteps
     */
    run: string
    /**
     * Name of the node
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodeSteps
     */
    node: string
}

export interface BlueOceanApiGetPipelineRunNodesRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodes
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodes
     */
    pipeline: string
    /**
     * Name of the run
     * @type string
     * @memberof BlueOceanApigetPipelineRunNodes
     */
    run: string
}

export interface BlueOceanApiGetPipelineRunsRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelineRuns
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApigetPipelineRuns
     */
    pipeline: string
}

export interface BlueOceanApiGetPipelinesRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetPipelines
     */
    organization: string
}

export interface BlueOceanApiGetSCMRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetSCM
     */
    organization: string
    /**
     * Name of SCM
     * @type string
     * @memberof BlueOceanApigetSCM
     */
    scm: string
}

export interface BlueOceanApiGetSCMOrganisationRepositoriesRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetSCMOrganisationRepositories
     */
    organization: string
    /**
     * Name of SCM
     * @type string
     * @memberof BlueOceanApigetSCMOrganisationRepositories
     */
    scm: string
    /**
     * Name of the SCM organization
     * @type string
     * @memberof BlueOceanApigetSCMOrganisationRepositories
     */
    scmOrganisation: string
    /**
     * Credential ID
     * @type string
     * @memberof BlueOceanApigetSCMOrganisationRepositories
     */
    credentialId?: string
    /**
     * Number of items in a page
     * @type number
     * @memberof BlueOceanApigetSCMOrganisationRepositories
     */
    pageSize?: number
    /**
     * Page number
     * @type number
     * @memberof BlueOceanApigetSCMOrganisationRepositories
     */
    pageNumber?: number
}

export interface BlueOceanApiGetSCMOrganisationRepositoryRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetSCMOrganisationRepository
     */
    organization: string
    /**
     * Name of SCM
     * @type string
     * @memberof BlueOceanApigetSCMOrganisationRepository
     */
    scm: string
    /**
     * Name of the SCM organization
     * @type string
     * @memberof BlueOceanApigetSCMOrganisationRepository
     */
    scmOrganisation: string
    /**
     * Name of the SCM repository
     * @type string
     * @memberof BlueOceanApigetSCMOrganisationRepository
     */
    repository: string
    /**
     * Credential ID
     * @type string
     * @memberof BlueOceanApigetSCMOrganisationRepository
     */
    credentialId?: string
}

export interface BlueOceanApiGetSCMOrganisationsRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetSCMOrganisations
     */
    organization: string
    /**
     * Name of SCM
     * @type string
     * @memberof BlueOceanApigetSCMOrganisations
     */
    scm: string
    /**
     * Credential ID
     * @type string
     * @memberof BlueOceanApigetSCMOrganisations
     */
    credentialId?: string
}

export interface BlueOceanApiGetUserRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetUser
     */
    organization: string
    /**
     * Name of the user
     * @type string
     * @memberof BlueOceanApigetUser
     */
    user: string
}

export interface BlueOceanApiGetUserFavoritesRequest {
    /**
     * Name of the user
     * @type string
     * @memberof BlueOceanApigetUserFavorites
     */
    user: string
}

export interface BlueOceanApiGetUsersRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApigetUsers
     */
    organization: string
}

export interface BlueOceanApiPostPipelineRunRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApipostPipelineRun
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApipostPipelineRun
     */
    pipeline: string
    /**
     * Name of the run
     * @type string
     * @memberof BlueOceanApipostPipelineRun
     */
    run: string
}

export interface BlueOceanApiPostPipelineRunsRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApipostPipelineRuns
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApipostPipelineRuns
     */
    pipeline: string
}

export interface BlueOceanApiPutPipelineFavoriteRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApiputPipelineFavorite
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApiputPipelineFavorite
     */
    pipeline: string
    /**
     * Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite
     * @type boolean
     * @memberof BlueOceanApiputPipelineFavorite
     */
    body: boolean
}

export interface BlueOceanApiPutPipelineRunRequest {
    /**
     * Name of the organization
     * @type string
     * @memberof BlueOceanApiputPipelineRun
     */
    organization: string
    /**
     * Name of the pipeline
     * @type string
     * @memberof BlueOceanApiputPipelineRun
     */
    pipeline: string
    /**
     * Name of the run
     * @type string
     * @memberof BlueOceanApiputPipelineRun
     */
    run: string
    /**
     * Set to true to make blocking stop, default: false
     * @type string
     * @memberof BlueOceanApiputPipelineRun
     */
    blocking?: string
    /**
     * Timeout in seconds, default: 10 seconds
     * @type number
     * @memberof BlueOceanApiputPipelineRun
     */
    timeOutInSecs?: number
}

export interface BlueOceanApiSearchRequest {
    /**
     * Query string
     * @type string
     * @memberof BlueOceanApisearch
     */
    q: string
}

export interface BlueOceanApiSearchClassesRequest {
    /**
     * Query string containing an array of class names
     * @type string
     * @memberof BlueOceanApisearchClasses
     */
    q: string
}

export class ObjectBlueOceanApi {
    private api: ObservableBlueOceanApi

    public constructor(configuration: Configuration, requestFactory?: BlueOceanApiRequestFactory, responseProcessor?: BlueOceanApiResponseProcessor) {
        this.api = new ObservableBlueOceanApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Delete queue item from an organization pipeline queue
     * @param param the request object
     */
    public deletePipelineQueueItem(param: BlueOceanApiDeletePipelineQueueItemRequest, options?: Configuration): Promise<void> {
        return this.api.deletePipelineQueueItem(param.organization, param.pipeline, param.queue,  options).toPromise();
    }

    /**
     * Retrieve authenticated user details for an organization
     * @param param the request object
     */
    public getAuthenticatedUser(param: BlueOceanApiGetAuthenticatedUserRequest, options?: Configuration): Promise<User> {
        return this.api.getAuthenticatedUser(param.organization,  options).toPromise();
    }

    /**
     * Get a list of class names supported by a given class
     * @param param the request object
     */
    public getClasses(param: BlueOceanApiGetClassesRequest, options?: Configuration): Promise<string> {
        return this.api.getClasses(param._class,  options).toPromise();
    }

    /**
     * Retrieve JSON Web Key
     * @param param the request object
     */
    public getJsonWebKey(param: BlueOceanApiGetJsonWebKeyRequest, options?: Configuration): Promise<string> {
        return this.api.getJsonWebKey(param.key,  options).toPromise();
    }

    /**
     * Retrieve JSON Web Token
     * @param param the request object
     */
    public getJsonWebToken(param: BlueOceanApiGetJsonWebTokenRequest = {}, options?: Configuration): Promise<string> {
        return this.api.getJsonWebToken(param.expiryTimeInMins, param.maxExpiryTimeInMins,  options).toPromise();
    }

    /**
     * Retrieve organization details
     * @param param the request object
     */
    public getOrganisation(param: BlueOceanApiGetOrganisationRequest, options?: Configuration): Promise<Organisation> {
        return this.api.getOrganisation(param.organization,  options).toPromise();
    }

    /**
     * Retrieve all organizations details
     * @param param the request object
     */
    public getOrganisations(param: BlueOceanApiGetOrganisationsRequest = {}, options?: Configuration): Promise<Array<Organisation>> {
        return this.api.getOrganisations( options).toPromise();
    }

    /**
     * Retrieve pipeline details for an organization
     * @param param the request object
     */
    public getPipeline(param: BlueOceanApiGetPipelineRequest, options?: Configuration): Promise<Pipeline> {
        return this.api.getPipeline(param.organization, param.pipeline,  options).toPromise();
    }

    /**
     * Retrieve all activities details for an organization pipeline
     * @param param the request object
     */
    public getPipelineActivities(param: BlueOceanApiGetPipelineActivitiesRequest, options?: Configuration): Promise<Array<PipelineActivity>> {
        return this.api.getPipelineActivities(param.organization, param.pipeline,  options).toPromise();
    }

    /**
     * Retrieve branch details for an organization pipeline
     * @param param the request object
     */
    public getPipelineBranch(param: BlueOceanApiGetPipelineBranchRequest, options?: Configuration): Promise<BranchImpl> {
        return this.api.getPipelineBranch(param.organization, param.pipeline, param.branch,  options).toPromise();
    }

    /**
     * Retrieve branch run details for an organization pipeline
     * @param param the request object
     */
    public getPipelineBranchRun(param: BlueOceanApiGetPipelineBranchRunRequest, options?: Configuration): Promise<PipelineRun> {
        return this.api.getPipelineBranchRun(param.organization, param.pipeline, param.branch, param.run,  options).toPromise();
    }

    /**
     * Retrieve all branches details for an organization pipeline
     * @param param the request object
     */
    public getPipelineBranches(param: BlueOceanApiGetPipelineBranchesRequest, options?: Configuration): Promise<MultibranchPipeline> {
        return this.api.getPipelineBranches(param.organization, param.pipeline,  options).toPromise();
    }

    /**
     * Retrieve pipeline folder for an organization
     * @param param the request object
     */
    public getPipelineFolder(param: BlueOceanApiGetPipelineFolderRequest, options?: Configuration): Promise<PipelineFolderImpl> {
        return this.api.getPipelineFolder(param.organization, param.folder,  options).toPromise();
    }

    /**
     * Retrieve pipeline details for an organization folder
     * @param param the request object
     */
    public getPipelineFolderPipeline(param: BlueOceanApiGetPipelineFolderPipelineRequest, options?: Configuration): Promise<PipelineImpl> {
        return this.api.getPipelineFolderPipeline(param.organization, param.pipeline, param.folder,  options).toPromise();
    }

    /**
     * Retrieve queue details for an organization pipeline
     * @param param the request object
     */
    public getPipelineQueue(param: BlueOceanApiGetPipelineQueueRequest, options?: Configuration): Promise<Array<QueueItemImpl>> {
        return this.api.getPipelineQueue(param.organization, param.pipeline,  options).toPromise();
    }

    /**
     * Retrieve run details for an organization pipeline
     * @param param the request object
     */
    public getPipelineRun(param: BlueOceanApiGetPipelineRunRequest, options?: Configuration): Promise<PipelineRun> {
        return this.api.getPipelineRun(param.organization, param.pipeline, param.run,  options).toPromise();
    }

    /**
     * Get log for a pipeline run
     * @param param the request object
     */
    public getPipelineRunLog(param: BlueOceanApiGetPipelineRunLogRequest, options?: Configuration): Promise<string> {
        return this.api.getPipelineRunLog(param.organization, param.pipeline, param.run, param.start, param.download,  options).toPromise();
    }

    /**
     * Retrieve run node details for an organization pipeline
     * @param param the request object
     */
    public getPipelineRunNode(param: BlueOceanApiGetPipelineRunNodeRequest, options?: Configuration): Promise<PipelineRunNode> {
        return this.api.getPipelineRunNode(param.organization, param.pipeline, param.run, param.node,  options).toPromise();
    }

    /**
     * Retrieve run node details for an organization pipeline
     * @param param the request object
     */
    public getPipelineRunNodeStep(param: BlueOceanApiGetPipelineRunNodeStepRequest, options?: Configuration): Promise<PipelineStepImpl> {
        return this.api.getPipelineRunNodeStep(param.organization, param.pipeline, param.run, param.node, param.step,  options).toPromise();
    }

    /**
     * Get log for a pipeline run node step
     * @param param the request object
     */
    public getPipelineRunNodeStepLog(param: BlueOceanApiGetPipelineRunNodeStepLogRequest, options?: Configuration): Promise<string> {
        return this.api.getPipelineRunNodeStepLog(param.organization, param.pipeline, param.run, param.node, param.step,  options).toPromise();
    }

    /**
     * Retrieve run node steps details for an organization pipeline
     * @param param the request object
     */
    public getPipelineRunNodeSteps(param: BlueOceanApiGetPipelineRunNodeStepsRequest, options?: Configuration): Promise<Array<PipelineStepImpl>> {
        return this.api.getPipelineRunNodeSteps(param.organization, param.pipeline, param.run, param.node,  options).toPromise();
    }

    /**
     * Retrieve run nodes details for an organization pipeline
     * @param param the request object
     */
    public getPipelineRunNodes(param: BlueOceanApiGetPipelineRunNodesRequest, options?: Configuration): Promise<Array<PipelineRunNode>> {
        return this.api.getPipelineRunNodes(param.organization, param.pipeline, param.run,  options).toPromise();
    }

    /**
     * Retrieve all runs details for an organization pipeline
     * @param param the request object
     */
    public getPipelineRuns(param: BlueOceanApiGetPipelineRunsRequest, options?: Configuration): Promise<Array<PipelineRun>> {
        return this.api.getPipelineRuns(param.organization, param.pipeline,  options).toPromise();
    }

    /**
     * Retrieve all pipelines details for an organization
     * @param param the request object
     */
    public getPipelines(param: BlueOceanApiGetPipelinesRequest, options?: Configuration): Promise<Array<Pipeline>> {
        return this.api.getPipelines(param.organization,  options).toPromise();
    }

    /**
     * Retrieve SCM details for an organization
     * @param param the request object
     */
    public getSCM(param: BlueOceanApiGetSCMRequest, options?: Configuration): Promise<GithubScm> {
        return this.api.getSCM(param.organization, param.scm,  options).toPromise();
    }

    /**
     * Retrieve SCM organization repositories details for an organization
     * @param param the request object
     */
    public getSCMOrganisationRepositories(param: BlueOceanApiGetSCMOrganisationRepositoriesRequest, options?: Configuration): Promise<Array<GithubOrganization>> {
        return this.api.getSCMOrganisationRepositories(param.organization, param.scm, param.scmOrganisation, param.credentialId, param.pageSize, param.pageNumber,  options).toPromise();
    }

    /**
     * Retrieve SCM organization repository details for an organization
     * @param param the request object
     */
    public getSCMOrganisationRepository(param: BlueOceanApiGetSCMOrganisationRepositoryRequest, options?: Configuration): Promise<Array<GithubOrganization>> {
        return this.api.getSCMOrganisationRepository(param.organization, param.scm, param.scmOrganisation, param.repository, param.credentialId,  options).toPromise();
    }

    /**
     * Retrieve SCM organizations details for an organization
     * @param param the request object
     */
    public getSCMOrganisations(param: BlueOceanApiGetSCMOrganisationsRequest, options?: Configuration): Promise<Array<GithubOrganization>> {
        return this.api.getSCMOrganisations(param.organization, param.scm, param.credentialId,  options).toPromise();
    }

    /**
     * Retrieve user details for an organization
     * @param param the request object
     */
    public getUser(param: BlueOceanApiGetUserRequest, options?: Configuration): Promise<User> {
        return this.api.getUser(param.organization, param.user,  options).toPromise();
    }

    /**
     * Retrieve user favorites details for an organization
     * @param param the request object
     */
    public getUserFavorites(param: BlueOceanApiGetUserFavoritesRequest, options?: Configuration): Promise<Array<FavoriteImpl>> {
        return this.api.getUserFavorites(param.user,  options).toPromise();
    }

    /**
     * Retrieve users details for an organization
     * @param param the request object
     */
    public getUsers(param: BlueOceanApiGetUsersRequest, options?: Configuration): Promise<User> {
        return this.api.getUsers(param.organization,  options).toPromise();
    }

    /**
     * Replay an organization pipeline run
     * @param param the request object
     */
    public postPipelineRun(param: BlueOceanApiPostPipelineRunRequest, options?: Configuration): Promise<QueueItemImpl> {
        return this.api.postPipelineRun(param.organization, param.pipeline, param.run,  options).toPromise();
    }

    /**
     * Start a build for an organization pipeline
     * @param param the request object
     */
    public postPipelineRuns(param: BlueOceanApiPostPipelineRunsRequest, options?: Configuration): Promise<QueueItemImpl> {
        return this.api.postPipelineRuns(param.organization, param.pipeline,  options).toPromise();
    }

    /**
     * Favorite/unfavorite a pipeline
     * @param param the request object
     */
    public putPipelineFavorite(param: BlueOceanApiPutPipelineFavoriteRequest, options?: Configuration): Promise<FavoriteImpl> {
        return this.api.putPipelineFavorite(param.organization, param.pipeline, param.body,  options).toPromise();
    }

    /**
     * Stop a build of an organization pipeline
     * @param param the request object
     */
    public putPipelineRun(param: BlueOceanApiPutPipelineRunRequest, options?: Configuration): Promise<PipelineRun> {
        return this.api.putPipelineRun(param.organization, param.pipeline, param.run, param.blocking, param.timeOutInSecs,  options).toPromise();
    }

    /**
     * Search for any resource details
     * @param param the request object
     */
    public search(param: BlueOceanApiSearchRequest, options?: Configuration): Promise<string> {
        return this.api.search(param.q,  options).toPromise();
    }

    /**
     * Get classes details
     * @param param the request object
     */
    public searchClasses(param: BlueOceanApiSearchClassesRequest, options?: Configuration): Promise<string> {
        return this.api.searchClasses(param.q,  options).toPromise();
    }

}

import { ObservableRemoteAccessApi } from "./ObservableAPI";
import { RemoteAccessApiRequestFactory, RemoteAccessApiResponseProcessor} from "../apis/RemoteAccessApi";

export interface RemoteAccessApiGetComputerRequest {
    /**
     * Recursion depth in response model
     * @type number
     * @memberof RemoteAccessApigetComputer
     */
    depth: number
}

export interface RemoteAccessApiGetJenkinsRequest {
}

export interface RemoteAccessApiGetJobRequest {
    /**
     * Name of the job
     * @type string
     * @memberof RemoteAccessApigetJob
     */
    name: string
}

export interface RemoteAccessApiGetJobConfigRequest {
    /**
     * Name of the job
     * @type string
     * @memberof RemoteAccessApigetJobConfig
     */
    name: string
}

export interface RemoteAccessApiGetJobLastBuildRequest {
    /**
     * Name of the job
     * @type string
     * @memberof RemoteAccessApigetJobLastBuild
     */
    name: string
}

export interface RemoteAccessApiGetJobProgressiveTextRequest {
    /**
     * Name of the job
     * @type string
     * @memberof RemoteAccessApigetJobProgressiveText
     */
    name: string
    /**
     * Build number
     * @type string
     * @memberof RemoteAccessApigetJobProgressiveText
     */
    number: string
    /**
     * Starting point of progressive text output
     * @type string
     * @memberof RemoteAccessApigetJobProgressiveText
     */
    start: string
}

export interface RemoteAccessApiGetQueueRequest {
}

export interface RemoteAccessApiGetQueueItemRequest {
    /**
     * Queue number
     * @type string
     * @memberof RemoteAccessApigetQueueItem
     */
    number: string
}

export interface RemoteAccessApiGetViewRequest {
    /**
     * Name of the view
     * @type string
     * @memberof RemoteAccessApigetView
     */
    name: string
}

export interface RemoteAccessApiGetViewConfigRequest {
    /**
     * Name of the view
     * @type string
     * @memberof RemoteAccessApigetViewConfig
     */
    name: string
}

export interface RemoteAccessApiHeadJenkinsRequest {
}

export interface RemoteAccessApiPostCreateItemRequest {
    /**
     * Name of the new job
     * @type string
     * @memberof RemoteAccessApipostCreateItem
     */
    name: string
    /**
     * Existing job to copy from
     * @type string
     * @memberof RemoteAccessApipostCreateItem
     */
    _from?: string
    /**
     * Set to &#39;copy&#39; for copying an existing job
     * @type string
     * @memberof RemoteAccessApipostCreateItem
     */
    mode?: string
    /**
     * CSRF protection token
     * @type string
     * @memberof RemoteAccessApipostCreateItem
     */
    jenkinsCrumb?: string
    /**
     * Content type header application/xml
     * @type string
     * @memberof RemoteAccessApipostCreateItem
     */
    contentType?: string
    /**
     * Job configuration in config.xml format
     * @type string
     * @memberof RemoteAccessApipostCreateItem
     */
    body?: string
}

export interface RemoteAccessApiPostCreateViewRequest {
    /**
     * Name of the new view
     * @type string
     * @memberof RemoteAccessApipostCreateView
     */
    name: string
    /**
     * CSRF protection token
     * @type string
     * @memberof RemoteAccessApipostCreateView
     */
    jenkinsCrumb?: string
    /**
     * Content type header application/xml
     * @type string
     * @memberof RemoteAccessApipostCreateView
     */
    contentType?: string
    /**
     * View configuration in config.xml format
     * @type string
     * @memberof RemoteAccessApipostCreateView
     */
    body?: string
}

export interface RemoteAccessApiPostJobBuildRequest {
    /**
     * Name of the job
     * @type string
     * @memberof RemoteAccessApipostJobBuild
     */
    name: string
    /**
     * 
     * @type string
     * @memberof RemoteAccessApipostJobBuild
     */
    json: string
    /**
     * 
     * @type string
     * @memberof RemoteAccessApipostJobBuild
     */
    token?: string
    /**
     * CSRF protection token
     * @type string
     * @memberof RemoteAccessApipostJobBuild
     */
    jenkinsCrumb?: string
}

export interface RemoteAccessApiPostJobConfigRequest {
    /**
     * Name of the job
     * @type string
     * @memberof RemoteAccessApipostJobConfig
     */
    name: string
    /**
     * Job configuration in config.xml format
     * @type string
     * @memberof RemoteAccessApipostJobConfig
     */
    body: string
    /**
     * CSRF protection token
     * @type string
     * @memberof RemoteAccessApipostJobConfig
     */
    jenkinsCrumb?: string
}

export interface RemoteAccessApiPostJobDeleteRequest {
    /**
     * Name of the job
     * @type string
     * @memberof RemoteAccessApipostJobDelete
     */
    name: string
    /**
     * CSRF protection token
     * @type string
     * @memberof RemoteAccessApipostJobDelete
     */
    jenkinsCrumb?: string
}

export interface RemoteAccessApiPostJobDisableRequest {
    /**
     * Name of the job
     * @type string
     * @memberof RemoteAccessApipostJobDisable
     */
    name: string
    /**
     * CSRF protection token
     * @type string
     * @memberof RemoteAccessApipostJobDisable
     */
    jenkinsCrumb?: string
}

export interface RemoteAccessApiPostJobEnableRequest {
    /**
     * Name of the job
     * @type string
     * @memberof RemoteAccessApipostJobEnable
     */
    name: string
    /**
     * CSRF protection token
     * @type string
     * @memberof RemoteAccessApipostJobEnable
     */
    jenkinsCrumb?: string
}

export interface RemoteAccessApiPostJobLastBuildStopRequest {
    /**
     * Name of the job
     * @type string
     * @memberof RemoteAccessApipostJobLastBuildStop
     */
    name: string
    /**
     * CSRF protection token
     * @type string
     * @memberof RemoteAccessApipostJobLastBuildStop
     */
    jenkinsCrumb?: string
}

export interface RemoteAccessApiPostViewConfigRequest {
    /**
     * Name of the view
     * @type string
     * @memberof RemoteAccessApipostViewConfig
     */
    name: string
    /**
     * View configuration in config.xml format
     * @type string
     * @memberof RemoteAccessApipostViewConfig
     */
    body: string
    /**
     * CSRF protection token
     * @type string
     * @memberof RemoteAccessApipostViewConfig
     */
    jenkinsCrumb?: string
}

export class ObjectRemoteAccessApi {
    private api: ObservableRemoteAccessApi

    public constructor(configuration: Configuration, requestFactory?: RemoteAccessApiRequestFactory, responseProcessor?: RemoteAccessApiResponseProcessor) {
        this.api = new ObservableRemoteAccessApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Retrieve computer details
     * @param param the request object
     */
    public getComputer(param: RemoteAccessApiGetComputerRequest, options?: Configuration): Promise<ComputerSet> {
        return this.api.getComputer(param.depth,  options).toPromise();
    }

    /**
     * Retrieve Jenkins details
     * @param param the request object
     */
    public getJenkins(param: RemoteAccessApiGetJenkinsRequest = {}, options?: Configuration): Promise<Hudson> {
        return this.api.getJenkins( options).toPromise();
    }

    /**
     * Retrieve job details
     * @param param the request object
     */
    public getJob(param: RemoteAccessApiGetJobRequest, options?: Configuration): Promise<FreeStyleProject> {
        return this.api.getJob(param.name,  options).toPromise();
    }

    /**
     * Retrieve job configuration
     * @param param the request object
     */
    public getJobConfig(param: RemoteAccessApiGetJobConfigRequest, options?: Configuration): Promise<string> {
        return this.api.getJobConfig(param.name,  options).toPromise();
    }

    /**
     * Retrieve job's last build details
     * @param param the request object
     */
    public getJobLastBuild(param: RemoteAccessApiGetJobLastBuildRequest, options?: Configuration): Promise<FreeStyleBuild> {
        return this.api.getJobLastBuild(param.name,  options).toPromise();
    }

    /**
     * Retrieve job's build progressive text output
     * @param param the request object
     */
    public getJobProgressiveText(param: RemoteAccessApiGetJobProgressiveTextRequest, options?: Configuration): Promise<void> {
        return this.api.getJobProgressiveText(param.name, param.number, param.start,  options).toPromise();
    }

    /**
     * Retrieve queue details
     * @param param the request object
     */
    public getQueue(param: RemoteAccessApiGetQueueRequest = {}, options?: Configuration): Promise<Queue> {
        return this.api.getQueue( options).toPromise();
    }

    /**
     * Retrieve queued item details
     * @param param the request object
     */
    public getQueueItem(param: RemoteAccessApiGetQueueItemRequest, options?: Configuration): Promise<Queue> {
        return this.api.getQueueItem(param.number,  options).toPromise();
    }

    /**
     * Retrieve view details
     * @param param the request object
     */
    public getView(param: RemoteAccessApiGetViewRequest, options?: Configuration): Promise<ListView> {
        return this.api.getView(param.name,  options).toPromise();
    }

    /**
     * Retrieve view configuration
     * @param param the request object
     */
    public getViewConfig(param: RemoteAccessApiGetViewConfigRequest, options?: Configuration): Promise<string> {
        return this.api.getViewConfig(param.name,  options).toPromise();
    }

    /**
     * Retrieve Jenkins headers
     * @param param the request object
     */
    public headJenkins(param: RemoteAccessApiHeadJenkinsRequest = {}, options?: Configuration): Promise<void> {
        return this.api.headJenkins( options).toPromise();
    }

    /**
     * Create a new job using job configuration, or copied from an existing job
     * @param param the request object
     */
    public postCreateItem(param: RemoteAccessApiPostCreateItemRequest, options?: Configuration): Promise<void> {
        return this.api.postCreateItem(param.name, param._from, param.mode, param.jenkinsCrumb, param.contentType, param.body,  options).toPromise();
    }

    /**
     * Create a new view using view configuration
     * @param param the request object
     */
    public postCreateView(param: RemoteAccessApiPostCreateViewRequest, options?: Configuration): Promise<void> {
        return this.api.postCreateView(param.name, param.jenkinsCrumb, param.contentType, param.body,  options).toPromise();
    }

    /**
     * Build a job
     * @param param the request object
     */
    public postJobBuild(param: RemoteAccessApiPostJobBuildRequest, options?: Configuration): Promise<void> {
        return this.api.postJobBuild(param.name, param.json, param.token, param.jenkinsCrumb,  options).toPromise();
    }

    /**
     * Update job configuration
     * @param param the request object
     */
    public postJobConfig(param: RemoteAccessApiPostJobConfigRequest, options?: Configuration): Promise<void> {
        return this.api.postJobConfig(param.name, param.body, param.jenkinsCrumb,  options).toPromise();
    }

    /**
     * Delete a job
     * @param param the request object
     */
    public postJobDelete(param: RemoteAccessApiPostJobDeleteRequest, options?: Configuration): Promise<void> {
        return this.api.postJobDelete(param.name, param.jenkinsCrumb,  options).toPromise();
    }

    /**
     * Disable a job
     * @param param the request object
     */
    public postJobDisable(param: RemoteAccessApiPostJobDisableRequest, options?: Configuration): Promise<void> {
        return this.api.postJobDisable(param.name, param.jenkinsCrumb,  options).toPromise();
    }

    /**
     * Enable a job
     * @param param the request object
     */
    public postJobEnable(param: RemoteAccessApiPostJobEnableRequest, options?: Configuration): Promise<void> {
        return this.api.postJobEnable(param.name, param.jenkinsCrumb,  options).toPromise();
    }

    /**
     * Stop a job
     * @param param the request object
     */
    public postJobLastBuildStop(param: RemoteAccessApiPostJobLastBuildStopRequest, options?: Configuration): Promise<void> {
        return this.api.postJobLastBuildStop(param.name, param.jenkinsCrumb,  options).toPromise();
    }

    /**
     * Update view configuration
     * @param param the request object
     */
    public postViewConfig(param: RemoteAccessApiPostViewConfigRequest, options?: Configuration): Promise<void> {
        return this.api.postViewConfig(param.name, param.body, param.jenkinsCrumb,  options).toPromise();
    }

}
