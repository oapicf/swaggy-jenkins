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
import { ObservableBaseApi } from './ObservableAPI';

import { BaseApiRequestFactory, BaseApiResponseProcessor} from "../apis/BaseApi";
export class PromiseBaseApi {
    private api: ObservableBaseApi

    public constructor(
        configuration: Configuration,
        requestFactory?: BaseApiRequestFactory,
        responseProcessor?: BaseApiResponseProcessor
    ) {
        this.api = new ObservableBaseApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Retrieve CSRF protection token
     */
    public getCrumb(_options?: Configuration): Promise<DefaultCrumbIssuer> {
        const result = this.api.getCrumb(_options);
        return result.toPromise();
    }


}



import { ObservableBlueOceanApi } from './ObservableAPI';

import { BlueOceanApiRequestFactory, BlueOceanApiResponseProcessor} from "../apis/BlueOceanApi";
export class PromiseBlueOceanApi {
    private api: ObservableBlueOceanApi

    public constructor(
        configuration: Configuration,
        requestFactory?: BlueOceanApiRequestFactory,
        responseProcessor?: BlueOceanApiResponseProcessor
    ) {
        this.api = new ObservableBlueOceanApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Delete queue item from an organization pipeline queue
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param queue Name of the queue item
     */
    public deletePipelineQueueItem(organization: string, pipeline: string, queue: string, _options?: Configuration): Promise<void> {
        const result = this.api.deletePipelineQueueItem(organization, pipeline, queue, _options);
        return result.toPromise();
    }

    /**
     * Retrieve authenticated user details for an organization
     * @param organization Name of the organization
     */
    public getAuthenticatedUser(organization: string, _options?: Configuration): Promise<User> {
        const result = this.api.getAuthenticatedUser(organization, _options);
        return result.toPromise();
    }

    /**
     * Get a list of class names supported by a given class
     * @param _class Name of the class
     */
    public getClasses(_class: string, _options?: Configuration): Promise<string> {
        const result = this.api.getClasses(_class, _options);
        return result.toPromise();
    }

    /**
     * Retrieve JSON Web Key
     * @param key Key ID received as part of JWT header field kid
     */
    public getJsonWebKey(key: number, _options?: Configuration): Promise<string> {
        const result = this.api.getJsonWebKey(key, _options);
        return result.toPromise();
    }

    /**
     * Retrieve JSON Web Token
     * @param expiryTimeInMins Token expiry time in minutes, default: 30 minutes
     * @param maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes
     */
    public getJsonWebToken(expiryTimeInMins?: number, maxExpiryTimeInMins?: number, _options?: Configuration): Promise<string> {
        const result = this.api.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins, _options);
        return result.toPromise();
    }

    /**
     * Retrieve organization details
     * @param organization Name of the organization
     */
    public getOrganisation(organization: string, _options?: Configuration): Promise<Organisation> {
        const result = this.api.getOrganisation(organization, _options);
        return result.toPromise();
    }

    /**
     * Retrieve all organizations details
     */
    public getOrganisations(_options?: Configuration): Promise<Array<Organisation>> {
        const result = this.api.getOrganisations(_options);
        return result.toPromise();
    }

    /**
     * Retrieve pipeline details for an organization
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipeline(organization: string, pipeline: string, _options?: Configuration): Promise<Pipeline> {
        const result = this.api.getPipeline(organization, pipeline, _options);
        return result.toPromise();
    }

    /**
     * Retrieve all activities details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineActivities(organization: string, pipeline: string, _options?: Configuration): Promise<Array<PipelineActivity>> {
        const result = this.api.getPipelineActivities(organization, pipeline, _options);
        return result.toPromise();
    }

    /**
     * Retrieve branch details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param branch Name of the branch
     */
    public getPipelineBranch(organization: string, pipeline: string, branch: string, _options?: Configuration): Promise<BranchImpl> {
        const result = this.api.getPipelineBranch(organization, pipeline, branch, _options);
        return result.toPromise();
    }

    /**
     * Retrieve branch run details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param branch Name of the branch
     * @param run Name of the run
     */
    public getPipelineBranchRun(organization: string, pipeline: string, branch: string, run: string, _options?: Configuration): Promise<PipelineRun> {
        const result = this.api.getPipelineBranchRun(organization, pipeline, branch, run, _options);
        return result.toPromise();
    }

    /**
     * Retrieve all branches details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineBranches(organization: string, pipeline: string, _options?: Configuration): Promise<MultibranchPipeline> {
        const result = this.api.getPipelineBranches(organization, pipeline, _options);
        return result.toPromise();
    }

    /**
     * Retrieve pipeline folder for an organization
     * @param organization Name of the organization
     * @param folder Name of the folder
     */
    public getPipelineFolder(organization: string, folder: string, _options?: Configuration): Promise<PipelineFolderImpl> {
        const result = this.api.getPipelineFolder(organization, folder, _options);
        return result.toPromise();
    }

