/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 */


package org.openapitools.server.api

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
import org.openapitools.server.model.User

import java.io.File

import org.scalatra.ScalatraServlet
import org.scalatra.swagger._
import org.json4s._
import org.json4s.JsonDSL._
import org.scalatra.json.{ JValueResult, JacksonJsonSupport }
import org.scalatra.servlet.{ FileUploadSupport, MultipartConfig, SizeConstraintExceededException }

import scala.collection.JavaConverters._

class BlueOceanApi(implicit val swagger: Swagger) extends ScalatraServlet
  with FileUploadSupport
  with JacksonJsonSupport
  with SwaggerSupport {
  protected implicit val jsonFormats: Formats = DefaultFormats

  protected val applicationDescription: String = "BlueOceanApi"

  before() {
    contentType = formats("json")
    response.headers += ("Access-Control-Allow-Origin" -> "*")
  }
  

  val deletePipelineQueueItemOperation = (apiOperation[Unit]("deletePipelineQueueItem")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("queue").description(""))
  )

  delete("/blue/rest/organizations/:organization/pipelines/:pipeline/queue/:queue", operation(deletePipelineQueueItemOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val queue = params.getOrElse("queue", halt(400))
    //println("queue: " + queue)
  }

  

  val getAuthenticatedUserOperation = (apiOperation[User]("getAuthenticatedUser")
    summary ""
    parameters(pathParam[String]("organization").description(""))
  )

  get("/blue/rest/organizations/:organization/user/", operation(getAuthenticatedUserOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
  }

  

  val getClassesOperation = (apiOperation[String]("getClasses")
    summary ""
    parameters(pathParam[String]("`class`").description(""))
  )

  get("/blue/rest/classes/:class", operation(getClassesOperation)) {
    val `class` = params.getOrElse("`class`", halt(400))
    //println("`class`: " + `class`)
  }

  

  val getJsonWebKeyOperation = (apiOperation[String]("getJsonWebKey")
    summary ""
    parameters(pathParam[Int]("key").description(""))
  )

  get("/jwt-auth/jwks/:key", operation(getJsonWebKeyOperation)) {
    val key = params.getOrElse("key", halt(400))
    //println("key: " + key)
  }

  

  val getJsonWebTokenOperation = (apiOperation[String]("getJsonWebToken")
    summary ""
    parameters(queryParam[Int]("expiryTimeInMins").description("").optional, queryParam[Int]("maxExpiryTimeInMins").description("").optional)
  )

  get("/jwt-auth/token", operation(getJsonWebTokenOperation)) {
            val expiryTimeInMins = params.getAs[Int]("expiryTimeInMins")

    //println("expiryTimeInMins: " + expiryTimeInMins)
            val maxExpiryTimeInMins = params.getAs[Int]("maxExpiryTimeInMins")

    //println("maxExpiryTimeInMins: " + maxExpiryTimeInMins)
  }

  

  val getOrganisationOperation = (apiOperation[Organisation]("getOrganisation")
    summary ""
    parameters(pathParam[String]("organization").description(""))
  )

  get("/blue/rest/organizations/:organization", operation(getOrganisationOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
  }

  

  val getOrganisationsOperation = (apiOperation[List[Organisation]]("getOrganisations")
    summary ""
    parameters()
  )

  get("/blue/rest/organizations/", operation(getOrganisationsOperation)) {
  }

  

  val getPipelineOperation = (apiOperation[Pipeline]("getPipeline")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline", operation(getPipelineOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
  }

  

  val getPipelineActivitiesOperation = (apiOperation[List[PipelineActivity]]("getPipelineActivities")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/activities", operation(getPipelineActivitiesOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
  }

  

  val getPipelineBranchOperation = (apiOperation[BranchImpl]("getPipelineBranch")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("branch").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/", operation(getPipelineBranchOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val branch = params.getOrElse("branch", halt(400))
    //println("branch: " + branch)
  }

  

  val getPipelineBranchRunOperation = (apiOperation[PipelineRun]("getPipelineBranchRun")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("branch").description(""), pathParam[String]("run").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/runs/:run", operation(getPipelineBranchRunOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val branch = params.getOrElse("branch", halt(400))
    //println("branch: " + branch)
    val run = params.getOrElse("run", halt(400))
    //println("run: " + run)
  }

  

  val getPipelineBranchesOperation = (apiOperation[MultibranchPipeline]("getPipelineBranches")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/branches", operation(getPipelineBranchesOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
  }

  

  val getPipelineFolderOperation = (apiOperation[PipelineFolderImpl]("getPipelineFolder")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("folder").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:folder/", operation(getPipelineFolderOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val folder = params.getOrElse("folder", halt(400))
    //println("folder: " + folder)
  }

  

  val getPipelineFolderPipelineOperation = (apiOperation[PipelineImpl]("getPipelineFolderPipeline")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("folder").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:folder/pipelines/:pipeline", operation(getPipelineFolderPipelineOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val folder = params.getOrElse("folder", halt(400))
    //println("folder: " + folder)
  }

  

  val getPipelineQueueOperation = (apiOperation[List[QueueItemImpl]]("getPipelineQueue")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/queue", operation(getPipelineQueueOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
  }

  

  val getPipelineRunOperation = (apiOperation[PipelineRun]("getPipelineRun")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("run").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run", operation(getPipelineRunOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val run = params.getOrElse("run", halt(400))
    //println("run: " + run)
  }

  

  val getPipelineRunLogOperation = (apiOperation[String]("getPipelineRunLog")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("run").description(""), queryParam[Int]("start").description("").optional, queryParam[Boolean]("download").description("").optional)
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/log", operation(getPipelineRunLogOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val run = params.getOrElse("run", halt(400))
    //println("run: " + run)
            val start = params.getAs[Int]("start")

    //println("start: " + start)
            val download = params.getAs[Boolean]("download")

    //println("download: " + download)
  }

  

  val getPipelineRunNodeOperation = (apiOperation[PipelineRunNode]("getPipelineRunNode")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("run").description(""), pathParam[String]("node").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node", operation(getPipelineRunNodeOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val run = params.getOrElse("run", halt(400))
    //println("run: " + run)
    val node = params.getOrElse("node", halt(400))
    //println("node: " + node)
  }

  

  val getPipelineRunNodeStepOperation = (apiOperation[PipelineStepImpl]("getPipelineRunNodeStep")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("run").description(""), pathParam[String]("node").description(""), pathParam[String]("step").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step", operation(getPipelineRunNodeStepOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val run = params.getOrElse("run", halt(400))
    //println("run: " + run)
    val node = params.getOrElse("node", halt(400))
    //println("node: " + node)
    val step = params.getOrElse("step", halt(400))
    //println("step: " + step)
  }

  

  val getPipelineRunNodeStepLogOperation = (apiOperation[String]("getPipelineRunNodeStepLog")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("run").description(""), pathParam[String]("node").description(""), pathParam[String]("step").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step/log", operation(getPipelineRunNodeStepLogOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val run = params.getOrElse("run", halt(400))
    //println("run: " + run)
    val node = params.getOrElse("node", halt(400))
    //println("node: " + node)
    val step = params.getOrElse("step", halt(400))
    //println("step: " + step)
  }

  

  val getPipelineRunNodeStepsOperation = (apiOperation[List[PipelineStepImpl]]("getPipelineRunNodeSteps")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("run").description(""), pathParam[String]("node").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps", operation(getPipelineRunNodeStepsOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val run = params.getOrElse("run", halt(400))
    //println("run: " + run)
    val node = params.getOrElse("node", halt(400))
    //println("node: " + node)
  }

  

  val getPipelineRunNodesOperation = (apiOperation[List[PipelineRunNode]]("getPipelineRunNodes")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("run").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes", operation(getPipelineRunNodesOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val run = params.getOrElse("run", halt(400))
    //println("run: " + run)
  }

  

  val getPipelineRunsOperation = (apiOperation[List[PipelineRun]]("getPipelineRuns")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/:pipeline/runs", operation(getPipelineRunsOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
  }

  

  val getPipelinesOperation = (apiOperation[List[Pipeline]]("getPipelines")
    summary ""
    parameters(pathParam[String]("organization").description(""))
  )

  get("/blue/rest/organizations/:organization/pipelines/", operation(getPipelinesOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
  }

  

  val getSCMOperation = (apiOperation[GithubScm]("getSCM")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("scm").description(""))
  )

  get("/blue/rest/organizations/:organization/scm/:scm", operation(getSCMOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val scm = params.getOrElse("scm", halt(400))
    //println("scm: " + scm)
  }

  

  val getSCMOrganisationRepositoriesOperation = (apiOperation[List[GithubOrganization]]("getSCMOrganisationRepositories")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("scm").description(""), pathParam[String]("scmOrganisation").description(""), queryParam[String]("credentialId").description("").optional, queryParam[Int]("pageSize").description("").optional, queryParam[Int]("pageNumber").description("").optional)
  )

  get("/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories", operation(getSCMOrganisationRepositoriesOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val scm = params.getOrElse("scm", halt(400))
    //println("scm: " + scm)
    val scmOrganisation = params.getOrElse("scmOrganisation", halt(400))
    //println("scmOrganisation: " + scmOrganisation)
            val credentialId = params.getAs[String]("credentialId")

    //println("credentialId: " + credentialId)
            val pageSize = params.getAs[Int]("pageSize")

    //println("pageSize: " + pageSize)
            val pageNumber = params.getAs[Int]("pageNumber")

    //println("pageNumber: " + pageNumber)
  }

  

  val getSCMOrganisationRepositoryOperation = (apiOperation[List[GithubOrganization]]("getSCMOrganisationRepository")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("scm").description(""), pathParam[String]("scmOrganisation").description(""), pathParam[String]("repository").description(""), queryParam[String]("credentialId").description("").optional)
  )

  get("/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories/:repository", operation(getSCMOrganisationRepositoryOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val scm = params.getOrElse("scm", halt(400))
    //println("scm: " + scm)
    val scmOrganisation = params.getOrElse("scmOrganisation", halt(400))
    //println("scmOrganisation: " + scmOrganisation)
    val repository = params.getOrElse("repository", halt(400))
    //println("repository: " + repository)
            val credentialId = params.getAs[String]("credentialId")

    //println("credentialId: " + credentialId)
  }

  

  val getSCMOrganisationsOperation = (apiOperation[List[GithubOrganization]]("getSCMOrganisations")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("scm").description(""), queryParam[String]("credentialId").description("").optional)
  )

  get("/blue/rest/organizations/:organization/scm/:scm/organizations", operation(getSCMOrganisationsOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val scm = params.getOrElse("scm", halt(400))
    //println("scm: " + scm)
            val credentialId = params.getAs[String]("credentialId")

    //println("credentialId: " + credentialId)
  }

  

  val getUserOperation = (apiOperation[User]("getUser")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("user").description(""))
  )

  get("/blue/rest/organizations/:organization/users/:user", operation(getUserOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val user = params.getOrElse("user", halt(400))
    //println("user: " + user)
  }

  

  val getUserFavoritesOperation = (apiOperation[List[FavoriteImpl]]("getUserFavorites")
    summary ""
    parameters(pathParam[String]("user").description(""))
  )

  get("/blue/rest/users/:user/favorites", operation(getUserFavoritesOperation)) {
    val user = params.getOrElse("user", halt(400))
    //println("user: " + user)
  }

  

  val getUsersOperation = (apiOperation[User]("getUsers")
    summary ""
    parameters(pathParam[String]("organization").description(""))
  )

  get("/blue/rest/organizations/:organization/users/", operation(getUsersOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
  }

  

  val postPipelineRunOperation = (apiOperation[QueueItemImpl]("postPipelineRun")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("run").description(""))
  )

  post("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/replay", operation(postPipelineRunOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val run = params.getOrElse("run", halt(400))
    //println("run: " + run)
  }

  

  val postPipelineRunsOperation = (apiOperation[QueueItemImpl]("postPipelineRuns")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""))
  )

  post("/blue/rest/organizations/:organization/pipelines/:pipeline/runs", operation(postPipelineRunsOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
  }

  

  val putPipelineFavoriteOperation = (apiOperation[FavoriteImpl]("putPipelineFavorite")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), bodyParam[Boolean]("body").description(""))
  )

  put("/blue/rest/organizations/:organization/pipelines/:pipeline/favorite", operation(putPipelineFavoriteOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    //println("body: " + body)
  }

  

  val putPipelineRunOperation = (apiOperation[PipelineRun]("putPipelineRun")
    summary ""
    parameters(pathParam[String]("organization").description(""), pathParam[String]("pipeline").description(""), pathParam[String]("run").description(""), queryParam[String]("blocking").description("").optional, queryParam[Int]("timeOutInSecs").description("").optional)
  )

  put("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/stop", operation(putPipelineRunOperation)) {
    val organization = params.getOrElse("organization", halt(400))
    //println("organization: " + organization)
    val pipeline = params.getOrElse("pipeline", halt(400))
    //println("pipeline: " + pipeline)
    val run = params.getOrElse("run", halt(400))
    //println("run: " + run)
            val blocking = params.getAs[String]("blocking")

    //println("blocking: " + blocking)
            val timeOutInSecs = params.getAs[Int]("timeOutInSecs")

    //println("timeOutInSecs: " + timeOutInSecs)
  }

  

  val searchOperation = (apiOperation[String]("search")
    summary ""
    parameters(queryParam[String]("q").description(""))
  )

  get("/blue/rest/search/", operation(searchOperation)) {
            val q = params.getAs[String]("q")

    //println("q: " + q)
  }

  

  val searchClassesOperation = (apiOperation[String]("searchClasses")
    summary ""
    parameters(queryParam[String]("q").description(""))
  )

  get("/blue/rest/classes/", operation(searchClassesOperation)) {
            val q = params.getAs[String]("q")

    //println("q: " + q)
  }

}
