package org.openapitools.apis

import java.io._
import org.openapitools._
import org.openapitools.models._
import org.openapitools.models.BranchImpl
import org.openapitools.models.FavoriteImpl
import org.openapitools.models.GithubOrganization
import org.openapitools.models.GithubScm
import org.openapitools.models.MultibranchPipeline
import org.openapitools.models.Organisation
import org.openapitools.models.Pipeline
import org.openapitools.models.PipelineActivity
import org.openapitools.models.PipelineFolderImpl
import org.openapitools.models.PipelineImpl
import org.openapitools.models.PipelineRun
import org.openapitools.models.PipelineRunNode
import org.openapitools.models.PipelineStepImpl
import org.openapitools.models.QueueItemImpl
import org.openapitools.models.User
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
import java.nio.file.Files
import java.time._

object BlueOceanApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        deletePipelineQueueItem(da) :+:
        getAuthenticatedUser(da) :+:
        getClasses(da) :+:
        getJsonWebKey(da) :+:
        getJsonWebToken(da) :+:
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


    private def checkError(e: CommonError) = e match {
      case InvalidInput(_) => BadRequest(e)
      case MissingIdentifier(_) => BadRequest(e)
      case RecordNotFound(_) => NotFound(e)
      case _ => InternalServerError(e)
    }

    implicit class StringOps(s: String) {

      import java.time.format.DateTimeFormatter

      lazy val localformatter: DateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")
      lazy val datetimeformatter: DateTimeFormatter =
      DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZ")

      def toLocalDateTime: LocalDateTime = LocalDateTime.parse(s,localformatter)
      def toZonedDateTime: ZonedDateTime = ZonedDateTime.parse(s, datetimeformatter)

    }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def deletePipelineQueueItem(da: DataAccessor): Endpoint[Unit] =
        delete("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "queue" :: string) { (organization: String, pipeline: String, queue: String) =>
          da.BlueOcean_deletePipelineQueueItem(organization, pipeline, queue) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a User
        */
        private def getAuthenticatedUser(da: DataAccessor): Endpoint[User] =
        get("blue" :: "rest" :: "organizations" :: string :: "user") { (organization: String) =>
          da.BlueOcean_getAuthenticatedUser(organization) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def getClasses(da: DataAccessor): Endpoint[String] =
        get("blue" :: "rest" :: "classes" :: string) { (_class: String) =>
          da.BlueOcean_getClasses(_class) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def getJsonWebKey(da: DataAccessor): Endpoint[String] =
        get("jwt-auth" :: "jwks" :: int) { (key: Int) =>
          da.BlueOcean_getJsonWebKey(key) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def getJsonWebToken(da: DataAccessor): Endpoint[String] =
        get("jwt-auth" :: "token" :: paramOption("expiryTimeInMins").map(_.map(_.toInt)) :: paramOption("maxExpiryTimeInMins").map(_.map(_.toInt))) { (expiryTimeInMins: Option[Int], maxExpiryTimeInMins: Option[Int]) =>
          da.BlueOcean_getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Organisation
        */
        private def getOrganisation(da: DataAccessor): Endpoint[Organisation] =
        get("blue" :: "rest" :: "organizations" :: string) { (organization: String) =>
          da.BlueOcean_getOrganisation(organization) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[Organisation]
        */
        private def getOrganisations(da: DataAccessor): Endpoint[Seq[Organisation]] =
        get("blue" :: "rest" :: "organizations") { () =>
          da.BlueOcean_getOrganisations() match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Pipeline
        */
        private def getPipeline(da: DataAccessor): Endpoint[Pipeline] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string) { (organization: String, pipeline: String) =>
          da.BlueOcean_getPipeline(organization, pipeline) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[PipelineActivity]
        */
        private def getPipelineActivities(da: DataAccessor): Endpoint[Seq[PipelineActivity]] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "activities") { (organization: String, pipeline: String) =>
          da.BlueOcean_getPipelineActivities(organization, pipeline) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a BranchImpl
        */
        private def getPipelineBranch(da: DataAccessor): Endpoint[BranchImpl] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "branches" :: string) { (organization: String, pipeline: String, branch: String) =>
          da.BlueOcean_getPipelineBranch(organization, pipeline, branch) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a PipelineRun
        */
        private def getPipelineBranchRun(da: DataAccessor): Endpoint[PipelineRun] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "branches" :: string :: "runs" :: string) { (organization: String, pipeline: String, branch: String, run: String) =>
          da.BlueOcean_getPipelineBranchRun(organization, pipeline, branch, run) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a MultibranchPipeline
        */
        private def getPipelineBranches(da: DataAccessor): Endpoint[MultibranchPipeline] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "branches") { (organization: String, pipeline: String) =>
          da.BlueOcean_getPipelineBranches(organization, pipeline) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a PipelineFolderImpl
        */
        private def getPipelineFolder(da: DataAccessor): Endpoint[PipelineFolderImpl] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string) { (organization: String, folder: String) =>
          da.BlueOcean_getPipelineFolder(organization, folder) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a PipelineImpl
        */
        private def getPipelineFolderPipeline(da: DataAccessor): Endpoint[PipelineImpl] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "pipelines" :: string) { (organization: String, pipeline: String, folder: String) =>
          da.BlueOcean_getPipelineFolderPipeline(organization, pipeline, folder) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[QueueItemImpl]
        */
        private def getPipelineQueue(da: DataAccessor): Endpoint[Seq[QueueItemImpl]] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "queue") { (organization: String, pipeline: String) =>
          da.BlueOcean_getPipelineQueue(organization, pipeline) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a PipelineRun
        */
        private def getPipelineRun(da: DataAccessor): Endpoint[PipelineRun] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string) { (organization: String, pipeline: String, run: String) =>
          da.BlueOcean_getPipelineRun(organization, pipeline, run) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def getPipelineRunLog(da: DataAccessor): Endpoint[String] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "log" :: paramOption("start").map(_.map(_.toInt)) :: paramOption("download").map(_.map(_.toBoolean))) { (organization: String, pipeline: String, run: String, start: Option[Int], download: Option[Boolean]) =>
          da.BlueOcean_getPipelineRunLog(organization, pipeline, run, start, download) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a PipelineRunNode
        */
        private def getPipelineRunNode(da: DataAccessor): Endpoint[PipelineRunNode] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "nodes" :: string) { (organization: String, pipeline: String, run: String, node: String) =>
          da.BlueOcean_getPipelineRunNode(organization, pipeline, run, node) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a PipelineStepImpl
        */
        private def getPipelineRunNodeStep(da: DataAccessor): Endpoint[PipelineStepImpl] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "nodes" :: string :: "steps" :: string) { (organization: String, pipeline: String, run: String, node: String, step: String) =>
          da.BlueOcean_getPipelineRunNodeStep(organization, pipeline, run, node, step) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def getPipelineRunNodeStepLog(da: DataAccessor): Endpoint[String] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "nodes" :: string :: "steps" :: string :: "log") { (organization: String, pipeline: String, run: String, node: String, step: String) =>
          da.BlueOcean_getPipelineRunNodeStepLog(organization, pipeline, run, node, step) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[PipelineStepImpl]
        */
        private def getPipelineRunNodeSteps(da: DataAccessor): Endpoint[Seq[PipelineStepImpl]] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "nodes" :: string :: "steps") { (organization: String, pipeline: String, run: String, node: String) =>
          da.BlueOcean_getPipelineRunNodeSteps(organization, pipeline, run, node) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[PipelineRunNode]
        */
        private def getPipelineRunNodes(da: DataAccessor): Endpoint[Seq[PipelineRunNode]] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "nodes") { (organization: String, pipeline: String, run: String) =>
          da.BlueOcean_getPipelineRunNodes(organization, pipeline, run) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[PipelineRun]
        */
        private def getPipelineRuns(da: DataAccessor): Endpoint[Seq[PipelineRun]] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs") { (organization: String, pipeline: String) =>
          da.BlueOcean_getPipelineRuns(organization, pipeline) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[Pipeline]
        */
        private def getPipelines(da: DataAccessor): Endpoint[Seq[Pipeline]] =
        get("blue" :: "rest" :: "organizations" :: string :: "pipelines") { (organization: String) =>
          da.BlueOcean_getPipelines(organization) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GithubScm
        */
        private def getSCM(da: DataAccessor): Endpoint[GithubScm] =
        get("blue" :: "rest" :: "organizations" :: string :: "scm" :: string) { (organization: String, scm: String) =>
          da.BlueOcean_getSCM(organization, scm) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[GithubOrganization]
        */
        private def getSCMOrganisationRepositories(da: DataAccessor): Endpoint[Seq[GithubOrganization]] =
        get("blue" :: "rest" :: "organizations" :: string :: "scm" :: string :: "organizations" :: string :: "repositories" :: paramOption("credentialId") :: paramOption("pageSize").map(_.map(_.toInt)) :: paramOption("pageNumber").map(_.map(_.toInt))) { (organization: String, scm: String, scmOrganisation: String, credentialId: Option[String], pageSize: Option[Int], pageNumber: Option[Int]) =>
          da.BlueOcean_getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[GithubOrganization]
        */
        private def getSCMOrganisationRepository(da: DataAccessor): Endpoint[Seq[GithubOrganization]] =
        get("blue" :: "rest" :: "organizations" :: string :: "scm" :: string :: "organizations" :: string :: "repositories" :: string :: paramOption("credentialId")) { (organization: String, scm: String, scmOrganisation: String, repository: String, credentialId: Option[String]) =>
          da.BlueOcean_getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[GithubOrganization]
        */
        private def getSCMOrganisations(da: DataAccessor): Endpoint[Seq[GithubOrganization]] =
        get("blue" :: "rest" :: "organizations" :: string :: "scm" :: string :: "organizations" :: paramOption("credentialId")) { (organization: String, scm: String, credentialId: Option[String]) =>
          da.BlueOcean_getSCMOrganisations(organization, scm, credentialId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a User
        */
        private def getUser(da: DataAccessor): Endpoint[User] =
        get("blue" :: "rest" :: "organizations" :: string :: "users" :: string) { (organization: String, user: String) =>
          da.BlueOcean_getUser(organization, user) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[FavoriteImpl]
        */
        private def getUserFavorites(da: DataAccessor): Endpoint[Seq[FavoriteImpl]] =
        get("blue" :: "rest" :: "users" :: string :: "favorites") { (user: String) =>
          da.BlueOcean_getUserFavorites(user) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a User
        */
        private def getUsers(da: DataAccessor): Endpoint[User] =
        get("blue" :: "rest" :: "organizations" :: string :: "users") { (organization: String) =>
          da.BlueOcean_getUsers(organization) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a QueueItemImpl
        */
        private def postPipelineRun(da: DataAccessor): Endpoint[QueueItemImpl] =
        post("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "replay") { (organization: String, pipeline: String, run: String) =>
          da.BlueOcean_postPipelineRun(organization, pipeline, run) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a QueueItemImpl
        */
        private def postPipelineRuns(da: DataAccessor): Endpoint[QueueItemImpl] =
        post("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs") { (organization: String, pipeline: String) =>
          da.BlueOcean_postPipelineRuns(organization, pipeline) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a FavoriteImpl
        */
        private def putPipelineFavorite(da: DataAccessor): Endpoint[FavoriteImpl] =
        put("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "favorite" :: jsonBody[Boolean]) { (organization: String, pipeline: String, body: Boolean) =>
          da.BlueOcean_putPipelineFavorite(organization, pipeline, body) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a PipelineRun
        */
        private def putPipelineRun(da: DataAccessor): Endpoint[PipelineRun] =
        put("blue" :: "rest" :: "organizations" :: string :: "pipelines" :: string :: "runs" :: string :: "stop" :: paramOption("blocking") :: paramOption("timeOutInSecs").map(_.map(_.toInt))) { (organization: String, pipeline: String, run: String, blocking: Option[String], timeOutInSecs: Option[Int]) =>
          da.BlueOcean_putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def search(da: DataAccessor): Endpoint[String] =
        get("blue" :: "rest" :: "search" :: param("q")) { (q: String) =>
          da.BlueOcean_search(q) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def searchClasses(da: DataAccessor): Endpoint[String] =
        get("blue" :: "rest" :: "classes" :: param("q")) { (q: String) =>
          da.BlueOcean_searchClasses(q) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
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
      val file = Files.createTempFile("tmpBlueOceanApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
