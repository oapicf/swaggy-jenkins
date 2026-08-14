import { Injectable } from '@nestjs/common';
import { Observable } from 'rxjs';
import { BranchImpl, FavoriteImpl, GithubOrganization, GithubScm, MultibranchPipeline, Organisation, Pipeline, PipelineActivity, PipelineFolderImpl, PipelineImpl, PipelineRun, PipelineRunNode, PipelineStepImpl, QueueItemImpl, User,  } from '../models';


@Injectable()
export abstract class BlueOceanApi {

  abstract deletePipelineQueueItem(organization: string, pipeline: string, queue: string,  request: Request): void | Promise<void> | Observable<void>;


  abstract getAuthenticatedUser(organization: string,  request: Request): User | Promise<User> | Observable<User>;


  abstract getClasses(_class: string,  request: Request): string | Promise<string> | Observable<string>;


  abstract getJsonWebKey(key: number,  request: Request): string | Promise<string> | Observable<string>;


  abstract getJsonWebToken(expiryTimeInMins: number | undefined, maxExpiryTimeInMins: number | undefined,  request: Request): string | Promise<string> | Observable<string>;


  abstract getOrganisation(organization: string,  request: Request): Organisation | Promise<Organisation> | Observable<Organisation>;


  abstract getOrganisations( request: Request): Array<Organisation> | Promise<Array<Organisation>> | Observable<Array<Organisation>>;


  abstract getPipeline(organization: string, pipeline: string,  request: Request): Pipeline | Promise<Pipeline> | Observable<Pipeline>;


  abstract getPipelineActivities(organization: string, pipeline: string,  request: Request): Array<PipelineActivity> | Promise<Array<PipelineActivity>> | Observable<Array<PipelineActivity>>;


  abstract getPipelineBranch(organization: string, pipeline: string, branch: string,  request: Request): BranchImpl | Promise<BranchImpl> | Observable<BranchImpl>;


  abstract getPipelineBranchRun(organization: string, pipeline: string, branch: string, run: string,  request: Request): PipelineRun | Promise<PipelineRun> | Observable<PipelineRun>;


  abstract getPipelineBranches(organization: string, pipeline: string,  request: Request): MultibranchPipeline | Promise<MultibranchPipeline> | Observable<MultibranchPipeline>;


  abstract getPipelineFolder(organization: string, folder: string,  request: Request): PipelineFolderImpl | Promise<PipelineFolderImpl> | Observable<PipelineFolderImpl>;


  abstract getPipelineFolderPipeline(organization: string, pipeline: string, folder: string,  request: Request): PipelineImpl | Promise<PipelineImpl> | Observable<PipelineImpl>;


  abstract getPipelineQueue(organization: string, pipeline: string,  request: Request): Array<QueueItemImpl> | Promise<Array<QueueItemImpl>> | Observable<Array<QueueItemImpl>>;


  abstract getPipelineRun(organization: string, pipeline: string, run: string,  request: Request): PipelineRun | Promise<PipelineRun> | Observable<PipelineRun>;


  abstract getPipelineRunLog(organization: string, pipeline: string, run: string, start: number | undefined, download: boolean | undefined,  request: Request): string | Promise<string> | Observable<string>;


  abstract getPipelineRunNode(organization: string, pipeline: string, run: string, node: string,  request: Request): PipelineRunNode | Promise<PipelineRunNode> | Observable<PipelineRunNode>;


  abstract getPipelineRunNodeStep(organization: string, pipeline: string, run: string, node: string, step: string,  request: Request): PipelineStepImpl | Promise<PipelineStepImpl> | Observable<PipelineStepImpl>;


  abstract getPipelineRunNodeStepLog(organization: string, pipeline: string, run: string, node: string, step: string,  request: Request): string | Promise<string> | Observable<string>;


  abstract getPipelineRunNodeSteps(organization: string, pipeline: string, run: string, node: string,  request: Request): Array<PipelineStepImpl> | Promise<Array<PipelineStepImpl>> | Observable<Array<PipelineStepImpl>>;


  abstract getPipelineRunNodes(organization: string, pipeline: string, run: string,  request: Request): Array<PipelineRunNode> | Promise<Array<PipelineRunNode>> | Observable<Array<PipelineRunNode>>;


  abstract getPipelineRuns(organization: string, pipeline: string,  request: Request): Array<PipelineRun> | Promise<Array<PipelineRun>> | Observable<Array<PipelineRun>>;


  abstract getPipelines(organization: string,  request: Request): Array<Pipeline> | Promise<Array<Pipeline>> | Observable<Array<Pipeline>>;


  abstract getSCM(organization: string, scm: string,  request: Request): GithubScm | Promise<GithubScm> | Observable<GithubScm>;


  abstract getSCMOrganisationRepositories(organization: string, scm: string, scmOrganisation: string, credentialId: string | undefined, pageSize: number | undefined, pageNumber: number | undefined,  request: Request): Array<GithubOrganization> | Promise<Array<GithubOrganization>> | Observable<Array<GithubOrganization>>;


  abstract getSCMOrganisationRepository(organization: string, scm: string, scmOrganisation: string, repository: string, credentialId: string | undefined,  request: Request): Array<GithubOrganization> | Promise<Array<GithubOrganization>> | Observable<Array<GithubOrganization>>;


  abstract getSCMOrganisations(organization: string, scm: string, credentialId: string | undefined,  request: Request): Array<GithubOrganization> | Promise<Array<GithubOrganization>> | Observable<Array<GithubOrganization>>;


  abstract getUser(organization: string, user: string,  request: Request): User | Promise<User> | Observable<User>;


  abstract getUserFavorites(user: string,  request: Request): Array<FavoriteImpl> | Promise<Array<FavoriteImpl>> | Observable<Array<FavoriteImpl>>;


  abstract getUsers(organization: string,  request: Request): User | Promise<User> | Observable<User>;


  abstract postPipelineRun(organization: string, pipeline: string, run: string,  request: Request): QueueItemImpl | Promise<QueueItemImpl> | Observable<QueueItemImpl>;


  abstract postPipelineRuns(organization: string, pipeline: string,  request: Request): QueueItemImpl | Promise<QueueItemImpl> | Observable<QueueItemImpl>;


  abstract putPipelineFavorite(organization: string, pipeline: string, body: boolean,  request: Request): FavoriteImpl | Promise<FavoriteImpl> | Observable<FavoriteImpl>;


  abstract putPipelineRun(organization: string, pipeline: string, run: string, blocking: string | undefined, timeOutInSecs: number | undefined,  request: Request): PipelineRun | Promise<PipelineRun> | Observable<PipelineRun>;


  abstract search(q: string,  request: Request): string | Promise<string> | Observable<string>;


  abstract searchClasses(q: string,  request: Request): string | Promise<string> | Observable<string>;

} 