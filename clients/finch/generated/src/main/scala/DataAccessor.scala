package io.swagger

// TODO: properly handle custom imports
import java.io._
import java.util.Date

import io.swagger.models._

trait DataAccessor {
    // TODO: apiInfo -> apis -> operations = ???
    // NOTE: ??? throws a not implemented exception

        /**
        * 
        * @return A Unit
        */
        def BlueOcean_deletePipelineQueueItem(organization: String, pipeline: String, queue: String): Unit = ???

        /**
        * 
        * @return A User
        */
        def BlueOcean_getAuthenticatedUser(organization: String): User = ???

        /**
        * 
        * @return A String
        */
        def BlueOcean_getClasses(_class: String): String = ???

        /**
        * 
        * @return A Organisation
        */
        def BlueOcean_getOrganisation(organization: String): Organisation = ???

        /**
        * 
        * @return A Organisations
        */
        def BlueOcean_getOrganisations(): Organisations = ???

        /**
        * 
        * @return A Pipeline
        */
        def BlueOcean_getPipeline(organization: String, pipeline: String): Pipeline = ???

        /**
        * 
        * @return A PipelineActivities
        */
        def BlueOcean_getPipelineActivities(organization: String, pipeline: String): PipelineActivities = ???

        /**
        * 
        * @return A BranchImpl
        */
        def BlueOcean_getPipelineBranch(organization: String, pipeline: String, branch: String): BranchImpl = ???

        /**
        * 
        * @return A PipelineRun
        */
        def BlueOcean_getPipelineBranchRun(organization: String, pipeline: String, branch: String, run: String): PipelineRun = ???

        /**
        * 
        * @return A MultibranchPipeline
        */
        def BlueOcean_getPipelineBranches(organization: String, pipeline: String): MultibranchPipeline = ???

        /**
        * 
        * @return A PipelineFolderImpl
        */
        def BlueOcean_getPipelineFolder(organization: String, folder: String): PipelineFolderImpl = ???

        /**
        * 
        * @return A PipelineImpl
        */
        def BlueOcean_getPipelineFolderPipeline(organization: String, pipeline: String, folder: String): PipelineImpl = ???

        /**
        * 
        * @return A PipelineQueue
        */
        def BlueOcean_getPipelineQueue(organization: String, pipeline: String): PipelineQueue = ???

        /**
        * 
        * @return A PipelineRun
        */
        def BlueOcean_getPipelineRun(organization: String, pipeline: String, run: String): PipelineRun = ???

        /**
        * 
        * @return A String
        */
        def BlueOcean_getPipelineRunLog(organization: String, pipeline: String, run: String, start: Int, download: Boolean): String = ???

        /**
        * 
        * @return A PipelineRunNode
        */
        def BlueOcean_getPipelineRunNode(organization: String, pipeline: String, run: String, node: String): PipelineRunNode = ???

        /**
        * 
        * @return A PipelineStepImpl
        */
        def BlueOcean_getPipelineRunNodeStep(organization: String, pipeline: String, run: String, node: String, step: String): PipelineStepImpl = ???

        /**
        * 
        * @return A String
        */
        def BlueOcean_getPipelineRunNodeStepLog(organization: String, pipeline: String, run: String, node: String, step: String): String = ???

        /**
        * 
        * @return A PipelineRunNodeSteps
        */
        def BlueOcean_getPipelineRunNodeSteps(organization: String, pipeline: String, run: String, node: String): PipelineRunNodeSteps = ???

        /**
        * 
        * @return A PipelineRunNodes
        */
        def BlueOcean_getPipelineRunNodes(organization: String, pipeline: String, run: String): PipelineRunNodes = ???

        /**
        * 
        * @return A PipelineRuns
        */
        def BlueOcean_getPipelineRuns(organization: String, pipeline: String): PipelineRuns = ???

        /**
        * 
        * @return A Pipelines
        */
        def BlueOcean_getPipelines(organization: String): Pipelines = ???

        /**
        * 
        * @return A GithubScm
        */
        def BlueOcean_getSCM(organization: String, scm: String): GithubScm = ???