    /**
     * Retrieve pipeline details for an organization folder
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param folder Name of the folder
     */
    public getPipelineFolderPipeline(organization: string, pipeline: string, folder: string, _options?: Configuration): Promise<PipelineImpl> {
        const result = this.api.getPipelineFolderPipeline(organization, pipeline, folder, _options);
        return result.toPromise();
    }

    /**
     * Retrieve queue details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineQueue(organization: string, pipeline: string, _options?: Configuration): Promise<Array<QueueItemImpl>> {
        const result = this.api.getPipelineQueue(organization, pipeline, _options);
        return result.toPromise();
    }

    /**
     * Retrieve run details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public getPipelineRun(organization: string, pipeline: string, run: string, _options?: Configuration): Promise<PipelineRun> {
        const result = this.api.getPipelineRun(organization, pipeline, run, _options);
        return result.toPromise();
    }

    /**
     * Get log for a pipeline run
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param start Start position of the log
     * @param download Set to true in order to download the file, otherwise it&#39;s passed as a response body
     */
    public getPipelineRunLog(organization: string, pipeline: string, run: string, start?: number, download?: boolean, _options?: Configuration): Promise<string> {
        const result = this.api.getPipelineRunLog(organization, pipeline, run, start, download, _options);
        return result.toPromise();
    }

    /**
     * Retrieve run node details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     */
    public getPipelineRunNode(organization: string, pipeline: string, run: string, node: string, _options?: Configuration): Promise<PipelineRunNode> {
        const result = this.api.getPipelineRunNode(organization, pipeline, run, node, _options);
        return result.toPromise();
    }

    /**
     * Retrieve run node details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     * @param step Name of the step
     */
    public getPipelineRunNodeStep(organization: string, pipeline: string, run: string, node: string, step: string, _options?: Configuration): Promise<PipelineStepImpl> {
        const result = this.api.getPipelineRunNodeStep(organization, pipeline, run, node, step, _options);
        return result.toPromise();
    }

    /**
     * Get log for a pipeline run node step
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     * @param step Name of the step
     */
    public getPipelineRunNodeStepLog(organization: string, pipeline: string, run: string, node: string, step: string, _options?: Configuration): Promise<string> {
        const result = this.api.getPipelineRunNodeStepLog(organization, pipeline, run, node, step, _options);
        return result.toPromise();
    }

    /**
     * Retrieve run node steps details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     */
    public getPipelineRunNodeSteps(organization: string, pipeline: string, run: string, node: string, _options?: Configuration): Promise<Array<PipelineStepImpl>> {
        const result = this.api.getPipelineRunNodeSteps(organization, pipeline, run, node, _options);
        return result.toPromise();
    }

    /**
     * Retrieve run nodes details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public getPipelineRunNodes(organization: string, pipeline: string, run: string, _options?: Configuration): Promise<Array<PipelineRunNode>> {
        const result = this.api.getPipelineRunNodes(organization, pipeline, run, _options);
        return result.toPromise();
    }

    /**
     * Retrieve all runs details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineRuns(organization: string, pipeline: string, _options?: Configuration): Promise<Array<PipelineRun>> {
        const result = this.api.getPipelineRuns(organization, pipeline, _options);
        return result.toPromise();
    }

    /**
     * Retrieve all pipelines details for an organization
     * @param organization Name of the organization
     */
    public getPipelines(organization: string, _options?: Configuration): Promise<Array<Pipeline>> {
        const result = this.api.getPipelines(organization, _options);
        return result.toPromise();
    }

    /**
     * Retrieve SCM details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     */
    public getSCM(organization: string, scm: string, _options?: Configuration): Promise<GithubScm> {
        const result = this.api.getSCM(organization, scm, _options);
        return result.toPromise();
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
    public getSCMOrganisationRepositories(organization: string, scm: string, scmOrganisation: string, credentialId?: string, pageSize?: number, pageNumber?: number, _options?: Configuration): Promise<Array<GithubOrganization>> {
        const result = this.api.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber, _options);
        return result.toPromise();
    }

    /**
     * Retrieve SCM organization repository details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     * @param scmOrganisation Name of the SCM organization
     * @param repository Name of the SCM repository
     * @param credentialId Credential ID
     */
    public getSCMOrganisationRepository(organization: string, scm: string, scmOrganisation: string, repository: string, credentialId?: string, _options?: Configuration): Promise<Array<GithubOrganization>> {
        const result = this.api.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId, _options);
        return result.toPromise();
    }

