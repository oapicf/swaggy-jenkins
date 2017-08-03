package io.swagger.apis

import java.io._
import java.util.Date
import io.swagger._
import io.swagger.models._
import io.swagger.models.Body
import io.swagger.models.BranchImpl
import io.swagger.models.FavoriteImpl
import io.swagger.models.GithubScm
import io.swagger.models.MultibranchPipeline
import io.swagger.models.Organisation
import io.swagger.models.Organisations
import io.swagger.models.Pipeline
import io.swagger.models.PipelineActivities
import io.swagger.models.PipelineFolderImpl
import io.swagger.models.PipelineImpl
import io.swagger.models.PipelineQueue
import io.swagger.models.PipelineRun
import io.swagger.models.PipelineRunNode
import io.swagger.models.PipelineRunNodeSteps
import io.swagger.models.PipelineRunNodes
import io.swagger.models.PipelineRuns
import io.swagger.models.PipelineStepImpl
import io.swagger.models.Pipelines
import io.swagger.models.QueueItemImpl
import io.swagger.models.ScmOrganisations
import io.swagger.models.User
import io.swagger.models.UserFavorites
import io.finch.circe._
import io.circe.generic.semiauto._
import com.twitter.concurrent.AsyncStream
import com.twitter.finagle.Service
import com.twitter.finagle.Http
import com.twitter.finagle.http.{Request, Response}
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}
import com.twitter.util.Future
import com.twitter.io.Buf
import io.finch._, items._
import java.io.File

object BlueOceanApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
            deletePipelineQueueItem(da) :+:
            getAuthenticatedUser(da) :+:
            getClasses(da) :+:
            getOrganisation(da) :+:
            getOrganisations(da) :+:
            getPipeline(da) :+:
            getPipelineActivities(da) :+:
            getPipelineBranch(da) :+:
            getPipelineBranchRun(da) :+:
            getPipelineBranches(da) :+:
            getPipelineFolder(da) :+:
            getPipelineFolderPipeline(da) :+:
            getPipelineQueue(da) :+:
            getPipelineRun(da) :+:
            getPipelineRunLog(da) :+:
            getPipelineRunNode(da) :+:
            getPipelineRunNodeStep(da) :+:
            getPipelineRunNodeStepLog(da) :+:
            getPipelineRunNodeSteps(da) :+:
            getPipelineRunNodes(da) :+:
            getPipelineRuns(da) :+:
            getPipelines(da) :+:
            getSCM(da) :+:
            getSCMOrganisationRepositories(da) :+:
            getSCMOrganisationRepository(da) :+:
            getSCMOrganisations(da) :+:
            getUser(da) :+:
            getUserFavorites(da) :+:
            getUsers(da) :+:
            postPipelineRun(da) :+:
            postPipelineRuns(da) :+:
            putPipelineFavorite(da) :+:
            putPipelineRun(da) :+:
            search(da) :+:
            searchClasses(da)

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def deletePipelineQueueItem(da: DataAccessor): Endpoint[Unit] =
        delete("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "queue" :: string ) { (organization: String, pipeline: String, queue: String) => 
                da.BlueOcean_deletePipelineQueueItem(organization, pipeline, queue)
                NoContent[Unit]
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a User
        */
        private def getAuthenticatedUser(da: DataAccessor): Endpoint[User] =
        get("blue" :: "rest" :: "organizations" :: string :: "user" ) { (organization: String) => 
                Ok(da.BlueOcean_getAuthenticatedUser(organization))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a String
        */
        private def getClasses(da: DataAccessor): Endpoint[String] =
        get("blue" :: "rest" :: "classes" :: string ) { (_class: String) => 
                Ok(da.BlueOcean_getClasses(_class))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Organisation
        */
        private def getOrganisation(da: DataAccessor): Endpoint[Organisation] =
        get("blue" :: "rest" :: "organizations" :: string ) { (organization: String) => 
                Ok(da.BlueOcean_getOrganisation(organization))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Organisations
        */
        private def getOrganisations(da: DataAccessor): Endpoint[Organisations] =
        get("blue" :: "rest" :: "organizations" ) { 
                Ok(da.BlueOcean_getOrganisations())
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Pipeline
        */
        private def getPipeline(da: DataAccessor): Endpoint[Pipeline] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string ) { (organization: String, pipeline: String) => 
                Ok(da.BlueOcean_getPipeline(organization, pipeline))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineActivities
        */
        private def getPipelineActivities(da: DataAccessor): Endpoint[PipelineActivities] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "activities" ) { (organization: String, pipeline: String) => 
                Ok(da.BlueOcean_getPipelineActivities(organization, pipeline))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a BranchImpl
        */
        private def getPipelineBranch(da: DataAccessor): Endpoint[BranchImpl] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "branches" :: string ) { (organization: String, pipeline: String, branch: String) => 
                Ok(da.BlueOcean_getPipelineBranch(organization, pipeline, branch))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineRun
        */
        private def getPipelineBranchRun(da: DataAccessor): Endpoint[PipelineRun] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "branches" :: string :: "runs" :: string ) { (organization: String, pipeline: String, branch: String, run: String) => 
                Ok(da.BlueOcean_getPipelineBranchRun(organization, pipeline, branch, run))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a MultibranchPipeline
        */
        private def getPipelineBranches(da: DataAccessor): Endpoint[MultibranchPipeline] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "branches" ) { (organization: String, pipeline: String) => 
                Ok(da.BlueOcean_getPipelineBranches(organization, pipeline))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineFolderImpl
        */
        private def getPipelineFolder(da: DataAccessor): Endpoint[PipelineFolderImpl] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string ) { (organization: String, folder: String) => 
                Ok(da.BlueOcean_getPipelineFolder(organization, folder))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineImpl
        */
        private def getPipelineFolderPipeline(da: DataAccessor): Endpoint[PipelineImpl] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "pipelines" :: string ) { (organization: String, pipeline: String, folder: String) => 
                Ok(da.BlueOcean_getPipelineFolderPipeline(organization, pipeline, folder))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineQueue
        */
        private def getPipelineQueue(da: DataAccessor): Endpoint[PipelineQueue] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "queue" ) { (organization: String, pipeline: String) => 
                Ok(da.BlueOcean_getPipelineQueue(organization, pipeline))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineRun
        */
        private def getPipelineRun(da: DataAccessor): Endpoint[PipelineRun] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string ) { (organization: String, pipeline: String, run: String) => 
                Ok(da.BlueOcean_getPipelineRun(organization, pipeline, run))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a String
        */
        private def getPipelineRunLog(da: DataAccessor): Endpoint[String] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "log"  :: int :: boolean) { (organization: String, pipeline: String, run: String, start: Int, download: Boolean) => 
                Ok(da.BlueOcean_getPipelineRunLog(organization, pipeline, run, start, download))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineRunNode
        */
        private def getPipelineRunNode(da: DataAccessor): Endpoint[PipelineRunNode] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "nodes" :: string ) { (organization: String, pipeline: String, run: String, node: String) => 
                Ok(da.BlueOcean_getPipelineRunNode(organization, pipeline, run, node))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineStepImpl
        */
        private def getPipelineRunNodeStep(da: DataAccessor): Endpoint[PipelineStepImpl] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "nodes" :: string :: "steps" :: string ) { (organization: String, pipeline: String, run: String, node: String, step: String) => 
                Ok(da.BlueOcean_getPipelineRunNodeStep(organization, pipeline, run, node, step))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a String
        */
        private def getPipelineRunNodeStepLog(da: DataAccessor): Endpoint[String] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "nodes" :: string :: "steps" :: string :: "log" ) { (organization: String, pipeline: String, run: String, node: String, step: String) => 
                Ok(da.BlueOcean_getPipelineRunNodeStepLog(organization, pipeline, run, node, step))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineRunNodeSteps
        */
        private def getPipelineRunNodeSteps(da: DataAccessor): Endpoint[PipelineRunNodeSteps] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "nodes" :: string :: "steps" ) { (organization: String, pipeline: String, run: String, node: String) => 
                Ok(da.BlueOcean_getPipelineRunNodeSteps(organization, pipeline, run, node))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineRunNodes
        */
        private def getPipelineRunNodes(da: DataAccessor): Endpoint[PipelineRunNodes] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "nodes" ) { (organization: String, pipeline: String, run: String) => 
                Ok(da.BlueOcean_getPipelineRunNodes(organization, pipeline, run))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineRuns
        */
        private def getPipelineRuns(da: DataAccessor): Endpoint[PipelineRuns] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" ) { (organization: String, pipeline: String) => 
                Ok(da.BlueOcean_getPipelineRuns(organization, pipeline))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Pipelines
        */
        private def getPipelines(da: DataAccessor): Endpoint[Pipelines] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" ) { (organization: String) => 
                Ok(da.BlueOcean_getPipelines(organization))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a GithubScm
        */
        private def getSCM(da: DataAccessor): Endpoint[GithubScm] =
        get("blue" :: "rest" :: "organizations" :: string :: "scm" :: string ) { (organization: String, scm: String) => 
                Ok(da.BlueOcean_getSCM(organization, scm))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a ScmOrganisations
        */
        private def getSCMOrganisationRepositories(da: DataAccessor): Endpoint[ScmOrganisations] =
        get("blue" :: "rest" :: "organizations" :: string :: "scm" :: string :: "organizations" :: string :: "repositories"  :: string :: int :: int) { (organization: String, scm: String, scmOrganisation: String, credentialId: String, pageSize: Int, pageNumber: Int) => 
                Ok(da.BlueOcean_getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a ScmOrganisations
        */
        private def getSCMOrganisationRepository(da: DataAccessor): Endpoint[ScmOrganisations] =
        get("blue" :: "rest" :: "organizations" :: string :: "scm" :: string :: "organizations" :: string :: "repositories" :: string  :: string) { (organization: String, scm: String, scmOrganisation: String, repository: String, credentialId: String) => 
                Ok(da.BlueOcean_getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a ScmOrganisations
        */
        private def getSCMOrganisations(da: DataAccessor): Endpoint[ScmOrganisations] =
        get("blue" :: "rest" :: "organizations" :: string :: "scm" :: string :: "organizations"  :: string) { (organization: String, scm: String, credentialId: String) => 
                Ok(da.BlueOcean_getSCMOrganisations(organization, scm, credentialId))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a User
        */
        private def getUser(da: DataAccessor): Endpoint[User] =
        get("blue" :: "rest" :: "organizations" :: string :: "users" :: string ) { (organization: String, user: String) => 
                Ok(da.BlueOcean_getUser(organization, user))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a UserFavorites
        */
        private def getUserFavorites(da: DataAccessor): Endpoint[UserFavorites] =
        get("blue" :: "rest" :: "users" :: string :: "favorites" ) { (user: String) => 
                Ok(da.BlueOcean_getUserFavorites(user))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a User
        */
        private def getUsers(da: DataAccessor): Endpoint[User] =
        get("blue" :: "rest" :: "organizations" :: string :: "users" ) { (organization: String) => 
                Ok(da.BlueOcean_getUsers(organization))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a QueueItemImpl
        */
        private def postPipelineRun(da: DataAccessor): Endpoint[QueueItemImpl] =
        post("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "replay" ) { (organization: String, pipeline: String, run: String) => 
                Ok(da.BlueOcean_postPipelineRun(organization, pipeline, run))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a QueueItemImpl
        */
        private def postPipelineRuns(da: DataAccessor): Endpoint[QueueItemImpl] =
        post("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" ) { (organization: String, pipeline: String) => 
                Ok(da.BlueOcean_postPipelineRuns(organization, pipeline))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a FavoriteImpl
        */
        private def putPipelineFavorite(da: DataAccessor): Endpoint[FavoriteImpl] =
        put("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "favorite"  :: jsonBody[Body]) { (organization: String, pipeline: String, body: Body) => 
                Ok(da.BlueOcean_putPipelineFavorite(organization, pipeline, body))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a PipelineRun
        */
        private def putPipelineRun(da: DataAccessor): Endpoint[PipelineRun] =
        put("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "stop"  :: string :: int) { (organization: String, pipeline: String, run: String, blocking: String, timeOutInSecs: Int) => 
                Ok(da.BlueOcean_putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a String
        */
        private def search(da: DataAccessor): Endpoint[String] =
        get("blue" :: "rest" :: "search"  :: string) { (q: String) => 
                Ok(da.BlueOcean_search(q))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a String
        */
        private def searchClasses(da: DataAccessor): Endpoint[String] =
        get("blue" :: "rest" :: "classes"  :: string) { (q: String) => 
                Ok(da.BlueOcean_searchClasses(q))
        } handle {
          case e: Exception => BadRequest(e)
        }


    implicit private def fileUploadToFile(fileUpload: FileUpload) : File = {
        fileUpload match {
            case upload: InMemoryFileUpload =>
                bytesToFile(Buf.ByteArray.Owned.extract(upload.content))
            case upload: OnDiskFileUpload =>
                upload.content
            case _ => null
        }
    }

    private def bytesToFile(input: Array[Byte]): java.io.File = {
        val file = File.createTempFile("tmpBlueOceanApi", null)
        val output = new FileOutputStream(file)
        output.write(input)
        file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
