package org.openapitools.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.model.StatusCodes
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import akka.http.scaladsl.unmarshalling.FromEntityUnmarshaller
import akka.http.scaladsl.unmarshalling.FromStringUnmarshaller
import org.openapitools.server.AkkaHttpHelper._
import org.openapitools.server.model.BranchImpl
import org.openapitools.server.model.FavoriteImpl
import org.openapitools.server.model.GithubOrganization
import org.openapitools.server.model.GithubScm
import org.openapitools.server.model.MultibranchPipeline
import org.openapitools.server.model.Organisation
import org.openapitools.server.model.Pipeline
import org.openapitools.server.model.PipelineActivity
import org.openapitools.server.model.PipelineFolderImpl
import org.openapitools.server.model.PipelineImpl
import org.openapitools.server.model.PipelineRun
import org.openapitools.server.model.PipelineRunNode
import org.openapitools.server.model.PipelineStepImpl
import org.openapitools.server.model.QueueItemImpl
import org.openapitools.server.model.UNKNOWN_BASE_TYPE
import org.openapitools.server.model.User


class BlueOceanApi(
    blueOceanService: BlueOceanApiService,
    blueOceanMarshaller: BlueOceanApiMarshaller
) {

  
  import blueOceanMarshaller._

  lazy val route: Route =
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "queue" / Segment) { (organization, pipeline, queue) => 
      delete {  
            blueOceanService.deletePipelineQueueItem(organization = organization, pipeline = pipeline, queue = queue)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "user") { (organization) => 
      get {  
            blueOceanService.getAuthenticatedUser(organization = organization)
      }
    } ~
    path("blue" / "rest" / "classes" / Segment) { (`class`) => 
      get {  
            blueOceanService.getClasses(`class` = `class`)
      }
    } ~
    path("jwt-auth" / "jwks" / IntNumber) { (key) => 
      get {  
            blueOceanService.getJsonWebKey(key = key)
      }
    } ~
    path("jwt-auth" / "token") { 
      get { 
        parameters("expiryTimeInMins".as[Int].?, "maxExpiryTimeInMins".as[Int].?) { (expiryTimeInMins, maxExpiryTimeInMins) => 
            blueOceanService.getJsonWebToken(expiryTimeInMins = expiryTimeInMins, maxExpiryTimeInMins = maxExpiryTimeInMins)
        }
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment) { (organization) => 
      get {  
            blueOceanService.getOrganisation(organization = organization)
      }
    } ~
    path("blue" / "rest" / "organizations") { 
      get {  
            blueOceanService.getOrganisations()
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment) { (organization, pipeline) => 
      get {  
            blueOceanService.getPipeline(organization = organization, pipeline = pipeline)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "activities") { (organization, pipeline) => 
      get {  
            blueOceanService.getPipelineActivities(organization = organization, pipeline = pipeline)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "branches" / Segment) { (organization, pipeline, branch) => 
      get {  
            blueOceanService.getPipelineBranch(organization = organization, pipeline = pipeline, branch = branch)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "branches" / Segment / "runs" / Segment) { (organization, pipeline, branch, run) => 
      get {  
            blueOceanService.getPipelineBranchRun(organization = organization, pipeline = pipeline, branch = branch, run = run)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "branches") { (organization, pipeline) => 
      get {  
            blueOceanService.getPipelineBranches(organization = organization, pipeline = pipeline)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment) { (organization, folder) => 
      get {  
            blueOceanService.getPipelineFolder(organization = organization, folder = folder)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "pipelines" / Segment) { (organization, pipeline, folder) => 
      get {  
            blueOceanService.getPipelineFolderPipeline(organization = organization, pipeline = pipeline, folder = folder)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "queue") { (organization, pipeline) => 
      get {  
            blueOceanService.getPipelineQueue(organization = organization, pipeline = pipeline)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "runs" / Segment) { (organization, pipeline, run) => 
      get {  
            blueOceanService.getPipelineRun(organization = organization, pipeline = pipeline, run = run)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "runs" / Segment / "log") { (organization, pipeline, run) => 
      get { 
        parameters("start".as[Int].?, "download".as[Boolean].?) { (start, download) => 
            blueOceanService.getPipelineRunLog(organization = organization, pipeline = pipeline, run = run, start = start, download = download)
        }
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "runs" / Segment / "nodes" / Segment) { (organization, pipeline, run, node) => 
      get {  
            blueOceanService.getPipelineRunNode(organization = organization, pipeline = pipeline, run = run, node = node)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "runs" / Segment / "nodes" / Segment / "steps" / Segment) { (organization, pipeline, run, node, step) => 
      get {  
            blueOceanService.getPipelineRunNodeStep(organization = organization, pipeline = pipeline, run = run, node = node, step = step)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "runs" / Segment / "nodes" / Segment / "steps" / Segment / "log") { (organization, pipeline, run, node, step) => 
      get {  
            blueOceanService.getPipelineRunNodeStepLog(organization = organization, pipeline = pipeline, run = run, node = node, step = step)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "runs" / Segment / "nodes" / Segment / "steps") { (organization, pipeline, run, node) => 
      get {  
            blueOceanService.getPipelineRunNodeSteps(organization = organization, pipeline = pipeline, run = run, node = node)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "runs" / Segment / "nodes") { (organization, pipeline, run) => 
      get {  
            blueOceanService.getPipelineRunNodes(organization = organization, pipeline = pipeline, run = run)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "runs") { (organization, pipeline) => 
      get {  
            blueOceanService.getPipelineRuns(organization = organization, pipeline = pipeline)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines") { (organization) => 
      get {  
            blueOceanService.getPipelines(organization = organization)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "scm" / Segment) { (organization, scm) => 
      get {  
            blueOceanService.getSCM(organization = organization, scm = scm)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "scm" / Segment / "organizations" / Segment / "repositories") { (organization, scm, scmOrganisation) => 
      get { 
        parameters("credentialId".as[String].?, "pageSize".as[Int].?, "pageNumber".as[Int].?) { (credentialId, pageSize, pageNumber) => 
            blueOceanService.getSCMOrganisationRepositories(organization = organization, scm = scm, scmOrganisation = scmOrganisation, credentialId = credentialId, pageSize = pageSize, pageNumber = pageNumber)
        }
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "scm" / Segment / "organizations" / Segment / "repositories" / Segment) { (organization, scm, scmOrganisation, repository) => 
      get { 
        parameters("credentialId".as[String].?) { (credentialId) => 
            blueOceanService.getSCMOrganisationRepository(organization = organization, scm = scm, scmOrganisation = scmOrganisation, repository = repository, credentialId = credentialId)
        }
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "scm" / Segment / "organizations") { (organization, scm) => 
      get { 
        parameters("credentialId".as[String].?) { (credentialId) => 
            blueOceanService.getSCMOrganisations(organization = organization, scm = scm, credentialId = credentialId)
        }
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "users" / Segment) { (organization, user) => 
      get {  
            blueOceanService.getUser(organization = organization, user = user)
      }
    } ~
    path("blue" / "rest" / "users" / Segment / "favorites") { (user) => 
      get {  
            blueOceanService.getUserFavorites(user = user)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "users") { (organization) => 
      get {  
            blueOceanService.getUsers(organization = organization)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "runs" / Segment / "replay") { (organization, pipeline, run) => 
      post {  
            blueOceanService.postPipelineRun(organization = organization, pipeline = pipeline, run = run)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "runs") { (organization, pipeline) => 
      post {  
            blueOceanService.postPipelineRuns(organization = organization, pipeline = pipeline)
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "favorite") { (organization, pipeline) => 
      put {  
            entity(as[UNKNOWN_BASE_TYPE]){ uNKNOWNBASETYPE =>
              blueOceanService.putPipelineFavorite(organization = organization, pipeline = pipeline, uNKNOWNBASETYPE = uNKNOWNBASETYPE)
            }
      }
    } ~
    path("blue" / "rest" / "organizations" / Segment / "pipelines" / Segment / "runs" / Segment / "stop") { (organization, pipeline, run) => 
      put { 
        parameters("blocking".as[String].?, "timeOutInSecs".as[Int].?) { (blocking, timeOutInSecs) => 
            blueOceanService.putPipelineRun(organization = organization, pipeline = pipeline, run = run, blocking = blocking, timeOutInSecs = timeOutInSecs)
        }
      }
    } ~
    path("blue" / "rest" / "search") { 
      get { 
        parameters("q".as[String]) { (q) => 
            blueOceanService.search(q = q)
        }
      }
    } ~
    path("blue" / "rest" / "classes") { 
      get { 
        parameters("q".as[String]) { (q) => 
            blueOceanService.searchClasses(q = q)
        }
      }
    }
}


trait BlueOceanApiService {

  def deletePipelineQueueItem200: Route =
    complete((200, "Successfully deleted queue item"))
  def deletePipelineQueueItem401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def deletePipelineQueueItem403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully deleted queue item
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def deletePipelineQueueItem(organization: String, pipeline: String, queue: String): Route

  def getAuthenticatedUser200(responseUser: User)(implicit toEntityMarshallerUser: ToEntityMarshaller[User]): Route =
    complete((200, responseUser))
  def getAuthenticatedUser401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getAuthenticatedUser403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved authenticated user details, DataType: User
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getAuthenticatedUser(organization: String)
      (implicit toEntityMarshallerUser: ToEntityMarshaller[User]): Route

  def getClasses200(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((200, responseString))
  def getClasses401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getClasses403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved class names, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getClasses(`class`: String): Route

  def getJsonWebKey200(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((200, responseString))
  def getJsonWebKey401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getJsonWebKey403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved JWT token, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getJsonWebKey(key: Int): Route

  def getJsonWebToken200(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((200, responseString))
  def getJsonWebToken401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getJsonWebToken403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved JWT token, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getJsonWebToken(expiryTimeInMins: Option[Int], maxExpiryTimeInMins: Option[Int]): Route

  def getOrganisation200(responseOrganisation: Organisation)(implicit toEntityMarshallerOrganisation: ToEntityMarshaller[Organisation]): Route =
    complete((200, responseOrganisation))
  def getOrganisation401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getOrganisation403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def getOrganisation404: Route =
    complete((404, "Pipeline cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully retrieved pipeline details, DataType: Organisation
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Pipeline cannot be found on Jenkins instance
   */
  def getOrganisation(organization: String)
      (implicit toEntityMarshallerOrganisation: ToEntityMarshaller[Organisation]): Route

  def getOrganisations200(responseOrganisationarray: Seq[Organisation])(implicit toEntityMarshallerOrganisationarray: ToEntityMarshaller[Seq[Organisation]]): Route =
    complete((200, responseOrganisationarray))
  def getOrganisations401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getOrganisations403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved pipelines details, DataType: Seq[Organisation]
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getOrganisations()
      (implicit toEntityMarshallerOrganisationarray: ToEntityMarshaller[Seq[Organisation]]): Route

  def getPipeline200(responsePipeline: Pipeline)(implicit toEntityMarshallerPipeline: ToEntityMarshaller[Pipeline]): Route =
    complete((200, responsePipeline))
  def getPipeline401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipeline403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def getPipeline404: Route =
    complete((404, "Pipeline cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully retrieved pipeline details, DataType: Pipeline
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Pipeline cannot be found on Jenkins instance
   */
  def getPipeline(organization: String, pipeline: String)
      (implicit toEntityMarshallerPipeline: ToEntityMarshaller[Pipeline]): Route

  def getPipelineActivities200(responsePipelineActivityarray: Seq[PipelineActivity])(implicit toEntityMarshallerPipelineActivityarray: ToEntityMarshaller[Seq[PipelineActivity]]): Route =
    complete((200, responsePipelineActivityarray))
  def getPipelineActivities401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineActivities403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved all activities details, DataType: Seq[PipelineActivity]
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineActivities(organization: String, pipeline: String)
      (implicit toEntityMarshallerPipelineActivityarray: ToEntityMarshaller[Seq[PipelineActivity]]): Route

  def getPipelineBranch200(responseBranchImpl: BranchImpl)(implicit toEntityMarshallerBranchImpl: ToEntityMarshaller[BranchImpl]): Route =
    complete((200, responseBranchImpl))
  def getPipelineBranch401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineBranch403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved branch details, DataType: BranchImpl
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineBranch(organization: String, pipeline: String, branch: String)
      (implicit toEntityMarshallerBranchImpl: ToEntityMarshaller[BranchImpl]): Route

  def getPipelineBranchRun200(responsePipelineRun: PipelineRun)(implicit toEntityMarshallerPipelineRun: ToEntityMarshaller[PipelineRun]): Route =
    complete((200, responsePipelineRun))
  def getPipelineBranchRun401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineBranchRun403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved run details, DataType: PipelineRun
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineBranchRun(organization: String, pipeline: String, branch: String, run: String)
      (implicit toEntityMarshallerPipelineRun: ToEntityMarshaller[PipelineRun]): Route

  def getPipelineBranches200(responseMultibranchPipeline: MultibranchPipeline)(implicit toEntityMarshallerMultibranchPipeline: ToEntityMarshaller[MultibranchPipeline]): Route =
    complete((200, responseMultibranchPipeline))
  def getPipelineBranches401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineBranches403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved all branches details, DataType: MultibranchPipeline
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineBranches(organization: String, pipeline: String)
      (implicit toEntityMarshallerMultibranchPipeline: ToEntityMarshaller[MultibranchPipeline]): Route

  def getPipelineFolder200(responsePipelineFolderImpl: PipelineFolderImpl)(implicit toEntityMarshallerPipelineFolderImpl: ToEntityMarshaller[PipelineFolderImpl]): Route =
    complete((200, responsePipelineFolderImpl))
  def getPipelineFolder401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineFolder403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved folder details, DataType: PipelineFolderImpl
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineFolder(organization: String, folder: String)
      (implicit toEntityMarshallerPipelineFolderImpl: ToEntityMarshaller[PipelineFolderImpl]): Route

  def getPipelineFolderPipeline200(responsePipelineImpl: PipelineImpl)(implicit toEntityMarshallerPipelineImpl: ToEntityMarshaller[PipelineImpl]): Route =
    complete((200, responsePipelineImpl))
  def getPipelineFolderPipeline401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineFolderPipeline403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved pipeline details, DataType: PipelineImpl
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineFolderPipeline(organization: String, pipeline: String, folder: String)
      (implicit toEntityMarshallerPipelineImpl: ToEntityMarshaller[PipelineImpl]): Route

  def getPipelineQueue200(responseQueueItemImplarray: Seq[QueueItemImpl])(implicit toEntityMarshallerQueueItemImplarray: ToEntityMarshaller[Seq[QueueItemImpl]]): Route =
    complete((200, responseQueueItemImplarray))
  def getPipelineQueue401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineQueue403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved queue details, DataType: Seq[QueueItemImpl]
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineQueue(organization: String, pipeline: String)
      (implicit toEntityMarshallerQueueItemImplarray: ToEntityMarshaller[Seq[QueueItemImpl]]): Route

  def getPipelineRun200(responsePipelineRun: PipelineRun)(implicit toEntityMarshallerPipelineRun: ToEntityMarshaller[PipelineRun]): Route =
    complete((200, responsePipelineRun))
  def getPipelineRun401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineRun403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved run details, DataType: PipelineRun
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineRun(organization: String, pipeline: String, run: String)
      (implicit toEntityMarshallerPipelineRun: ToEntityMarshaller[PipelineRun]): Route

  def getPipelineRunLog200(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((200, responseString))
  def getPipelineRunLog401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineRunLog403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved pipeline run log, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineRunLog(organization: String, pipeline: String, run: String, start: Option[Int], download: Option[Boolean]): Route

  def getPipelineRunNode200(responsePipelineRunNode: PipelineRunNode)(implicit toEntityMarshallerPipelineRunNode: ToEntityMarshaller[PipelineRunNode]): Route =
    complete((200, responsePipelineRunNode))
  def getPipelineRunNode401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineRunNode403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved run node details, DataType: PipelineRunNode
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineRunNode(organization: String, pipeline: String, run: String, node: String)
      (implicit toEntityMarshallerPipelineRunNode: ToEntityMarshaller[PipelineRunNode]): Route

  def getPipelineRunNodeStep200(responsePipelineStepImpl: PipelineStepImpl)(implicit toEntityMarshallerPipelineStepImpl: ToEntityMarshaller[PipelineStepImpl]): Route =
    complete((200, responsePipelineStepImpl))
  def getPipelineRunNodeStep401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineRunNodeStep403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved run node step details, DataType: PipelineStepImpl
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineRunNodeStep(organization: String, pipeline: String, run: String, node: String, step: String)
      (implicit toEntityMarshallerPipelineStepImpl: ToEntityMarshaller[PipelineStepImpl]): Route

  def getPipelineRunNodeStepLog200(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((200, responseString))
  def getPipelineRunNodeStepLog401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineRunNodeStepLog403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved pipeline run node step log, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineRunNodeStepLog(organization: String, pipeline: String, run: String, node: String, step: String): Route

  def getPipelineRunNodeSteps200(responsePipelineStepImplarray: Seq[PipelineStepImpl])(implicit toEntityMarshallerPipelineStepImplarray: ToEntityMarshaller[Seq[PipelineStepImpl]]): Route =
    complete((200, responsePipelineStepImplarray))
  def getPipelineRunNodeSteps401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineRunNodeSteps403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved run node steps details, DataType: Seq[PipelineStepImpl]
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineRunNodeSteps(organization: String, pipeline: String, run: String, node: String)
      (implicit toEntityMarshallerPipelineStepImplarray: ToEntityMarshaller[Seq[PipelineStepImpl]]): Route

  def getPipelineRunNodes200(responsePipelineRunNodearray: Seq[PipelineRunNode])(implicit toEntityMarshallerPipelineRunNodearray: ToEntityMarshaller[Seq[PipelineRunNode]]): Route =
    complete((200, responsePipelineRunNodearray))
  def getPipelineRunNodes401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineRunNodes403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved run nodes details, DataType: Seq[PipelineRunNode]
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineRunNodes(organization: String, pipeline: String, run: String)
      (implicit toEntityMarshallerPipelineRunNodearray: ToEntityMarshaller[Seq[PipelineRunNode]]): Route

  def getPipelineRuns200(responsePipelineRunarray: Seq[PipelineRun])(implicit toEntityMarshallerPipelineRunarray: ToEntityMarshaller[Seq[PipelineRun]]): Route =
    complete((200, responsePipelineRunarray))
  def getPipelineRuns401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelineRuns403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved runs details, DataType: Seq[PipelineRun]
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelineRuns(organization: String, pipeline: String)
      (implicit toEntityMarshallerPipelineRunarray: ToEntityMarshaller[Seq[PipelineRun]]): Route

  def getPipelines200(responsePipelinearray: Seq[Pipeline])(implicit toEntityMarshallerPipelinearray: ToEntityMarshaller[Seq[Pipeline]]): Route =
    complete((200, responsePipelinearray))
  def getPipelines401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getPipelines403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved pipelines details, DataType: Seq[Pipeline]
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getPipelines(organization: String)
      (implicit toEntityMarshallerPipelinearray: ToEntityMarshaller[Seq[Pipeline]]): Route

  def getSCM200(responseGithubScm: GithubScm)(implicit toEntityMarshallerGithubScm: ToEntityMarshaller[GithubScm]): Route =
    complete((200, responseGithubScm))
  def getSCM401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getSCM403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved SCM details, DataType: GithubScm
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getSCM(organization: String, scm: String)
      (implicit toEntityMarshallerGithubScm: ToEntityMarshaller[GithubScm]): Route

  def getSCMOrganisationRepositories200(responseGithubOrganizationarray: Seq[GithubOrganization])(implicit toEntityMarshallerGithubOrganizationarray: ToEntityMarshaller[Seq[GithubOrganization]]): Route =
    complete((200, responseGithubOrganizationarray))
  def getSCMOrganisationRepositories401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getSCMOrganisationRepositories403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved SCM organization repositories details, DataType: Seq[GithubOrganization]
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getSCMOrganisationRepositories(organization: String, scm: String, scmOrganisation: String, credentialId: Option[String], pageSize: Option[Int], pageNumber: Option[Int])
      (implicit toEntityMarshallerGithubOrganizationarray: ToEntityMarshaller[Seq[GithubOrganization]]): Route

  def getSCMOrganisationRepository200(responseGithubOrganizationarray: Seq[GithubOrganization])(implicit toEntityMarshallerGithubOrganizationarray: ToEntityMarshaller[Seq[GithubOrganization]]): Route =
    complete((200, responseGithubOrganizationarray))
  def getSCMOrganisationRepository401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getSCMOrganisationRepository403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved SCM organizations details, DataType: Seq[GithubOrganization]
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getSCMOrganisationRepository(organization: String, scm: String, scmOrganisation: String, repository: String, credentialId: Option[String])
      (implicit toEntityMarshallerGithubOrganizationarray: ToEntityMarshaller[Seq[GithubOrganization]]): Route

  def getSCMOrganisations200(responseGithubOrganizationarray: Seq[GithubOrganization])(implicit toEntityMarshallerGithubOrganizationarray: ToEntityMarshaller[Seq[GithubOrganization]]): Route =
    complete((200, responseGithubOrganizationarray))
  def getSCMOrganisations401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getSCMOrganisations403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved SCM organizations details, DataType: Seq[GithubOrganization]
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getSCMOrganisations(organization: String, scm: String, credentialId: Option[String])
      (implicit toEntityMarshallerGithubOrganizationarray: ToEntityMarshaller[Seq[GithubOrganization]]): Route

  def getUser200(responseUser: User)(implicit toEntityMarshallerUser: ToEntityMarshaller[User]): Route =
    complete((200, responseUser))
  def getUser401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getUser403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved users details, DataType: User
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getUser(organization: String, user: String)
      (implicit toEntityMarshallerUser: ToEntityMarshaller[User]): Route

  def getUserFavorites200(responseFavoriteImplarray: Seq[FavoriteImpl])(implicit toEntityMarshallerFavoriteImplarray: ToEntityMarshaller[Seq[FavoriteImpl]]): Route =
    complete((200, responseFavoriteImplarray))
  def getUserFavorites401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getUserFavorites403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved users favorites details, DataType: Seq[FavoriteImpl]
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getUserFavorites(user: String)
      (implicit toEntityMarshallerFavoriteImplarray: ToEntityMarshaller[Seq[FavoriteImpl]]): Route

  def getUsers200(responseUser: User)(implicit toEntityMarshallerUser: ToEntityMarshaller[User]): Route =
    complete((200, responseUser))
  def getUsers401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getUsers403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved users details, DataType: User
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getUsers(organization: String)
      (implicit toEntityMarshallerUser: ToEntityMarshaller[User]): Route

  def postPipelineRun200(responseQueueItemImpl: QueueItemImpl)(implicit toEntityMarshallerQueueItemImpl: ToEntityMarshaller[QueueItemImpl]): Route =
    complete((200, responseQueueItemImpl))
  def postPipelineRun401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def postPipelineRun403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully replayed a pipeline run, DataType: QueueItemImpl
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def postPipelineRun(organization: String, pipeline: String, run: String)
      (implicit toEntityMarshallerQueueItemImpl: ToEntityMarshaller[QueueItemImpl]): Route

  def postPipelineRuns200(responseQueueItemImpl: QueueItemImpl)(implicit toEntityMarshallerQueueItemImpl: ToEntityMarshaller[QueueItemImpl]): Route =
    complete((200, responseQueueItemImpl))
  def postPipelineRuns401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def postPipelineRuns403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully started a build, DataType: QueueItemImpl
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def postPipelineRuns(organization: String, pipeline: String)
      (implicit toEntityMarshallerQueueItemImpl: ToEntityMarshaller[QueueItemImpl]): Route

  def putPipelineFavorite200(responseFavoriteImpl: FavoriteImpl)(implicit toEntityMarshallerFavoriteImpl: ToEntityMarshaller[FavoriteImpl]): Route =
    complete((200, responseFavoriteImpl))
  def putPipelineFavorite401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def putPipelineFavorite403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully favorited/unfavorited a pipeline, DataType: FavoriteImpl
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def putPipelineFavorite(organization: String, pipeline: String, uNKNOWNBASETYPE: UNKNOWN_BASE_TYPE)
      (implicit toEntityMarshallerFavoriteImpl: ToEntityMarshaller[FavoriteImpl]): Route

  def putPipelineRun200(responsePipelineRun: PipelineRun)(implicit toEntityMarshallerPipelineRun: ToEntityMarshaller[PipelineRun]): Route =
    complete((200, responsePipelineRun))
  def putPipelineRun401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def putPipelineRun403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully stopped a build, DataType: PipelineRun
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def putPipelineRun(organization: String, pipeline: String, run: String, blocking: Option[String], timeOutInSecs: Option[Int])
      (implicit toEntityMarshallerPipelineRun: ToEntityMarshaller[PipelineRun]): Route

  def search200(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((200, responseString))
  def search401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def search403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved search result, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def search(q: String): Route

  def searchClasses200(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((200, responseString))
  def searchClasses401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def searchClasses403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved search result, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def searchClasses(q: String): Route

}

trait BlueOceanApiMarshaller {
  implicit def fromEntityUnmarshallerUNKNOWN_BASE_TYPE: FromEntityUnmarshaller[UNKNOWN_BASE_TYPE]



  implicit def toEntityMarshallerPipeline: ToEntityMarshaller[Pipeline]

  implicit def toEntityMarshallerPipelineStepImpl: ToEntityMarshaller[PipelineStepImpl]

  implicit def toEntityMarshallerBranchImpl: ToEntityMarshaller[BranchImpl]

  implicit def toEntityMarshallerOrganisationarray: ToEntityMarshaller[Seq[Organisation]]

  implicit def toEntityMarshallerPipelineActivityarray: ToEntityMarshaller[Seq[PipelineActivity]]

  implicit def toEntityMarshallerOrganisation: ToEntityMarshaller[Organisation]

  implicit def toEntityMarshallerPipelineRunNode: ToEntityMarshaller[PipelineRunNode]

  implicit def toEntityMarshallerFavoriteImplarray: ToEntityMarshaller[Seq[FavoriteImpl]]

  implicit def toEntityMarshallerUser: ToEntityMarshaller[User]

  implicit def toEntityMarshallerPipelineRunarray: ToEntityMarshaller[Seq[PipelineRun]]

  implicit def toEntityMarshallerPipelinearray: ToEntityMarshaller[Seq[Pipeline]]

  implicit def toEntityMarshallerPipelineRunNodearray: ToEntityMarshaller[Seq[PipelineRunNode]]

  implicit def toEntityMarshallerGithubScm: ToEntityMarshaller[GithubScm]

  implicit def toEntityMarshallerQueueItemImpl: ToEntityMarshaller[QueueItemImpl]

  implicit def toEntityMarshallerPipelineStepImplarray: ToEntityMarshaller[Seq[PipelineStepImpl]]

  implicit def toEntityMarshallerPipelineRun: ToEntityMarshaller[PipelineRun]

  implicit def toEntityMarshallerQueueItemImplarray: ToEntityMarshaller[Seq[QueueItemImpl]]

  implicit def toEntityMarshallerPipelineImpl: ToEntityMarshaller[PipelineImpl]

  implicit def toEntityMarshallerGithubOrganizationarray: ToEntityMarshaller[Seq[GithubOrganization]]

  implicit def toEntityMarshallerFavoriteImpl: ToEntityMarshaller[FavoriteImpl]

  implicit def toEntityMarshallerPipelineFolderImpl: ToEntityMarshaller[PipelineFolderImpl]

  implicit def toEntityMarshallerMultibranchPipeline: ToEntityMarshaller[MultibranchPipeline]

}