    /**
     * Retrieve SCM organizations details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     * @param credentialId Credential ID
     */
    public getSCMOrganisations(organization: string, scm: string, credentialId?: string, _options?: Configuration): Promise<Array<GithubOrganization>> {
        const result = this.api.getSCMOrganisations(organization, scm, credentialId, _options);
        return result.toPromise();
    }

    /**
     * Retrieve user details for an organization
     * @param organization Name of the organization
     * @param user Name of the user
     */
    public getUser(organization: string, user: string, _options?: Configuration): Promise<User> {
        const result = this.api.getUser(organization, user, _options);
        return result.toPromise();
    }

    /**
     * Retrieve user favorites details for an organization
     * @param user Name of the user
     */
    public getUserFavorites(user: string, _options?: Configuration): Promise<Array<FavoriteImpl>> {
        const result = this.api.getUserFavorites(user, _options);
        return result.toPromise();
    }

    /**
     * Retrieve users details for an organization
     * @param organization Name of the organization
     */
    public getUsers(organization: string, _options?: Configuration): Promise<User> {
        const result = this.api.getUsers(organization, _options);
        return result.toPromise();
    }

    /**
     * Replay an organization pipeline run
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public postPipelineRun(organization: string, pipeline: string, run: string, _options?: Configuration): Promise<QueueItemImpl> {
        const result = this.api.postPipelineRun(organization, pipeline, run, _options);
        return result.toPromise();
    }

    /**
     * Start a build for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public postPipelineRuns(organization: string, pipeline: string, _options?: Configuration): Promise<QueueItemImpl> {
        const result = this.api.postPipelineRuns(organization, pipeline, _options);
        return result.toPromise();
    }

    /**
     * Favorite/unfavorite a pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param UNKNOWN_BASE_TYPE Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite
     */
    public putPipelineFavorite(organization: string, pipeline: string, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, _options?: Configuration): Promise<FavoriteImpl> {
        const result = this.api.putPipelineFavorite(organization, pipeline, UNKNOWN_BASE_TYPE, _options);
        return result.toPromise();
    }

    /**
     * Stop a build of an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param blocking Set to true to make blocking stop, default: false
     * @param timeOutInSecs Timeout in seconds, default: 10 seconds
     */
    public putPipelineRun(organization: string, pipeline: string, run: string, blocking?: string, timeOutInSecs?: number, _options?: Configuration): Promise<PipelineRun> {
        const result = this.api.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs, _options);
        return result.toPromise();
    }

    /**
     * Search for any resource details
     * @param q Query string
     */
    public search(q: string, _options?: Configuration): Promise<string> {
        const result = this.api.search(q, _options);
        return result.toPromise();
    }

    /**
     * Get classes details
     * @param q Query string containing an array of class names
     */
    public searchClasses(q: string, _options?: Configuration): Promise<string> {
        const result = this.api.searchClasses(q, _options);
        return result.toPromise();
    }


}



import { ObservableRemoteAccessApi } from './ObservableAPI';

import { RemoteAccessApiRequestFactory, RemoteAccessApiResponseProcessor} from "../apis/RemoteAccessApi";
export class PromiseRemoteAccessApi {
    private api: ObservableRemoteAccessApi

