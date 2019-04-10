package org.openapitools

// TODO: properly handle custom imports
import java.io._
import java.util.UUID
import java.time._
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}

import org.openapitools.models._

trait DataAccessor {
    // TODO: apiInfo -> apis -> operations = TODO error
    private object TODO extends CommonError("Not implemented") {
        def message = "Not implemented"
    }

        /**
        * 
        * @return A DefaultCrumbIssuer
        */
        def Base_getCrumb(): Either[CommonError,DefaultCrumbIssuer] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def BlueOcean_deletePipelineQueueItem(organization: String, pipeline: String, queue: String): Either[CommonError,Unit] = Left(TODO)

        /**
        * 
        * @return A User
        */
        def BlueOcean_getAuthenticatedUser(organization: String): Either[CommonError,User] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def BlueOcean_getClasses(_class: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def BlueOcean_getJsonWebKey(key: Int): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def BlueOcean_getJsonWebToken(expiryTimeInMins: Option[Int], maxExpiryTimeInMins: Option[Int]): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A Organisation
        */
        def BlueOcean_getOrganisation(organization: String): Either[CommonError,Organisation] = Left(TODO)

        /**
        * 
        * @return A Organisations
        */
        def BlueOcean_getOrganisations(): Either[CommonError,Organisations] = Left(TODO)

        /**
        * 
        * @return A Pipeline
        */
        def BlueOcean_getPipeline(organization: String, pipeline: String): Either[CommonError,Pipeline] = Left(TODO)

        /**
        * 
        * @return A PipelineActivities
        */
        def BlueOcean_getPipelineActivities(organization: String, pipeline: String): Either[CommonError,PipelineActivities] = Left(TODO)

        /**
        * 
        * @return A BranchImpl
        */
        def BlueOcean_getPipelineBranch(organization: String, pipeline: String, branch: String): Either[CommonError,BranchImpl] = Left(TODO)

        /**
        * 
        * @return A PipelineRun
        */
        def BlueOcean_getPipelineBranchRun(organization: String, pipeline: String, branch: String, run: String): Either[CommonError,PipelineRun] = Left(TODO)

        /**
        * 
        * @return A MultibranchPipeline
        */
        def BlueOcean_getPipelineBranches(organization: String, pipeline: String): Either[CommonError,MultibranchPipeline] = Left(TODO)

        /**
        * 
        * @return A PipelineFolderImpl
        */
        def BlueOcean_getPipelineFolder(organization: String, folder: String): Either[CommonError,PipelineFolderImpl] = Left(TODO)

        /**
        * 
        * @return A PipelineImpl
        */
        def BlueOcean_getPipelineFolderPipeline(organization: String, pipeline: String, folder: String): Either[CommonError,PipelineImpl] = Left(TODO)

        /**
        * 
        * @return A PipelineQueue
        */
        def BlueOcean_getPipelineQueue(organization: String, pipeline: String): Either[CommonError,PipelineQueue] = Left(TODO)

        /**
        * 
        * @return A PipelineRun
        */
        def BlueOcean_getPipelineRun(organization: String, pipeline: String, run: String): Either[CommonError,PipelineRun] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def BlueOcean_getPipelineRunLog(organization: String, pipeline: String, run: String, start: Option[Int], download: Option[Boolean]): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A PipelineRunNode
        */
        def BlueOcean_getPipelineRunNode(organization: String, pipeline: String, run: String, node: String): Either[CommonError,PipelineRunNode] = Left(TODO)

        /**
        * 
        * @return A PipelineStepImpl
        */
        def BlueOcean_getPipelineRunNodeStep(organization: String, pipeline: String, run: String, node: String, step: String): Either[CommonError,PipelineStepImpl] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def BlueOcean_getPipelineRunNodeStepLog(organization: String, pipeline: String, run: String, node: String, step: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A PipelineRunNodeSteps
        */
        def BlueOcean_getPipelineRunNodeSteps(organization: String, pipeline: String, run: String, node: String): Either[CommonError,PipelineRunNodeSteps] = Left(TODO)

        /**
        * 
        * @return A PipelineRunNodes
        */
        def BlueOcean_getPipelineRunNodes(organization: String, pipeline: String, run: String): Either[CommonError,PipelineRunNodes] = Left(TODO)

        /**
        * 
        * @return A PipelineRuns
        */
        def BlueOcean_getPipelineRuns(organization: String, pipeline: String): Either[CommonError,PipelineRuns] = Left(TODO)

        /**
        * 
        * @return A Pipelines
        */
        def BlueOcean_getPipelines(organization: String): Either[CommonError,Pipelines] = Left(TODO)

        /**
        * 
        * @return A GithubScm
        */
        def BlueOcean_getSCM(organization: String, scm: String): Either[CommonError,GithubScm] = Left(TODO)

        /**
        * 
        * @return A ScmOrganisations
        */
        def BlueOcean_getSCMOrganisationRepositories(organization: String, scm: String, scmOrganisation: String, credentialId: Option[String], pageSize: Option[Int], pageNumber: Option[Int]): Either[CommonError,ScmOrganisations] = Left(TODO)

        /**
        * 
        * @return A ScmOrganisations
        */
        def BlueOcean_getSCMOrganisationRepository(organization: String, scm: String, scmOrganisation: String, repository: String, credentialId: Option[String]): Either[CommonError,ScmOrganisations] = Left(TODO)

        /**
        * 
        * @return A ScmOrganisations
        */
        def BlueOcean_getSCMOrganisations(organization: String, scm: String, credentialId: Option[String]): Either[CommonError,ScmOrganisations] = Left(TODO)

        /**
        * 
        * @return A User
        */
        def BlueOcean_getUser(organization: String, user: String): Either[CommonError,User] = Left(TODO)

        /**
        * 
        * @return A UserFavorites
        */
        def BlueOcean_getUserFavorites(user: String): Either[CommonError,UserFavorites] = Left(TODO)

        /**
        * 
        * @return A User
        */
        def BlueOcean_getUsers(organization: String): Either[CommonError,User] = Left(TODO)

        /**
        * 
        * @return A QueueItemImpl
        */
        def BlueOcean_postPipelineRun(organization: String, pipeline: String, run: String): Either[CommonError,QueueItemImpl] = Left(TODO)

        /**
        * 
        * @return A QueueItemImpl
        */
        def BlueOcean_postPipelineRuns(organization: String, pipeline: String): Either[CommonError,QueueItemImpl] = Left(TODO)

        /**
        * 
        * @return A FavoriteImpl
        */
        def BlueOcean_putPipelineFavorite(organization: String, pipeline: String, body: Body): Either[CommonError,FavoriteImpl] = Left(TODO)

        /**
        * 
        * @return A PipelineRun
        */
        def BlueOcean_putPipelineRun(organization: String, pipeline: String, run: String, blocking: Option[String], timeOutInSecs: Option[Int]): Either[CommonError,PipelineRun] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def BlueOcean_search(q: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def BlueOcean_searchClasses(q: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A ComputerSet
        */
        def RemoteAccess_getComputer(depth: Int): Either[CommonError,ComputerSet] = Left(TODO)

        /**
        * 
        * @return A Hudson
        */
        def RemoteAccess_getJenkins(): Either[CommonError,Hudson] = Left(TODO)

        /**
        * 
        * @return A FreeStyleProject
        */
        def RemoteAccess_getJob(name: String): Either[CommonError,FreeStyleProject] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def RemoteAccess_getJobConfig(name: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A FreeStyleBuild
        */
        def RemoteAccess_getJobLastBuild(name: String): Either[CommonError,FreeStyleBuild] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_getJobProgressiveText(name: String, number: String, start: String): Either[CommonError,Unit] = Left(TODO)

        /**
        * 
        * @return A Queue
        */
        def RemoteAccess_getQueue(): Either[CommonError,Queue] = Left(TODO)

        /**
        * 
        * @return A Queue
        */
        def RemoteAccess_getQueueItem(number: String): Either[CommonError,Queue] = Left(TODO)

        /**
        * 
        * @return A ListView
        */
        def RemoteAccess_getView(name: String): Either[CommonError,ListView] = Left(TODO)

        /**
        * 
        * @return A String
        */
        def RemoteAccess_getViewConfig(name: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_headJenkins(): Either[CommonError,Unit] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postCreateItem(name: String, from: Option[String], mode: Option[String], jenkinsCrumb: Option[String], contentType: Option[String], body: String): Either[CommonError,Unit] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postCreateView(name: String, jenkinsCrumb: Option[String], contentType: Option[String], body: String): Either[CommonError,Unit] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobBuild(name: String, json: String, token: Option[String], jenkinsCrumb: Option[String]): Either[CommonError,Unit] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobConfig(name: String, body: String, jenkinsCrumb: Option[String]): Either[CommonError,Unit] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobDelete(name: String, jenkinsCrumb: Option[String]): Either[CommonError,Unit] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobDisable(name: String, jenkinsCrumb: Option[String]): Either[CommonError,Unit] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobEnable(name: String, jenkinsCrumb: Option[String]): Either[CommonError,Unit] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postJobLastBuildStop(name: String, jenkinsCrumb: Option[String]): Either[CommonError,Unit] = Left(TODO)

        /**
        * 
        * @return A Unit
        */
        def RemoteAccess_postViewConfig(name: String, body: String, jenkinsCrumb: Option[String]): Either[CommonError,Unit] = Left(TODO)

}