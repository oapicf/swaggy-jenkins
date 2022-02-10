package api

import org.openapitools.OpenApiExceptions
import javax.inject.{Inject, Singleton}
import play.api.libs.json._
import play.api.mvc._
import model.BranchImpl
import model.FavoriteImpl
import model.GithubOrganization
import model.GithubScm
import model.JsObject
import model.MultibranchPipeline
import model.Organisation
import model.Pipeline
import model.PipelineActivity
import model.PipelineFolderImpl
import model.PipelineImpl
import model.PipelineRun
import model.PipelineRunNode
import model.PipelineStepImpl
import model.QueueItemImpl
import model.UNKNOWN_BASE_TYPE
import model.User

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
@Singleton
class BlueOceanApiController @Inject()(cc: ControllerComponents, api: BlueOceanApi) extends AbstractController(cc) {
  /**
    * DELETE /blue/rest/organizations/:organization/pipelines/:pipeline/queue/:queue
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param queue Name of the queue item
    */
  def deletePipelineQueueItem(organization: String, pipeline: String, queue: String): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      api.deletePipelineQueueItem(organization, pipeline, queue)
    }

    executeApi()
    Ok
  }

  /**
    * GET /blue/rest/organizations/:organization/user/
    * @param organization Name of the organization
    */
  def getAuthenticatedUser(organization: String): Action[AnyContent] = Action { request =>
    def executeApi(): User = {
      api.getAuthenticatedUser(organization)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/classes/:class
    * @param `class` Name of the class
    */
  def getClasses(`class`: String): Action[AnyContent] = Action { request =>
    def executeApi(): String = {
      api.getClasses(`class`)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /jwt-auth/jwks/:key
    * @param key Key ID received as part of JWT header field kid
    */
  def getJsonWebKey(key: Int): Action[AnyContent] = Action { request =>
    def executeApi(): String = {
      api.getJsonWebKey(key)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /jwt-auth/token?expiryTimeInMins=[value]&maxExpiryTimeInMins=[value]
    */
  def getJsonWebToken(): Action[AnyContent] = Action { request =>
    def executeApi(): String = {
      val expiryTimeInMins = request.getQueryString("expiryTimeInMins")
        .map(value => value.toInt)
      val maxExpiryTimeInMins = request.getQueryString("maxExpiryTimeInMins")
        .map(value => value.toInt)
      api.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization
    * @param organization Name of the organization
    */
  def getOrganisation(organization: String): Action[AnyContent] = Action { request =>
    def executeApi(): Organisation = {
      api.getOrganisation(organization)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/
    */
  def getOrganisations(): Action[AnyContent] = Action { request =>
    def executeApi(): List[Organisation] = {
      api.getOrganisations()
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def getPipeline(organization: String, pipeline: String): Action[AnyContent] = Action { request =>
    def executeApi(): Pipeline = {
      api.getPipeline(organization, pipeline)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/activities
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def getPipelineActivities(organization: String, pipeline: String): Action[AnyContent] = Action { request =>
    def executeApi(): List[PipelineActivity] = {
      api.getPipelineActivities(organization, pipeline)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param branch Name of the branch
    */
  def getPipelineBranch(organization: String, pipeline: String, branch: String): Action[AnyContent] = Action { request =>
    def executeApi(): BranchImpl = {
      api.getPipelineBranch(organization, pipeline, branch)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/runs/:run
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param branch Name of the branch
    * @param run Name of the run
    */
  def getPipelineBranchRun(organization: String, pipeline: String, branch: String, run: String): Action[AnyContent] = Action { request =>
    def executeApi(): PipelineRun = {
      api.getPipelineBranchRun(organization, pipeline, branch, run)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/branches
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def getPipelineBranches(organization: String, pipeline: String): Action[AnyContent] = Action { request =>
    def executeApi(): MultibranchPipeline = {
      api.getPipelineBranches(organization, pipeline)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:folder/
    * @param organization Name of the organization
    * @param folder Name of the folder
    */
  def getPipelineFolder(organization: String, folder: String): Action[AnyContent] = Action { request =>
    def executeApi(): PipelineFolderImpl = {
      api.getPipelineFolder(organization, folder)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:folder/pipelines/:pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param folder Name of the folder
    */
  def getPipelineFolderPipeline(organization: String, pipeline: String, folder: String): Action[AnyContent] = Action { request =>
    def executeApi(): PipelineImpl = {
      api.getPipelineFolderPipeline(organization, pipeline, folder)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/queue
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def getPipelineQueue(organization: String, pipeline: String): Action[AnyContent] = Action { request =>
    def executeApi(): List[QueueItemImpl] = {
      api.getPipelineQueue(organization, pipeline)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    */
  def getPipelineRun(organization: String, pipeline: String, run: String): Action[AnyContent] = Action { request =>
    def executeApi(): PipelineRun = {
      api.getPipelineRun(organization, pipeline, run)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/log?start=[value]&download=[value]
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    */
  def getPipelineRunLog(organization: String, pipeline: String, run: String): Action[AnyContent] = Action { request =>
    def executeApi(): String = {
      val start = request.getQueryString("start")
        .map(value => value.toInt)
      val download = request.getQueryString("download")
        .map(value => value.toBoolean)
      api.getPipelineRunLog(organization, pipeline, run, start, download)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    * @param node Name of the node
    */
  def getPipelineRunNode(organization: String, pipeline: String, run: String, node: String): Action[AnyContent] = Action { request =>
    def executeApi(): PipelineRunNode = {
      api.getPipelineRunNode(organization, pipeline, run, node)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    * @param node Name of the node
    * @param step Name of the step
    */
  def getPipelineRunNodeStep(organization: String, pipeline: String, run: String, node: String, step: String): Action[AnyContent] = Action { request =>
    def executeApi(): PipelineStepImpl = {
      api.getPipelineRunNodeStep(organization, pipeline, run, node, step)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step/log
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    * @param node Name of the node
    * @param step Name of the step
    */
  def getPipelineRunNodeStepLog(organization: String, pipeline: String, run: String, node: String, step: String): Action[AnyContent] = Action { request =>
    def executeApi(): String = {
      api.getPipelineRunNodeStepLog(organization, pipeline, run, node, step)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    * @param node Name of the node
    */
  def getPipelineRunNodeSteps(organization: String, pipeline: String, run: String, node: String): Action[AnyContent] = Action { request =>
    def executeApi(): List[PipelineStepImpl] = {
      api.getPipelineRunNodeSteps(organization, pipeline, run, node)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    */
  def getPipelineRunNodes(organization: String, pipeline: String, run: String): Action[AnyContent] = Action { request =>
    def executeApi(): List[PipelineRunNode] = {
      api.getPipelineRunNodes(organization, pipeline, run)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/:pipeline/runs
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def getPipelineRuns(organization: String, pipeline: String): Action[AnyContent] = Action { request =>
    def executeApi(): List[PipelineRun] = {
      api.getPipelineRuns(organization, pipeline)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/pipelines/
    * @param organization Name of the organization
    */
  def getPipelines(organization: String): Action[AnyContent] = Action { request =>
    def executeApi(): List[Pipeline] = {
      api.getPipelines(organization)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/scm/:scm
    * @param organization Name of the organization
    * @param scm Name of SCM
    */
  def getSCM(organization: String, scm: String): Action[AnyContent] = Action { request =>
    def executeApi(): GithubScm = {
      api.getSCM(organization, scm)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories?credentialId=[value]&pageSize=[value]&pageNumber=[value]
    * @param organization Name of the organization
    * @param scm Name of SCM
    * @param scmOrganisation Name of the SCM organization
    */
  def getSCMOrganisationRepositories(organization: String, scm: String, scmOrganisation: String): Action[AnyContent] = Action { request =>
    def executeApi(): List[GithubOrganization] = {
      val credentialId = request.getQueryString("credentialId")
        
      val pageSize = request.getQueryString("pageSize")
        .map(value => value.toInt)
      val pageNumber = request.getQueryString("pageNumber")
        .map(value => value.toInt)
      api.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories/:repository?credentialId=[value]
    * @param organization Name of the organization
    * @param scm Name of SCM
    * @param scmOrganisation Name of the SCM organization
    * @param repository Name of the SCM repository
    */
  def getSCMOrganisationRepository(organization: String, scm: String, scmOrganisation: String, repository: String): Action[AnyContent] = Action { request =>
    def executeApi(): List[GithubOrganization] = {
      val credentialId = request.getQueryString("credentialId")
        
      api.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/scm/:scm/organizations?credentialId=[value]
    * @param organization Name of the organization
    * @param scm Name of SCM
    */
  def getSCMOrganisations(organization: String, scm: String): Action[AnyContent] = Action { request =>
    def executeApi(): List[GithubOrganization] = {
      val credentialId = request.getQueryString("credentialId")
        
      api.getSCMOrganisations(organization, scm, credentialId)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/users/:user
    * @param organization Name of the organization
    * @param user Name of the user
    */
  def getUser(organization: String, user: String): Action[AnyContent] = Action { request =>
    def executeApi(): User = {
      api.getUser(organization, user)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/users/:user/favorites
    * @param user Name of the user
    */
  def getUserFavorites(user: String): Action[AnyContent] = Action { request =>
    def executeApi(): List[FavoriteImpl] = {
      api.getUserFavorites(user)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/organizations/:organization/users/
    * @param organization Name of the organization
    */
  def getUsers(organization: String): Action[AnyContent] = Action { request =>
    def executeApi(): User = {
      api.getUsers(organization)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * POST /blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/replay
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    */
  def postPipelineRun(organization: String, pipeline: String, run: String): Action[AnyContent] = Action { request =>
    def executeApi(): QueueItemImpl = {
      api.postPipelineRun(organization, pipeline, run)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * POST /blue/rest/organizations/:organization/pipelines/:pipeline/runs
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def postPipelineRuns(organization: String, pipeline: String): Action[AnyContent] = Action { request =>
    def executeApi(): QueueItemImpl = {
      api.postPipelineRuns(organization, pipeline)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * PUT /blue/rest/organizations/:organization/pipelines/:pipeline/favorite
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def putPipelineFavorite(organization: String, pipeline: String): Action[AnyContent] = Action { request =>
    def executeApi(): FavoriteImpl = {
      val uNKNOWNBASETYPE = request.body.asJson.map(_.as[UNKNOWN_BASE_TYPE]).getOrElse {
        throw new OpenApiExceptions.MissingRequiredParameterException("body", "uNKNOWNBASETYPE")
      }
      api.putPipelineFavorite(organization, pipeline, uNKNOWNBASETYPE)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * PUT /blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/stop?blocking=[value]&timeOutInSecs=[value]
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    */
  def putPipelineRun(organization: String, pipeline: String, run: String): Action[AnyContent] = Action { request =>
    def executeApi(): PipelineRun = {
      val blocking = request.getQueryString("blocking")
        
      val timeOutInSecs = request.getQueryString("timeOutInSecs")
        .map(value => value.toInt)
      api.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/search/?q=[value]
    */
  def search(): Action[AnyContent] = Action { request =>
    def executeApi(): String = {
      val q = request.getQueryString("q")
        .getOrElse {
          throw new OpenApiExceptions.MissingRequiredParameterException("q", "query string")
        }
      api.search(q)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /blue/rest/classes/?q=[value]
    */
  def searchClasses(): Action[AnyContent] = Action { request =>
    def executeApi(): String = {
      val q = request.getQueryString("q")
        .getOrElse {
          throw new OpenApiExceptions.MissingRequiredParameterException("q", "query string")
        }
      api.searchClasses(q)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  private def splitCollectionParam(paramValues: String, collectionFormat: String): List[String] = {
    val splitBy =
      collectionFormat match {
        case "csv" => ",+"
        case "tsv" => "\t+"
        case "ssv" => " +"
        case "pipes" => "|+"
      }

    paramValues.split(splitBy).toList
  }
}
