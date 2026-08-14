import { Body, Controller, DefaultValuePipe, Delete, Get, Post, Put, Param, ParseIntPipe, ParseFloatPipe, Query, Req } from '@nestjs/common';
import { Observable } from 'rxjs';
import { Cookies, Headers } from '../decorators';
import { BlueOceanApi } from '../api';
import { BranchImpl, FavoriteImpl, GithubOrganization, GithubScm, MultibranchPipeline, Organisation, Pipeline, PipelineActivity, PipelineFolderImpl, PipelineImpl, PipelineRun, PipelineRunNode, PipelineStepImpl, QueueItemImpl, User,  } from '../models';

@Controller()
export class BlueOceanApiController {
  constructor(private readonly blueOceanApi: BlueOceanApi) {}

  @Delete('/blue/rest/organizations/:organization/pipelines/:pipeline/queue/:queue')
  deletePipelineQueueItem(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('queue') queue: string, @Req() request: Request): void | Promise<void> | Observable<void> {
    return this.blueOceanApi.deletePipelineQueueItem(organization, pipeline, queue, request);
  }

  @Get('/blue/rest/organizations/:organization/user/')
  getAuthenticatedUser(@Param('organization') organization: string, @Req() request: Request): User | Promise<User> | Observable<User> {
    return this.blueOceanApi.getAuthenticatedUser(organization, request);
  }

  @Get('/blue/rest/classes/:class')
  getClasses(@Param('class') _class: string, @Req() request: Request): string | Promise<string> | Observable<string> {
    return this.blueOceanApi.getClasses(_class, request);
  }

  @Get('/jwt-auth/jwks/:key')
  getJsonWebKey(@Param('key') key: number, @Req() request: Request): string | Promise<string> | Observable<string> {
    return this.blueOceanApi.getJsonWebKey(key, request);
  }