        /**
        * 
        * @return A ScmOrganisations
        */
        def BlueOcean_getSCMOrganisationRepositories(organization: String, scm: String, scmOrganisation: String, credentialId: String, pageSize: Int, pageNumber: Int): ScmOrganisations = ???

        /**
        * 
        * @return A ScmOrganisations
        */
        def BlueOcean_getSCMOrganisationRepository(organization: String, scm: String, scmOrganisation: String, repository: String, credentialId: String): ScmOrganisations = ???

        /**
        * 
        * @return A ScmOrganisations
        */
        def BlueOcean_getSCMOrganisations(organization: String, scm: String, credentialId: String): ScmOrganisations = ???

        /**
        * 
        * @return A User
        */
        def BlueOcean_getUser(organization: String, user: String): User = ???

        /**
        * 
        * @return A UserFavorites
        */
        def BlueOcean_getUserFavorites(user: String): UserFavorites = ???

        /**
        * 
        * @return A User
        */
        def BlueOcean_getUsers(organization: String): User = ???

        /**
        * 
        * @return A QueueItemImpl
        */
        def BlueOcean_postPipelineRun(organization: String, pipeline: String, run: String): QueueItemImpl = ???

        /**
        * 
        * @return A QueueItemImpl
        */
        def BlueOcean_postPipelineRuns(organization: String, pipeline: String): QueueItemImpl = ???

        /**
        * 
        * @return A FavoriteImpl
        */
        def BlueOcean_putPipelineFavorite(organization: String, pipeline: String, body: Body): FavoriteImpl = ???

        /**
        * 
        * @return A PipelineRun
        */
        def BlueOcean_putPipelineRun(organization: String, pipeline: String, run: String, blocking: String, timeOutInSecs: Int): PipelineRun = ???

        /**
        * 
        * @return A String
        */
        def BlueOcean_search(q: String): String = ???

        /**
        * 
        * @return A String
        */
        def BlueOcean_searchClasses(q: String): String = ???

        /**
        * 
        * @return A ComputerSet
        */
        def RemoteAccess_getComputer(depth: Int): ComputerSet = ???

        /**
        * 
        * @return A DefaultCrumbIssuer
        */
        def RemoteAccess_getCrumb(): DefaultCrumbIssuer = ???

        /**
        * 
        * @return A Hudson
        */
        def RemoteAccess_getJenkins(): Hudson = ???

        /**
        * 
        * @return A FreeStyleProject
        */
        def RemoteAccess_getJob(name: String): FreeStyleProject = ???

        /**
        * 
        * @return A String
        */
        def RemoteAccess_getJobConfig(name: String): String = ???

        /**
        * 
        * @return A FreeStyleBuild
        */
        def RemoteAccess_getJobLastBuild(name: String): FreeStyleBuild = ???

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_getJobProgressiveText(name: String, number: String, start: String): Unit = ???

        /**
        * 
        * @return A Queue
        */
        def RemoteAccess_getQueue(): Queue = ???

        /**
        * 
        * @return A Queue
        */
        def RemoteAccess_getQueueItem(number: String): Queue = ???

        /**
        * 
        * @return A ListView
        */
        def RemoteAccess_getView(name: String): ListView = ???

        /**
        * 
        * @return A String
        */
        def RemoteAccess_getViewConfig(name: String): String = ???

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_headJenkins(): Unit = ???

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postCreateItem(name: String, from: String, mode: String, body: String, jenkinsCrumb: String, contentType: String): Unit = ???

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postCreateView(name: String, body: String, jenkinsCrumb: String, contentType: String): Unit = ???

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobBuild(name: String, json: String, token: String, jenkinsCrumb: String): Unit = ???

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobConfig(name: String, body: String, jenkinsCrumb: String): Unit = ???

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobDelete(name: String, jenkinsCrumb: String): Unit = ???

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobDisable(name: String, jenkinsCrumb: String): Unit = ???

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobEnable(name: String, jenkinsCrumb: String): Unit = ???

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobLastBuildStop(name: String, jenkinsCrumb: String): Unit = ???

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postViewConfig(name: String, body: String, jenkinsCrumb: String): Unit = ???

}