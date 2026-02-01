import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration, ConfigurationOptions, mergeConfiguration } from '../configuration'
import type { Middleware } from '../middleware';
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';
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

import { BaseApiRequestFactory, BaseApiResponseProcessor} from "../apis/BaseApi";
export class ObservableBaseApi {
    private requestFactory: BaseApiRequestFactory;
    private responseProcessor: BaseApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: BaseApiRequestFactory,
        responseProcessor?: BaseApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new BaseApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new BaseApiResponseProcessor();
    }

    /**
     * Retrieve CSRF protection token
     */
    public getCrumbWithHttpInfo(_options?: ConfigurationOptions): Observable<HttpInfo<DefaultCrumbIssuer>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getCrumb(_config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getCrumbWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve CSRF protection token
     */
    public getCrumb(_options?: ConfigurationOptions): Observable<DefaultCrumbIssuer> {
        return this.getCrumbWithHttpInfo(_options).pipe(map((apiResponse: HttpInfo<DefaultCrumbIssuer>) => apiResponse.data));
    }

}

import { BlueOceanApiRequestFactory, BlueOceanApiResponseProcessor} from "../apis/BlueOceanApi";
export class ObservableBlueOceanApi {
    private requestFactory: BlueOceanApiRequestFactory;
    private responseProcessor: BlueOceanApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: BlueOceanApiRequestFactory,
        responseProcessor?: BlueOceanApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new BlueOceanApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new BlueOceanApiResponseProcessor();
    }

    /**
     * Delete queue item from an organization pipeline queue
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param queue Name of the queue item
     */
    public deletePipelineQueueItemWithHttpInfo(organization: string, pipeline: string, queue: string, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.deletePipelineQueueItem(organization, pipeline, queue, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.deletePipelineQueueItemWithHttpInfo(rsp)));
            }));
    }

    /**
     * Delete queue item from an organization pipeline queue
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param queue Name of the queue item
     */
    public deletePipelineQueueItem(organization: string, pipeline: string, queue: string, _options?: ConfigurationOptions): Observable<void> {
        return this.deletePipelineQueueItemWithHttpInfo(organization, pipeline, queue, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * Retrieve authenticated user details for an organization
     * @param organization Name of the organization
     */
    public getAuthenticatedUserWithHttpInfo(organization: string, _options?: ConfigurationOptions): Observable<HttpInfo<User>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getAuthenticatedUser(organization, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getAuthenticatedUserWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve authenticated user details for an organization
     * @param organization Name of the organization
     */
    public getAuthenticatedUser(organization: string, _options?: ConfigurationOptions): Observable<User> {
        return this.getAuthenticatedUserWithHttpInfo(organization, _options).pipe(map((apiResponse: HttpInfo<User>) => apiResponse.data));
    }

    /**
     * Get a list of class names supported by a given class
     * @param _class Name of the class
     */
    public getClassesWithHttpInfo(_class: string, _options?: ConfigurationOptions): Observable<HttpInfo<string>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getClasses(_class, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getClassesWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get a list of class names supported by a given class
     * @param _class Name of the class
     */
    public getClasses(_class: string, _options?: ConfigurationOptions): Observable<string> {
        return this.getClassesWithHttpInfo(_class, _options).pipe(map((apiResponse: HttpInfo<string>) => apiResponse.data));
    }

    /**
     * Retrieve JSON Web Key
     * @param key Key ID received as part of JWT header field kid
     */
    public getJsonWebKeyWithHttpInfo(key: number, _options?: ConfigurationOptions): Observable<HttpInfo<string>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getJsonWebKey(key, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getJsonWebKeyWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve JSON Web Key
     * @param key Key ID received as part of JWT header field kid
     */
    public getJsonWebKey(key: number, _options?: ConfigurationOptions): Observable<string> {
        return this.getJsonWebKeyWithHttpInfo(key, _options).pipe(map((apiResponse: HttpInfo<string>) => apiResponse.data));
    }

    /**
     * Retrieve JSON Web Token
     * @param [expiryTimeInMins] Token expiry time in minutes, default: 30 minutes
     * @param [maxExpiryTimeInMins] Maximum token expiry time in minutes, default: 480 minutes
     */
    public getJsonWebTokenWithHttpInfo(expiryTimeInMins?: number, maxExpiryTimeInMins?: number, _options?: ConfigurationOptions): Observable<HttpInfo<string>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getJsonWebTokenWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve JSON Web Token
     * @param [expiryTimeInMins] Token expiry time in minutes, default: 30 minutes
     * @param [maxExpiryTimeInMins] Maximum token expiry time in minutes, default: 480 minutes
     */
    public getJsonWebToken(expiryTimeInMins?: number, maxExpiryTimeInMins?: number, _options?: ConfigurationOptions): Observable<string> {
        return this.getJsonWebTokenWithHttpInfo(expiryTimeInMins, maxExpiryTimeInMins, _options).pipe(map((apiResponse: HttpInfo<string>) => apiResponse.data));
    }

    /**
     * Retrieve organization details
     * @param organization Name of the organization
     */
    public getOrganisationWithHttpInfo(organization: string, _options?: ConfigurationOptions): Observable<HttpInfo<Organisation>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getOrganisation(organization, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getOrganisationWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve organization details
     * @param organization Name of the organization
     */
    public getOrganisation(organization: string, _options?: ConfigurationOptions): Observable<Organisation> {
        return this.getOrganisationWithHttpInfo(organization, _options).pipe(map((apiResponse: HttpInfo<Organisation>) => apiResponse.data));
    }

    /**
     * Retrieve all organizations details
     */
    public getOrganisationsWithHttpInfo(_options?: ConfigurationOptions): Observable<HttpInfo<Array<Organisation>>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getOrganisations(_config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getOrganisationsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve all organizations details
     */
    public getOrganisations(_options?: ConfigurationOptions): Observable<Array<Organisation>> {
        return this.getOrganisationsWithHttpInfo(_options).pipe(map((apiResponse: HttpInfo<Array<Organisation>>) => apiResponse.data));
    }

    /**
     * Retrieve pipeline details for an organization
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineWithHttpInfo(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<HttpInfo<Pipeline>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipeline(organization, pipeline, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve pipeline details for an organization
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipeline(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<Pipeline> {
        return this.getPipelineWithHttpInfo(organization, pipeline, _options).pipe(map((apiResponse: HttpInfo<Pipeline>) => apiResponse.data));
    }

    /**
     * Retrieve all activities details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineActivitiesWithHttpInfo(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<HttpInfo<Array<PipelineActivity>>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineActivities(organization, pipeline, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineActivitiesWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve all activities details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineActivities(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<Array<PipelineActivity>> {
        return this.getPipelineActivitiesWithHttpInfo(organization, pipeline, _options).pipe(map((apiResponse: HttpInfo<Array<PipelineActivity>>) => apiResponse.data));
    }

    /**
     * Retrieve branch details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param branch Name of the branch
     */
    public getPipelineBranchWithHttpInfo(organization: string, pipeline: string, branch: string, _options?: ConfigurationOptions): Observable<HttpInfo<BranchImpl>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineBranch(organization, pipeline, branch, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineBranchWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve branch details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param branch Name of the branch
     */
    public getPipelineBranch(organization: string, pipeline: string, branch: string, _options?: ConfigurationOptions): Observable<BranchImpl> {
        return this.getPipelineBranchWithHttpInfo(organization, pipeline, branch, _options).pipe(map((apiResponse: HttpInfo<BranchImpl>) => apiResponse.data));
    }

    /**
     * Retrieve branch run details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param branch Name of the branch
     * @param run Name of the run
     */
    public getPipelineBranchRunWithHttpInfo(organization: string, pipeline: string, branch: string, run: string, _options?: ConfigurationOptions): Observable<HttpInfo<PipelineRun>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineBranchRun(organization, pipeline, branch, run, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineBranchRunWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve branch run details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param branch Name of the branch
     * @param run Name of the run
     */
    public getPipelineBranchRun(organization: string, pipeline: string, branch: string, run: string, _options?: ConfigurationOptions): Observable<PipelineRun> {
        return this.getPipelineBranchRunWithHttpInfo(organization, pipeline, branch, run, _options).pipe(map((apiResponse: HttpInfo<PipelineRun>) => apiResponse.data));
    }

    /**
     * Retrieve all branches details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineBranchesWithHttpInfo(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<HttpInfo<MultibranchPipeline>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineBranches(organization, pipeline, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineBranchesWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve all branches details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineBranches(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<MultibranchPipeline> {
        return this.getPipelineBranchesWithHttpInfo(organization, pipeline, _options).pipe(map((apiResponse: HttpInfo<MultibranchPipeline>) => apiResponse.data));
    }

    /**
     * Retrieve pipeline folder for an organization
     * @param organization Name of the organization
     * @param folder Name of the folder
     */
    public getPipelineFolderWithHttpInfo(organization: string, folder: string, _options?: ConfigurationOptions): Observable<HttpInfo<PipelineFolderImpl>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineFolder(organization, folder, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineFolderWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve pipeline folder for an organization
     * @param organization Name of the organization
     * @param folder Name of the folder
     */
    public getPipelineFolder(organization: string, folder: string, _options?: ConfigurationOptions): Observable<PipelineFolderImpl> {
        return this.getPipelineFolderWithHttpInfo(organization, folder, _options).pipe(map((apiResponse: HttpInfo<PipelineFolderImpl>) => apiResponse.data));
    }

    /**
     * Retrieve pipeline details for an organization folder
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param folder Name of the folder
     */
    public getPipelineFolderPipelineWithHttpInfo(organization: string, pipeline: string, folder: string, _options?: ConfigurationOptions): Observable<HttpInfo<PipelineImpl>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineFolderPipeline(organization, pipeline, folder, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineFolderPipelineWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve pipeline details for an organization folder
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param folder Name of the folder
     */
    public getPipelineFolderPipeline(organization: string, pipeline: string, folder: string, _options?: ConfigurationOptions): Observable<PipelineImpl> {
        return this.getPipelineFolderPipelineWithHttpInfo(organization, pipeline, folder, _options).pipe(map((apiResponse: HttpInfo<PipelineImpl>) => apiResponse.data));
    }

    /**
     * Retrieve queue details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineQueueWithHttpInfo(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<HttpInfo<Array<QueueItemImpl>>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineQueue(organization, pipeline, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineQueueWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve queue details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineQueue(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<Array<QueueItemImpl>> {
        return this.getPipelineQueueWithHttpInfo(organization, pipeline, _options).pipe(map((apiResponse: HttpInfo<Array<QueueItemImpl>>) => apiResponse.data));
    }

    /**
     * Retrieve run details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public getPipelineRunWithHttpInfo(organization: string, pipeline: string, run: string, _options?: ConfigurationOptions): Observable<HttpInfo<PipelineRun>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineRun(organization, pipeline, run, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineRunWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve run details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public getPipelineRun(organization: string, pipeline: string, run: string, _options?: ConfigurationOptions): Observable<PipelineRun> {
        return this.getPipelineRunWithHttpInfo(organization, pipeline, run, _options).pipe(map((apiResponse: HttpInfo<PipelineRun>) => apiResponse.data));
    }

    /**
     * Get log for a pipeline run
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param [start] Start position of the log
     * @param [download] Set to true in order to download the file, otherwise it\&#39;s passed as a response body
     */
    public getPipelineRunLogWithHttpInfo(organization: string, pipeline: string, run: string, start?: number, download?: boolean, _options?: ConfigurationOptions): Observable<HttpInfo<string>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineRunLog(organization, pipeline, run, start, download, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineRunLogWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get log for a pipeline run
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param [start] Start position of the log
     * @param [download] Set to true in order to download the file, otherwise it\&#39;s passed as a response body
     */
    public getPipelineRunLog(organization: string, pipeline: string, run: string, start?: number, download?: boolean, _options?: ConfigurationOptions): Observable<string> {
        return this.getPipelineRunLogWithHttpInfo(organization, pipeline, run, start, download, _options).pipe(map((apiResponse: HttpInfo<string>) => apiResponse.data));
    }

    /**
     * Retrieve run node details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     */
    public getPipelineRunNodeWithHttpInfo(organization: string, pipeline: string, run: string, node: string, _options?: ConfigurationOptions): Observable<HttpInfo<PipelineRunNode>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineRunNode(organization, pipeline, run, node, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineRunNodeWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve run node details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     */
    public getPipelineRunNode(organization: string, pipeline: string, run: string, node: string, _options?: ConfigurationOptions): Observable<PipelineRunNode> {
        return this.getPipelineRunNodeWithHttpInfo(organization, pipeline, run, node, _options).pipe(map((apiResponse: HttpInfo<PipelineRunNode>) => apiResponse.data));
    }

    /**
     * Retrieve run node details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     * @param step Name of the step
     */
    public getPipelineRunNodeStepWithHttpInfo(organization: string, pipeline: string, run: string, node: string, step: string, _options?: ConfigurationOptions): Observable<HttpInfo<PipelineStepImpl>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineRunNodeStep(organization, pipeline, run, node, step, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineRunNodeStepWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve run node details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     * @param step Name of the step
     */
    public getPipelineRunNodeStep(organization: string, pipeline: string, run: string, node: string, step: string, _options?: ConfigurationOptions): Observable<PipelineStepImpl> {
        return this.getPipelineRunNodeStepWithHttpInfo(organization, pipeline, run, node, step, _options).pipe(map((apiResponse: HttpInfo<PipelineStepImpl>) => apiResponse.data));
    }

    /**
     * Get log for a pipeline run node step
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     * @param step Name of the step
     */
    public getPipelineRunNodeStepLogWithHttpInfo(organization: string, pipeline: string, run: string, node: string, step: string, _options?: ConfigurationOptions): Observable<HttpInfo<string>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineRunNodeStepLog(organization, pipeline, run, node, step, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineRunNodeStepLogWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get log for a pipeline run node step
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     * @param step Name of the step
     */
    public getPipelineRunNodeStepLog(organization: string, pipeline: string, run: string, node: string, step: string, _options?: ConfigurationOptions): Observable<string> {
        return this.getPipelineRunNodeStepLogWithHttpInfo(organization, pipeline, run, node, step, _options).pipe(map((apiResponse: HttpInfo<string>) => apiResponse.data));
    }

    /**
     * Retrieve run node steps details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     */
    public getPipelineRunNodeStepsWithHttpInfo(organization: string, pipeline: string, run: string, node: string, _options?: ConfigurationOptions): Observable<HttpInfo<Array<PipelineStepImpl>>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineRunNodeSteps(organization, pipeline, run, node, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineRunNodeStepsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve run node steps details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param node Name of the node
     */
    public getPipelineRunNodeSteps(organization: string, pipeline: string, run: string, node: string, _options?: ConfigurationOptions): Observable<Array<PipelineStepImpl>> {
        return this.getPipelineRunNodeStepsWithHttpInfo(organization, pipeline, run, node, _options).pipe(map((apiResponse: HttpInfo<Array<PipelineStepImpl>>) => apiResponse.data));
    }

    /**
     * Retrieve run nodes details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public getPipelineRunNodesWithHttpInfo(organization: string, pipeline: string, run: string, _options?: ConfigurationOptions): Observable<HttpInfo<Array<PipelineRunNode>>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineRunNodes(organization, pipeline, run, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineRunNodesWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve run nodes details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public getPipelineRunNodes(organization: string, pipeline: string, run: string, _options?: ConfigurationOptions): Observable<Array<PipelineRunNode>> {
        return this.getPipelineRunNodesWithHttpInfo(organization, pipeline, run, _options).pipe(map((apiResponse: HttpInfo<Array<PipelineRunNode>>) => apiResponse.data));
    }

    /**
     * Retrieve all runs details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineRunsWithHttpInfo(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<HttpInfo<Array<PipelineRun>>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelineRuns(organization, pipeline, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelineRunsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve all runs details for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public getPipelineRuns(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<Array<PipelineRun>> {
        return this.getPipelineRunsWithHttpInfo(organization, pipeline, _options).pipe(map((apiResponse: HttpInfo<Array<PipelineRun>>) => apiResponse.data));
    }

    /**
     * Retrieve all pipelines details for an organization
     * @param organization Name of the organization
     */
    public getPipelinesWithHttpInfo(organization: string, _options?: ConfigurationOptions): Observable<HttpInfo<Array<Pipeline>>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getPipelines(organization, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getPipelinesWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve all pipelines details for an organization
     * @param organization Name of the organization
     */
    public getPipelines(organization: string, _options?: ConfigurationOptions): Observable<Array<Pipeline>> {
        return this.getPipelinesWithHttpInfo(organization, _options).pipe(map((apiResponse: HttpInfo<Array<Pipeline>>) => apiResponse.data));
    }

    /**
     * Retrieve SCM details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     */
    public getSCMWithHttpInfo(organization: string, scm: string, _options?: ConfigurationOptions): Observable<HttpInfo<GithubScm>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getSCM(organization, scm, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getSCMWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve SCM details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     */
    public getSCM(organization: string, scm: string, _options?: ConfigurationOptions): Observable<GithubScm> {
        return this.getSCMWithHttpInfo(organization, scm, _options).pipe(map((apiResponse: HttpInfo<GithubScm>) => apiResponse.data));
    }

    /**
     * Retrieve SCM organization repositories details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     * @param scmOrganisation Name of the SCM organization
     * @param [credentialId] Credential ID
     * @param [pageSize] Number of items in a page
     * @param [pageNumber] Page number
     */
    public getSCMOrganisationRepositoriesWithHttpInfo(organization: string, scm: string, scmOrganisation: string, credentialId?: string, pageSize?: number, pageNumber?: number, _options?: ConfigurationOptions): Observable<HttpInfo<Array<GithubOrganization>>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getSCMOrganisationRepositoriesWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve SCM organization repositories details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     * @param scmOrganisation Name of the SCM organization
     * @param [credentialId] Credential ID
     * @param [pageSize] Number of items in a page
     * @param [pageNumber] Page number
     */
    public getSCMOrganisationRepositories(organization: string, scm: string, scmOrganisation: string, credentialId?: string, pageSize?: number, pageNumber?: number, _options?: ConfigurationOptions): Observable<Array<GithubOrganization>> {
        return this.getSCMOrganisationRepositoriesWithHttpInfo(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber, _options).pipe(map((apiResponse: HttpInfo<Array<GithubOrganization>>) => apiResponse.data));
    }

    /**
     * Retrieve SCM organization repository details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     * @param scmOrganisation Name of the SCM organization
     * @param repository Name of the SCM repository
     * @param [credentialId] Credential ID
     */
    public getSCMOrganisationRepositoryWithHttpInfo(organization: string, scm: string, scmOrganisation: string, repository: string, credentialId?: string, _options?: ConfigurationOptions): Observable<HttpInfo<Array<GithubOrganization>>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getSCMOrganisationRepositoryWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve SCM organization repository details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     * @param scmOrganisation Name of the SCM organization
     * @param repository Name of the SCM repository
     * @param [credentialId] Credential ID
     */
    public getSCMOrganisationRepository(organization: string, scm: string, scmOrganisation: string, repository: string, credentialId?: string, _options?: ConfigurationOptions): Observable<Array<GithubOrganization>> {
        return this.getSCMOrganisationRepositoryWithHttpInfo(organization, scm, scmOrganisation, repository, credentialId, _options).pipe(map((apiResponse: HttpInfo<Array<GithubOrganization>>) => apiResponse.data));
    }

    /**
     * Retrieve SCM organizations details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     * @param [credentialId] Credential ID
     */
    public getSCMOrganisationsWithHttpInfo(organization: string, scm: string, credentialId?: string, _options?: ConfigurationOptions): Observable<HttpInfo<Array<GithubOrganization>>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getSCMOrganisations(organization, scm, credentialId, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getSCMOrganisationsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve SCM organizations details for an organization
     * @param organization Name of the organization
     * @param scm Name of SCM
     * @param [credentialId] Credential ID
     */
    public getSCMOrganisations(organization: string, scm: string, credentialId?: string, _options?: ConfigurationOptions): Observable<Array<GithubOrganization>> {
        return this.getSCMOrganisationsWithHttpInfo(organization, scm, credentialId, _options).pipe(map((apiResponse: HttpInfo<Array<GithubOrganization>>) => apiResponse.data));
    }

    /**
     * Retrieve user details for an organization
     * @param organization Name of the organization
     * @param user Name of the user
     */
    public getUserWithHttpInfo(organization: string, user: string, _options?: ConfigurationOptions): Observable<HttpInfo<User>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getUser(organization, user, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getUserWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve user details for an organization
     * @param organization Name of the organization
     * @param user Name of the user
     */
    public getUser(organization: string, user: string, _options?: ConfigurationOptions): Observable<User> {
        return this.getUserWithHttpInfo(organization, user, _options).pipe(map((apiResponse: HttpInfo<User>) => apiResponse.data));
    }

    /**
     * Retrieve user favorites details for an organization
     * @param user Name of the user
     */
    public getUserFavoritesWithHttpInfo(user: string, _options?: ConfigurationOptions): Observable<HttpInfo<Array<FavoriteImpl>>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getUserFavorites(user, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getUserFavoritesWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve user favorites details for an organization
     * @param user Name of the user
     */
    public getUserFavorites(user: string, _options?: ConfigurationOptions): Observable<Array<FavoriteImpl>> {
        return this.getUserFavoritesWithHttpInfo(user, _options).pipe(map((apiResponse: HttpInfo<Array<FavoriteImpl>>) => apiResponse.data));
    }

    /**
     * Retrieve users details for an organization
     * @param organization Name of the organization
     */
    public getUsersWithHttpInfo(organization: string, _options?: ConfigurationOptions): Observable<HttpInfo<User>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getUsers(organization, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getUsersWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve users details for an organization
     * @param organization Name of the organization
     */
    public getUsers(organization: string, _options?: ConfigurationOptions): Observable<User> {
        return this.getUsersWithHttpInfo(organization, _options).pipe(map((apiResponse: HttpInfo<User>) => apiResponse.data));
    }

    /**
     * Replay an organization pipeline run
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public postPipelineRunWithHttpInfo(organization: string, pipeline: string, run: string, _options?: ConfigurationOptions): Observable<HttpInfo<QueueItemImpl>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.postPipelineRun(organization, pipeline, run, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.postPipelineRunWithHttpInfo(rsp)));
            }));
    }

    /**
     * Replay an organization pipeline run
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     */
    public postPipelineRun(organization: string, pipeline: string, run: string, _options?: ConfigurationOptions): Observable<QueueItemImpl> {
        return this.postPipelineRunWithHttpInfo(organization, pipeline, run, _options).pipe(map((apiResponse: HttpInfo<QueueItemImpl>) => apiResponse.data));
    }

    /**
     * Start a build for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public postPipelineRunsWithHttpInfo(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<HttpInfo<QueueItemImpl>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.postPipelineRuns(organization, pipeline, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.postPipelineRunsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Start a build for an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     */
    public postPipelineRuns(organization: string, pipeline: string, _options?: ConfigurationOptions): Observable<QueueItemImpl> {
        return this.postPipelineRunsWithHttpInfo(organization, pipeline, _options).pipe(map((apiResponse: HttpInfo<QueueItemImpl>) => apiResponse.data));
    }

    /**
     * Favorite/unfavorite a pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param body Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite
     */
    public putPipelineFavoriteWithHttpInfo(organization: string, pipeline: string, body: boolean, _options?: ConfigurationOptions): Observable<HttpInfo<FavoriteImpl>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.putPipelineFavorite(organization, pipeline, body, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.putPipelineFavoriteWithHttpInfo(rsp)));
            }));
    }

    /**
     * Favorite/unfavorite a pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param body Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite
     */
    public putPipelineFavorite(organization: string, pipeline: string, body: boolean, _options?: ConfigurationOptions): Observable<FavoriteImpl> {
        return this.putPipelineFavoriteWithHttpInfo(organization, pipeline, body, _options).pipe(map((apiResponse: HttpInfo<FavoriteImpl>) => apiResponse.data));
    }

    /**
     * Stop a build of an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param [blocking] Set to true to make blocking stop, default: false
     * @param [timeOutInSecs] Timeout in seconds, default: 10 seconds
     */
    public putPipelineRunWithHttpInfo(organization: string, pipeline: string, run: string, blocking?: string, timeOutInSecs?: number, _options?: ConfigurationOptions): Observable<HttpInfo<PipelineRun>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.putPipelineRunWithHttpInfo(rsp)));
            }));
    }

    /**
     * Stop a build of an organization pipeline
     * @param organization Name of the organization
     * @param pipeline Name of the pipeline
     * @param run Name of the run
     * @param [blocking] Set to true to make blocking stop, default: false
     * @param [timeOutInSecs] Timeout in seconds, default: 10 seconds
     */
    public putPipelineRun(organization: string, pipeline: string, run: string, blocking?: string, timeOutInSecs?: number, _options?: ConfigurationOptions): Observable<PipelineRun> {
        return this.putPipelineRunWithHttpInfo(organization, pipeline, run, blocking, timeOutInSecs, _options).pipe(map((apiResponse: HttpInfo<PipelineRun>) => apiResponse.data));
    }

    /**
     * Search for any resource details
     * @param q Query string
     */
    public searchWithHttpInfo(q: string, _options?: ConfigurationOptions): Observable<HttpInfo<string>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.search(q, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search for any resource details
     * @param q Query string
     */
    public search(q: string, _options?: ConfigurationOptions): Observable<string> {
        return this.searchWithHttpInfo(q, _options).pipe(map((apiResponse: HttpInfo<string>) => apiResponse.data));
    }

    /**
     * Get classes details
     * @param q Query string containing an array of class names
     */
    public searchClassesWithHttpInfo(q: string, _options?: ConfigurationOptions): Observable<HttpInfo<string>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.searchClasses(q, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchClassesWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get classes details
     * @param q Query string containing an array of class names
     */
    public searchClasses(q: string, _options?: ConfigurationOptions): Observable<string> {
        return this.searchClassesWithHttpInfo(q, _options).pipe(map((apiResponse: HttpInfo<string>) => apiResponse.data));
    }

}

import { RemoteAccessApiRequestFactory, RemoteAccessApiResponseProcessor} from "../apis/RemoteAccessApi";
export class ObservableRemoteAccessApi {
    private requestFactory: RemoteAccessApiRequestFactory;
    private responseProcessor: RemoteAccessApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: RemoteAccessApiRequestFactory,
        responseProcessor?: RemoteAccessApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new RemoteAccessApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new RemoteAccessApiResponseProcessor();
    }

    /**
     * Retrieve computer details
     * @param depth Recursion depth in response model
     */
    public getComputerWithHttpInfo(depth: number, _options?: ConfigurationOptions): Observable<HttpInfo<ComputerSet>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getComputer(depth, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getComputerWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve computer details
     * @param depth Recursion depth in response model
     */
    public getComputer(depth: number, _options?: ConfigurationOptions): Observable<ComputerSet> {
        return this.getComputerWithHttpInfo(depth, _options).pipe(map((apiResponse: HttpInfo<ComputerSet>) => apiResponse.data));
    }

    /**
     * Retrieve Jenkins details
     */
    public getJenkinsWithHttpInfo(_options?: ConfigurationOptions): Observable<HttpInfo<Hudson>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getJenkins(_config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getJenkinsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve Jenkins details
     */
    public getJenkins(_options?: ConfigurationOptions): Observable<Hudson> {
        return this.getJenkinsWithHttpInfo(_options).pipe(map((apiResponse: HttpInfo<Hudson>) => apiResponse.data));
    }

    /**
     * Retrieve job details
     * @param name Name of the job
     */
    public getJobWithHttpInfo(name: string, _options?: ConfigurationOptions): Observable<HttpInfo<FreeStyleProject>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getJob(name, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getJobWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve job details
     * @param name Name of the job
     */
    public getJob(name: string, _options?: ConfigurationOptions): Observable<FreeStyleProject> {
        return this.getJobWithHttpInfo(name, _options).pipe(map((apiResponse: HttpInfo<FreeStyleProject>) => apiResponse.data));
    }

    /**
     * Retrieve job configuration
     * @param name Name of the job
     */
    public getJobConfigWithHttpInfo(name: string, _options?: ConfigurationOptions): Observable<HttpInfo<string>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getJobConfig(name, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getJobConfigWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve job configuration
     * @param name Name of the job
     */
    public getJobConfig(name: string, _options?: ConfigurationOptions): Observable<string> {
        return this.getJobConfigWithHttpInfo(name, _options).pipe(map((apiResponse: HttpInfo<string>) => apiResponse.data));
    }

    /**
     * Retrieve job\'s last build details
     * @param name Name of the job
     */
    public getJobLastBuildWithHttpInfo(name: string, _options?: ConfigurationOptions): Observable<HttpInfo<FreeStyleBuild>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getJobLastBuild(name, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getJobLastBuildWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve job\'s last build details
     * @param name Name of the job
     */
    public getJobLastBuild(name: string, _options?: ConfigurationOptions): Observable<FreeStyleBuild> {
        return this.getJobLastBuildWithHttpInfo(name, _options).pipe(map((apiResponse: HttpInfo<FreeStyleBuild>) => apiResponse.data));
    }

    /**
     * Retrieve job\'s build progressive text output
     * @param name Name of the job
     * @param number Build number
     * @param start Starting point of progressive text output
     */
    public getJobProgressiveTextWithHttpInfo(name: string, number: string, start: string, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getJobProgressiveText(name, number, start, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getJobProgressiveTextWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve job\'s build progressive text output
     * @param name Name of the job
     * @param number Build number
     * @param start Starting point of progressive text output
     */
    public getJobProgressiveText(name: string, number: string, start: string, _options?: ConfigurationOptions): Observable<void> {
        return this.getJobProgressiveTextWithHttpInfo(name, number, start, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * Retrieve queue details
     */
    public getQueueWithHttpInfo(_options?: ConfigurationOptions): Observable<HttpInfo<Queue>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getQueue(_config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getQueueWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve queue details
     */
    public getQueue(_options?: ConfigurationOptions): Observable<Queue> {
        return this.getQueueWithHttpInfo(_options).pipe(map((apiResponse: HttpInfo<Queue>) => apiResponse.data));
    }

    /**
     * Retrieve queued item details
     * @param number Queue number
     */
    public getQueueItemWithHttpInfo(number: string, _options?: ConfigurationOptions): Observable<HttpInfo<Queue>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getQueueItem(number, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getQueueItemWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve queued item details
     * @param number Queue number
     */
    public getQueueItem(number: string, _options?: ConfigurationOptions): Observable<Queue> {
        return this.getQueueItemWithHttpInfo(number, _options).pipe(map((apiResponse: HttpInfo<Queue>) => apiResponse.data));
    }

    /**
     * Retrieve view details
     * @param name Name of the view
     */
    public getViewWithHttpInfo(name: string, _options?: ConfigurationOptions): Observable<HttpInfo<ListView>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getView(name, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getViewWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve view details
     * @param name Name of the view
     */
    public getView(name: string, _options?: ConfigurationOptions): Observable<ListView> {
        return this.getViewWithHttpInfo(name, _options).pipe(map((apiResponse: HttpInfo<ListView>) => apiResponse.data));
    }

    /**
     * Retrieve view configuration
     * @param name Name of the view
     */
    public getViewConfigWithHttpInfo(name: string, _options?: ConfigurationOptions): Observable<HttpInfo<string>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getViewConfig(name, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getViewConfigWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve view configuration
     * @param name Name of the view
     */
    public getViewConfig(name: string, _options?: ConfigurationOptions): Observable<string> {
        return this.getViewConfigWithHttpInfo(name, _options).pipe(map((apiResponse: HttpInfo<string>) => apiResponse.data));
    }

    /**
     * Retrieve Jenkins headers
     */
    public headJenkinsWithHttpInfo(_options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.headJenkins(_config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.headJenkinsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve Jenkins headers
     */
    public headJenkins(_options?: ConfigurationOptions): Observable<void> {
        return this.headJenkinsWithHttpInfo(_options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * Create a new job using job configuration, or copied from an existing job
     * @param name Name of the new job
     * @param [_from] Existing job to copy from
     * @param [mode] Set to \&#39;copy\&#39; for copying an existing job
     * @param [jenkinsCrumb] CSRF protection token
     * @param [contentType] Content type header application/xml
     * @param [body] Job configuration in config.xml format
     */
    public postCreateItemWithHttpInfo(name: string, _from?: string, mode?: string, jenkinsCrumb?: string, contentType?: string, body?: string, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.postCreateItem(name, _from, mode, jenkinsCrumb, contentType, body, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.postCreateItemWithHttpInfo(rsp)));
            }));
    }

    /**
     * Create a new job using job configuration, or copied from an existing job
     * @param name Name of the new job
     * @param [_from] Existing job to copy from
     * @param [mode] Set to \&#39;copy\&#39; for copying an existing job
     * @param [jenkinsCrumb] CSRF protection token
     * @param [contentType] Content type header application/xml
     * @param [body] Job configuration in config.xml format
     */
    public postCreateItem(name: string, _from?: string, mode?: string, jenkinsCrumb?: string, contentType?: string, body?: string, _options?: ConfigurationOptions): Observable<void> {
        return this.postCreateItemWithHttpInfo(name, _from, mode, jenkinsCrumb, contentType, body, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * Create a new view using view configuration
     * @param name Name of the new view
     * @param [jenkinsCrumb] CSRF protection token
     * @param [contentType] Content type header application/xml
     * @param [body] View configuration in config.xml format
     */
    public postCreateViewWithHttpInfo(name: string, jenkinsCrumb?: string, contentType?: string, body?: string, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.postCreateView(name, jenkinsCrumb, contentType, body, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.postCreateViewWithHttpInfo(rsp)));
            }));
    }

    /**
     * Create a new view using view configuration
     * @param name Name of the new view
     * @param [jenkinsCrumb] CSRF protection token
     * @param [contentType] Content type header application/xml
     * @param [body] View configuration in config.xml format
     */
    public postCreateView(name: string, jenkinsCrumb?: string, contentType?: string, body?: string, _options?: ConfigurationOptions): Observable<void> {
        return this.postCreateViewWithHttpInfo(name, jenkinsCrumb, contentType, body, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * Build a job
     * @param name Name of the job
     * @param json
     * @param [token]
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobBuildWithHttpInfo(name: string, json: string, token?: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.postJobBuild(name, json, token, jenkinsCrumb, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.postJobBuildWithHttpInfo(rsp)));
            }));
    }

    /**
     * Build a job
     * @param name Name of the job
     * @param json
     * @param [token]
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobBuild(name: string, json: string, token?: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<void> {
        return this.postJobBuildWithHttpInfo(name, json, token, jenkinsCrumb, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * Update job configuration
     * @param name Name of the job
     * @param body Job configuration in config.xml format
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobConfigWithHttpInfo(name: string, body: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.postJobConfig(name, body, jenkinsCrumb, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.postJobConfigWithHttpInfo(rsp)));
            }));
    }

    /**
     * Update job configuration
     * @param name Name of the job
     * @param body Job configuration in config.xml format
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobConfig(name: string, body: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<void> {
        return this.postJobConfigWithHttpInfo(name, body, jenkinsCrumb, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * Delete a job
     * @param name Name of the job
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobDeleteWithHttpInfo(name: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.postJobDelete(name, jenkinsCrumb, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.postJobDeleteWithHttpInfo(rsp)));
            }));
    }

    /**
     * Delete a job
     * @param name Name of the job
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobDelete(name: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<void> {
        return this.postJobDeleteWithHttpInfo(name, jenkinsCrumb, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * Disable a job
     * @param name Name of the job
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobDisableWithHttpInfo(name: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.postJobDisable(name, jenkinsCrumb, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.postJobDisableWithHttpInfo(rsp)));
            }));
    }

    /**
     * Disable a job
     * @param name Name of the job
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobDisable(name: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<void> {
        return this.postJobDisableWithHttpInfo(name, jenkinsCrumb, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * Enable a job
     * @param name Name of the job
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobEnableWithHttpInfo(name: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.postJobEnable(name, jenkinsCrumb, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.postJobEnableWithHttpInfo(rsp)));
            }));
    }

    /**
     * Enable a job
     * @param name Name of the job
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobEnable(name: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<void> {
        return this.postJobEnableWithHttpInfo(name, jenkinsCrumb, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * Stop a job
     * @param name Name of the job
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobLastBuildStopWithHttpInfo(name: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.postJobLastBuildStop(name, jenkinsCrumb, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.postJobLastBuildStopWithHttpInfo(rsp)));
            }));
    }

    /**
     * Stop a job
     * @param name Name of the job
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postJobLastBuildStop(name: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<void> {
        return this.postJobLastBuildStopWithHttpInfo(name, jenkinsCrumb, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * Update view configuration
     * @param name Name of the view
     * @param body View configuration in config.xml format
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postViewConfigWithHttpInfo(name: string, body: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.postViewConfig(name, body, jenkinsCrumb, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.postViewConfigWithHttpInfo(rsp)));
            }));
    }

    /**
     * Update view configuration
     * @param name Name of the view
     * @param body View configuration in config.xml format
     * @param [jenkinsCrumb] CSRF protection token
     */
    public postViewConfig(name: string, body: string, jenkinsCrumb?: string, _options?: ConfigurationOptions): Observable<void> {
        return this.postViewConfigWithHttpInfo(name, body, jenkinsCrumb, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

}