  @Get('/jwt-auth/token')
  getJsonWebToken(@Query('expiryTimeInMins') expiryTimeInMins: number | undefined, @Query('maxExpiryTimeInMins') maxExpiryTimeInMins: number | undefined, @Req() request: Request): string | Promise<string> | Observable<string> {
    return this.blueOceanApi.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins, request);
  }

  @Get('/blue/rest/organizations/:organization')
  getOrganisation(@Param('organization') organization: string, @Req() request: Request): Organisation | Promise<Organisation> | Observable<Organisation> {
    return this.blueOceanApi.getOrganisation(organization, request);
  }

  @Get('/blue/rest/organizations/')
  getOrganisations(@Req() request: Request): Array<Organisation> | Promise<Array<Organisation>> | Observable<Array<Organisation>> {
    return this.blueOceanApi.getOrganisations(request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline')
  getPipeline(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Req() request: Request): Pipeline | Promise<Pipeline> | Observable<Pipeline> {
    return this.blueOceanApi.getPipeline(organization, pipeline, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/activities')
  getPipelineActivities(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Req() request: Request): Array<PipelineActivity> | Promise<Array<PipelineActivity>> | Observable<Array<PipelineActivity>> {
    return this.blueOceanApi.getPipelineActivities(organization, pipeline, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/')
  getPipelineBranch(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('branch') branch: string, @Req() request: Request): BranchImpl | Promise<BranchImpl> | Observable<BranchImpl> {
    return this.blueOceanApi.getPipelineBranch(organization, pipeline, branch, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/runs/:run')
  getPipelineBranchRun(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('branch') branch: string, @Param('run') run: string, @Req() request: Request): PipelineRun | Promise<PipelineRun> | Observable<PipelineRun> {
    return this.blueOceanApi.getPipelineBranchRun(organization, pipeline, branch, run, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/branches')
  getPipelineBranches(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Req() request: Request): MultibranchPipeline | Promise<MultibranchPipeline> | Observable<MultibranchPipeline> {
    return this.blueOceanApi.getPipelineBranches(organization, pipeline, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:folder/')
  getPipelineFolder(@Param('organization') organization: string, @Param('folder') folder: string, @Req() request: Request): PipelineFolderImpl | Promise<PipelineFolderImpl> | Observable<PipelineFolderImpl> {
    return this.blueOceanApi.getPipelineFolder(organization, folder, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:folder/pipelines/:pipeline')
  getPipelineFolderPipeline(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('folder') folder: string, @Req() request: Request): PipelineImpl | Promise<PipelineImpl> | Observable<PipelineImpl> {
    return this.blueOceanApi.getPipelineFolderPipeline(organization, pipeline, folder, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/queue')
  getPipelineQueue(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Req() request: Request): Array<QueueItemImpl> | Promise<Array<QueueItemImpl>> | Observable<Array<QueueItemImpl>> {
    return this.blueOceanApi.getPipelineQueue(organization, pipeline, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run')
  getPipelineRun(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('run') run: string, @Req() request: Request): PipelineRun | Promise<PipelineRun> | Observable<PipelineRun> {
    return this.blueOceanApi.getPipelineRun(organization, pipeline, run, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/log')
  getPipelineRunLog(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('run') run: string, @Query('start') start: number | undefined, @Query('download') download: boolean | undefined, @Req() request: Request): string | Promise<string> | Observable<string> {
    return this.blueOceanApi.getPipelineRunLog(organization, pipeline, run, start, download, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node')
  getPipelineRunNode(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('run') run: string, @Param('node') node: string, @Req() request: Request): PipelineRunNode | Promise<PipelineRunNode> | Observable<PipelineRunNode> {
    return this.blueOceanApi.getPipelineRunNode(organization, pipeline, run, node, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step')
  getPipelineRunNodeStep(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('run') run: string, @Param('node') node: string, @Param('step') step: string, @Req() request: Request): PipelineStepImpl | Promise<PipelineStepImpl> | Observable<PipelineStepImpl> {
    return this.blueOceanApi.getPipelineRunNodeStep(organization, pipeline, run, node, step, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step/log')
  getPipelineRunNodeStepLog(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('run') run: string, @Param('node') node: string, @Param('step') step: string, @Req() request: Request): string | Promise<string> | Observable<string> {
    return this.blueOceanApi.getPipelineRunNodeStepLog(organization, pipeline, run, node, step, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps')
  getPipelineRunNodeSteps(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('run') run: string, @Param('node') node: string, @Req() request: Request): Array<PipelineStepImpl> | Promise<Array<PipelineStepImpl>> | Observable<Array<PipelineStepImpl>> {
    return this.blueOceanApi.getPipelineRunNodeSteps(organization, pipeline, run, node, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes')
  getPipelineRunNodes(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('run') run: string, @Req() request: Request): Array<PipelineRunNode> | Promise<Array<PipelineRunNode>> | Observable<Array<PipelineRunNode>> {
    return this.blueOceanApi.getPipelineRunNodes(organization, pipeline, run, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/:pipeline/runs')
  getPipelineRuns(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Req() request: Request): Array<PipelineRun> | Promise<Array<PipelineRun>> | Observable<Array<PipelineRun>> {
    return this.blueOceanApi.getPipelineRuns(organization, pipeline, request);
  }

  @Get('/blue/rest/organizations/:organization/pipelines/')
  getPipelines(@Param('organization') organization: string, @Req() request: Request): Array<Pipeline> | Promise<Array<Pipeline>> | Observable<Array<Pipeline>> {
    return this.blueOceanApi.getPipelines(organization, request);
  }

  @Get('/blue/rest/organizations/:organization/scm/:scm')
  getSCM(@Param('organization') organization: string, @Param('scm') scm: string, @Req() request: Request): GithubScm | Promise<GithubScm> | Observable<GithubScm> {
    return this.blueOceanApi.getSCM(organization, scm, request);
  }

  @Get('/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories')
  getSCMOrganisationRepositories(@Param('organization') organization: string, @Param('scm') scm: string, @Param('scmOrganisation') scmOrganisation: string, @Query('credentialId') credentialId: string | undefined, @Query('pageSize') pageSize: number | undefined, @Query('pageNumber') pageNumber: number | undefined, @Req() request: Request): Array<GithubOrganization> | Promise<Array<GithubOrganization>> | Observable<Array<GithubOrganization>> {
    return this.blueOceanApi.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber, request);
  }

  @Get('/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories/:repository')
  getSCMOrganisationRepository(@Param('organization') organization: string, @Param('scm') scm: string, @Param('scmOrganisation') scmOrganisation: string, @Param('repository') repository: string, @Query('credentialId') credentialId: string | undefined, @Req() request: Request): Array<GithubOrganization> | Promise<Array<GithubOrganization>> | Observable<Array<GithubOrganization>> {
    return this.blueOceanApi.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId, request);
  }

  @Get('/blue/rest/organizations/:organization/scm/:scm/organizations')
  getSCMOrganisations(@Param('organization') organization: string, @Param('scm') scm: string, @Query('credentialId') credentialId: string | undefined, @Req() request: Request): Array<GithubOrganization> | Promise<Array<GithubOrganization>> | Observable<Array<GithubOrganization>> {
    return this.blueOceanApi.getSCMOrganisations(organization, scm, credentialId, request);
  }

  @Get('/blue/rest/organizations/:organization/users/:user')
  getUser(@Param('organization') organization: string, @Param('user') user: string, @Req() request: Request): User | Promise<User> | Observable<User> {
    return this.blueOceanApi.getUser(organization, user, request);
  }

  @Get('/blue/rest/users/:user/favorites')
  getUserFavorites(@Param('user') user: string, @Req() request: Request): Array<FavoriteImpl> | Promise<Array<FavoriteImpl>> | Observable<Array<FavoriteImpl>> {
    return this.blueOceanApi.getUserFavorites(user, request);
  }

  @Get('/blue/rest/organizations/:organization/users/')
  getUsers(@Param('organization') organization: string, @Req() request: Request): User | Promise<User> | Observable<User> {
    return this.blueOceanApi.getUsers(organization, request);
  }

  @Post('/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/replay')
  postPipelineRun(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('run') run: string, @Req() request: Request): QueueItemImpl | Promise<QueueItemImpl> | Observable<QueueItemImpl> {
    return this.blueOceanApi.postPipelineRun(organization, pipeline, run, request);
  }

  @Post('/blue/rest/organizations/:organization/pipelines/:pipeline/runs')
  postPipelineRuns(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Req() request: Request): QueueItemImpl | Promise<QueueItemImpl> | Observable<QueueItemImpl> {
    return this.blueOceanApi.postPipelineRuns(organization, pipeline, request);
  }

  @Put('/blue/rest/organizations/:organization/pipelines/:pipeline/favorite')
  putPipelineFavorite(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Body() body: boolean, @Req() request: Request): FavoriteImpl | Promise<FavoriteImpl> | Observable<FavoriteImpl> {
    return this.blueOceanApi.putPipelineFavorite(organization, pipeline, body, request);
  }

  @Put('/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/stop')
  putPipelineRun(@Param('organization') organization: string, @Param('pipeline') pipeline: string, @Param('run') run: string, @Query('blocking') blocking: string | undefined, @Query('timeOutInSecs') timeOutInSecs: number | undefined, @Req() request: Request): PipelineRun | Promise<PipelineRun> | Observable<PipelineRun> {
    return this.blueOceanApi.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs, request);
  }

  @Get('/blue/rest/search/')
  search(@Query('q') q: string, @Req() request: Request): string | Promise<string> | Observable<string> {
    return this.blueOceanApi.search(q, request);
  }

  @Get('/blue/rest/classes/')
  searchClasses(@Query('q') q: string, @Req() request: Request): string | Promise<string> | Observable<string> {
    return this.blueOceanApi.searchClasses(q, request);
  }

} 