    public constructor(
        configuration: Configuration,
        requestFactory?: RemoteAccessApiRequestFactory,
        responseProcessor?: RemoteAccessApiResponseProcessor
    ) {
        this.api = new ObservableRemoteAccessApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Retrieve computer details
     * @param depth Recursion depth in response model
     */
    public getComputer(depth: number, _options?: Configuration): Promise<ComputerSet> {
        const result = this.api.getComputer(depth, _options);
        return result.toPromise();
    }

    /**
     * Retrieve Jenkins details
     */
    public getJenkins(_options?: Configuration): Promise<Hudson> {
        const result = this.api.getJenkins(_options);
        return result.toPromise();
    }

    /**
     * Retrieve job details
     * @param name Name of the job
     */
    public getJob(name: string, _options?: Configuration): Promise<FreeStyleProject> {
        const result = this.api.getJob(name, _options);
        return result.toPromise();
    }

    /**
     * Retrieve job configuration
     * @param name Name of the job
     */
    public getJobConfig(name: string, _options?: Configuration): Promise<string> {
        const result = this.api.getJobConfig(name, _options);
        return result.toPromise();
    }

    /**
     * Retrieve job's last build details
     * @param name Name of the job
     */
    public getJobLastBuild(name: string, _options?: Configuration): Promise<FreeStyleBuild> {
        const result = this.api.getJobLastBuild(name, _options);
        return result.toPromise();
    }

    /**
     * Retrieve job's build progressive text output
     * @param name Name of the job
     * @param number Build number
     * @param start Starting point of progressive text output
     */
    public getJobProgressiveText(name: string, number: string, start: string, _options?: Configuration): Promise<void> {
        const result = this.api.getJobProgressiveText(name, number, start, _options);
        return result.toPromise();
    }

    /**
     * Retrieve queue details
     */
    public getQueue(_options?: Configuration): Promise<Queue> {
        const result = this.api.getQueue(_options);
        return result.toPromise();
    }

    /**
     * Retrieve queued item details
     * @param number Queue number
     */
    public getQueueItem(number: string, _options?: Configuration): Promise<Queue> {
        const result = this.api.getQueueItem(number, _options);
        return result.toPromise();
    }

    /**
     * Retrieve view details
     * @param name Name of the view
     */
    public getView(name: string, _options?: Configuration): Promise<ListView> {
        const result = this.api.getView(name, _options);
        return result.toPromise();
    }

    /**
     * Retrieve view configuration
     * @param name Name of the view
     */
    public getViewConfig(name: string, _options?: Configuration): Promise<string> {
        const result = this.api.getViewConfig(name, _options);
        return result.toPromise();
    }

    /**
     * Retrieve Jenkins headers
     */
    public headJenkins(_options?: Configuration): Promise<void> {
        const result = this.api.headJenkins(_options);
        return result.toPromise();
    }

    /**
     * Create a new job using job configuration, or copied from an existing job
     * @param name Name of the new job
     * @param _from Existing job to copy from
     * @param mode Set to &#39;copy&#39; for copying an existing job
     * @param jenkinsCrumb CSRF protection token
     * @param contentType Content type header application/xml
     * @param body Job configuration in config.xml format
     */
    public postCreateItem(name: string, _from?: string, mode?: string, jenkinsCrumb?: string, contentType?: string, body?: string, _options?: Configuration): Promise<void> {
        const result = this.api.postCreateItem(name, _from, mode, jenkinsCrumb, contentType, body, _options);
        return result.toPromise();
    }

    /**
     * Create a new view using view configuration
     * @param name Name of the new view
     * @param jenkinsCrumb CSRF protection token
     * @param contentType Content type header application/xml
     * @param body View configuration in config.xml format
     */
    public postCreateView(name: string, jenkinsCrumb?: string, contentType?: string, body?: string, _options?: Configuration): Promise<void> {
        const result = this.api.postCreateView(name, jenkinsCrumb, contentType, body, _options);
        return result.toPromise();
    }

    /**
     * Build a job
     * @param name Name of the job
     * @param json 
     * @param token 
     * @param jenkinsCrumb CSRF protection token
     */
    public postJobBuild(name: string, json: string, token?: string, jenkinsCrumb?: string, _options?: Configuration): Promise<void> {
        const result = this.api.postJobBuild(name, json, token, jenkinsCrumb, _options);
        return result.toPromise();
    }

    /**
     * Update job configuration
     * @param name Name of the job
     * @param body Job configuration in config.xml format
     * @param jenkinsCrumb CSRF protection token
     */
    public postJobConfig(name: string, body: string, jenkinsCrumb?: string, _options?: Configuration): Promise<void> {
        const result = this.api.postJobConfig(name, body, jenkinsCrumb, _options);
        return result.toPromise();
    }

    /**
     * Delete a job
     * @param name Name of the job
     * @param jenkinsCrumb CSRF protection token
     */
    public postJobDelete(name: string, jenkinsCrumb?: string, _options?: Configuration): Promise<void> {
        const result = this.api.postJobDelete(name, jenkinsCrumb, _options);
        return result.toPromise();
    }

    /**
     * Disable a job
     * @param name Name of the job
     * @param jenkinsCrumb CSRF protection token
     */
    public postJobDisable(name: string, jenkinsCrumb?: string, _options?: Configuration): Promise<void> {
        const result = this.api.postJobDisable(name, jenkinsCrumb, _options);
        return result.toPromise();
    }

    /**
     * Enable a job
     * @param name Name of the job
     * @param jenkinsCrumb CSRF protection token
     */
    public postJobEnable(name: string, jenkinsCrumb?: string, _options?: Configuration): Promise<void> {
        const result = this.api.postJobEnable(name, jenkinsCrumb, _options);
        return result.toPromise();
    }

    /**
     * Stop a job
     * @param name Name of the job
     * @param jenkinsCrumb CSRF protection token
     */
    public postJobLastBuildStop(name: string, jenkinsCrumb?: string, _options?: Configuration): Promise<void> {
        const result = this.api.postJobLastBuildStop(name, jenkinsCrumb, _options);
        return result.toPromise();
    }

    /**
     * Update view configuration
     * @param name Name of the view
     * @param body View configuration in config.xml format
     * @param jenkinsCrumb CSRF protection token
     */
    public postViewConfig(name: string, body: string, jenkinsCrumb?: string, _options?: Configuration): Promise<void> {
        const result = this.api.postViewConfig(name, body, jenkinsCrumb, _options);
        return result.toPromise();
    }


}



