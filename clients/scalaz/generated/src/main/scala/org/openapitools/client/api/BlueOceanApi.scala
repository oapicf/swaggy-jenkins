package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import java.io.File
import java.net.URLEncoder
import java.util.UUID

import org.http4s._
import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.http4s.client._
import org.http4s.client.blaze.PooledHttp1Client
import org.http4s.headers._

import org.joda.time.DateTime

import scalaz.concurrent.Task

import HelperCodecs._

import org.openapitools.client.api.BranchImpl
import org.openapitools.client.api.FavoriteImpl
import org.openapitools.client.api.GithubOrganization
import org.openapitools.client.api.GithubScm
import org.openapitools.client.api.MultibranchPipeline
import org.openapitools.client.api.Organisation
import org.openapitools.client.api.Pipeline
import org.openapitools.client.api.PipelineActivity
import org.openapitools.client.api.PipelineFolderImpl
import org.openapitools.client.api.PipelineImpl
import org.openapitools.client.api.PipelineRun
import org.openapitools.client.api.PipelineRunNode
import org.openapitools.client.api.PipelineStepImpl
import org.openapitools.client.api.QueueItemImpl
import org.openapitools.client.api.User

object BlueOceanApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def deletePipelineQueueItem(host: String, organization: String, pipeline: String, queue: String): Task[Unit] = {
    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "queue" + "\\}",escape(queue.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getAuthenticatedUser(host: String, organization: String): Task[User] = {
    implicit val returnTypeDecoder: EntityDecoder[User] = jsonOf[User]

    val path = "/blue/rest/organizations/{organization}/user/".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[User](req)

    } yield resp
  }

  def getClasses(host: String, `class`: String): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/blue/rest/classes/{class}".replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def getJsonWebKey(host: String, key: Integer): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/jwt-auth/jwks/{key}".replaceAll("\\{" + "key" + "\\}",escape(key.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def getJsonWebToken(host: String, expiryTimeInMins: Integer, maxExpiryTimeInMins: Integer)(implicit expiryTimeInMinsQuery: QueryParam[Integer], maxExpiryTimeInMinsQuery: QueryParam[Integer]): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/jwt-auth/token"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("expiryTimeInMins", Some(expiryTimeInMinsQuery.toParamString(expiryTimeInMins))), ("maxExpiryTimeInMins", Some(maxExpiryTimeInMinsQuery.toParamString(maxExpiryTimeInMins))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def getOrganisation(host: String, organization: String): Task[Organisation] = {
    implicit val returnTypeDecoder: EntityDecoder[Organisation] = jsonOf[Organisation]

    val path = "/blue/rest/organizations/{organization}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Organisation](req)

    } yield resp
  }

  def getOrganisations(host: String): Task[List[Organisation]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Organisation]] = jsonOf[List[Organisation]]

    val path = "/blue/rest/organizations/"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Organisation]](req)

    } yield resp
  }

  def getPipeline(host: String, organization: String, pipeline: String): Task[Pipeline] = {
    implicit val returnTypeDecoder: EntityDecoder[Pipeline] = jsonOf[Pipeline]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Pipeline](req)

    } yield resp
  }

  def getPipelineActivities(host: String, organization: String, pipeline: String): Task[List[PipelineActivity]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PipelineActivity]] = jsonOf[List[PipelineActivity]]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PipelineActivity]](req)

    } yield resp
  }

  def getPipelineBranch(host: String, organization: String, pipeline: String, branch: String): Task[BranchImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[BranchImpl] = jsonOf[BranchImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "branch" + "\\}",escape(branch.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BranchImpl](req)

    } yield resp
  }

  def getPipelineBranchRun(host: String, organization: String, pipeline: String, branch: String, run: String): Task[PipelineRun] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineRun] = jsonOf[PipelineRun]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "branch" + "\\}",escape(branch.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineRun](req)

    } yield resp
  }

  def getPipelineBranches(host: String, organization: String, pipeline: String): Task[MultibranchPipeline] = {
    implicit val returnTypeDecoder: EntityDecoder[MultibranchPipeline] = jsonOf[MultibranchPipeline]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MultibranchPipeline](req)

    } yield resp
  }

  def getPipelineFolder(host: String, organization: String, folder: String): Task[PipelineFolderImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineFolderImpl] = jsonOf[PipelineFolderImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{folder}/".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "folder" + "\\}",escape(folder.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineFolderImpl](req)

    } yield resp
  }

  def getPipelineFolderPipeline(host: String, organization: String, pipeline: String, folder: String): Task[PipelineImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineImpl] = jsonOf[PipelineImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "folder" + "\\}",escape(folder.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineImpl](req)

    } yield resp
  }

  def getPipelineQueue(host: String, organization: String, pipeline: String): Task[List[QueueItemImpl]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[QueueItemImpl]] = jsonOf[List[QueueItemImpl]]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[QueueItemImpl]](req)

    } yield resp
  }

  def getPipelineRun(host: String, organization: String, pipeline: String, run: String): Task[PipelineRun] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineRun] = jsonOf[PipelineRun]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineRun](req)

    } yield resp
  }

  def getPipelineRunLog(host: String, organization: String, pipeline: String, run: String, start: Integer, download: Boolean)(implicit startQuery: QueryParam[Integer], downloadQuery: QueryParam[Boolean]): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))), ("download", Some(downloadQuery.toParamString(download))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def getPipelineRunNode(host: String, organization: String, pipeline: String, run: String, node: String): Task[PipelineRunNode] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineRunNode] = jsonOf[PipelineRunNode]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString)).replaceAll("\\{" + "node" + "\\}",escape(node.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineRunNode](req)

    } yield resp
  }

  def getPipelineRunNodeStep(host: String, organization: String, pipeline: String, run: String, node: String, step: String): Task[PipelineStepImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineStepImpl] = jsonOf[PipelineStepImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString)).replaceAll("\\{" + "node" + "\\}",escape(node.toString)).replaceAll("\\{" + "step" + "\\}",escape(step.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineStepImpl](req)

    } yield resp
  }

  def getPipelineRunNodeStepLog(host: String, organization: String, pipeline: String, run: String, node: String, step: String): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString)).replaceAll("\\{" + "node" + "\\}",escape(node.toString)).replaceAll("\\{" + "step" + "\\}",escape(step.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def getPipelineRunNodeSteps(host: String, organization: String, pipeline: String, run: String, node: String): Task[List[PipelineStepImpl]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PipelineStepImpl]] = jsonOf[List[PipelineStepImpl]]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString)).replaceAll("\\{" + "node" + "\\}",escape(node.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PipelineStepImpl]](req)

    } yield resp
  }

  def getPipelineRunNodes(host: String, organization: String, pipeline: String, run: String): Task[List[PipelineRunNode]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PipelineRunNode]] = jsonOf[List[PipelineRunNode]]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PipelineRunNode]](req)

    } yield resp
  }

  def getPipelineRuns(host: String, organization: String, pipeline: String): Task[List[PipelineRun]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PipelineRun]] = jsonOf[List[PipelineRun]]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PipelineRun]](req)

    } yield resp
  }

  def getPipelines(host: String, organization: String): Task[List[Pipeline]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Pipeline]] = jsonOf[List[Pipeline]]

    val path = "/blue/rest/organizations/{organization}/pipelines/".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Pipeline]](req)

    } yield resp
  }

  def getSCM(host: String, organization: String, scm: String): Task[GithubScm] = {
    implicit val returnTypeDecoder: EntityDecoder[GithubScm] = jsonOf[GithubScm]

    val path = "/blue/rest/organizations/{organization}/scm/{scm}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "scm" + "\\}",escape(scm.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GithubScm](req)

    } yield resp
  }

  def getSCMOrganisationRepositories(host: String, organization: String, scm: String, scmOrganisation: String, credentialId: String, pageSize: Integer, pageNumber: Integer)(implicit credentialIdQuery: QueryParam[String], pageSizeQuery: QueryParam[Integer], pageNumberQuery: QueryParam[Integer]): Task[List[GithubOrganization]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[GithubOrganization]] = jsonOf[List[GithubOrganization]]

    val path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "scm" + "\\}",escape(scm.toString)).replaceAll("\\{" + "scmOrganisation" + "\\}",escape(scmOrganisation.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("credentialId", Some(credentialIdQuery.toParamString(credentialId))), ("pageSize", Some(pageSizeQuery.toParamString(pageSize))), ("pageNumber", Some(pageNumberQuery.toParamString(pageNumber))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[GithubOrganization]](req)

    } yield resp
  }

  def getSCMOrganisationRepository(host: String, organization: String, scm: String, scmOrganisation: String, repository: String, credentialId: String)(implicit credentialIdQuery: QueryParam[String]): Task[List[GithubOrganization]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[GithubOrganization]] = jsonOf[List[GithubOrganization]]

    val path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "scm" + "\\}",escape(scm.toString)).replaceAll("\\{" + "scmOrganisation" + "\\}",escape(scmOrganisation.toString)).replaceAll("\\{" + "repository" + "\\}",escape(repository.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("credentialId", Some(credentialIdQuery.toParamString(credentialId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[GithubOrganization]](req)

    } yield resp
  }

  def getSCMOrganisations(host: String, organization: String, scm: String, credentialId: String)(implicit credentialIdQuery: QueryParam[String]): Task[List[GithubOrganization]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[GithubOrganization]] = jsonOf[List[GithubOrganization]]

    val path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "scm" + "\\}",escape(scm.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("credentialId", Some(credentialIdQuery.toParamString(credentialId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[GithubOrganization]](req)

    } yield resp
  }

  def getUser(host: String, organization: String, user: String): Task[User] = {
    implicit val returnTypeDecoder: EntityDecoder[User] = jsonOf[User]

    val path = "/blue/rest/organizations/{organization}/users/{user}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "user" + "\\}",escape(user.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[User](req)

    } yield resp
  }

  def getUserFavorites(host: String, user: String): Task[List[FavoriteImpl]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[FavoriteImpl]] = jsonOf[List[FavoriteImpl]]

    val path = "/blue/rest/users/{user}/favorites".replaceAll("\\{" + "user" + "\\}",escape(user.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[FavoriteImpl]](req)

    } yield resp
  }

  def getUsers(host: String, organization: String): Task[User] = {
    implicit val returnTypeDecoder: EntityDecoder[User] = jsonOf[User]

    val path = "/blue/rest/organizations/{organization}/users/".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[User](req)

    } yield resp
  }

  def postPipelineRun(host: String, organization: String, pipeline: String, run: String): Task[QueueItemImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueItemImpl] = jsonOf[QueueItemImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueItemImpl](req)

    } yield resp
  }

  def postPipelineRuns(host: String, organization: String, pipeline: String): Task[QueueItemImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueItemImpl] = jsonOf[QueueItemImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueItemImpl](req)

    } yield resp
  }

  def putPipelineFavorite(host: String, organization: String, pipeline: String, body: Boolean): Task[FavoriteImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[FavoriteImpl] = jsonOf[FavoriteImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[FavoriteImpl](req)

    } yield resp
  }

  def putPipelineRun(host: String, organization: String, pipeline: String, run: String, blocking: String, timeOutInSecs: Integer)(implicit blockingQuery: QueryParam[String], timeOutInSecsQuery: QueryParam[Integer]): Task[PipelineRun] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineRun] = jsonOf[PipelineRun]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("blocking", Some(blockingQuery.toParamString(blocking))), ("timeOutInSecs", Some(timeOutInSecsQuery.toParamString(timeOutInSecs))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineRun](req)

    } yield resp
  }

  def search(host: String, q: String)(implicit qQuery: QueryParam[String]): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/blue/rest/search/"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("q", Some(qQuery.toParamString(q))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def searchClasses(host: String, q: String)(implicit qQuery: QueryParam[String]): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/blue/rest/classes/"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("q", Some(qQuery.toParamString(q))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

}

class HttpServiceBlueOceanApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def deletePipelineQueueItem(organization: String, pipeline: String, queue: String): Task[Unit] = {
    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "queue" + "\\}",escape(queue.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getAuthenticatedUser(organization: String): Task[User] = {
    implicit val returnTypeDecoder: EntityDecoder[User] = jsonOf[User]

    val path = "/blue/rest/organizations/{organization}/user/".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[User](req)

    } yield resp
  }

  def getClasses(`class`: String): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/blue/rest/classes/{class}".replaceAll("\\{" + "class" + "\\}",escape(`class`.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def getJsonWebKey(key: Integer): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/jwt-auth/jwks/{key}".replaceAll("\\{" + "key" + "\\}",escape(key.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def getJsonWebToken(expiryTimeInMins: Integer, maxExpiryTimeInMins: Integer)(implicit expiryTimeInMinsQuery: QueryParam[Integer], maxExpiryTimeInMinsQuery: QueryParam[Integer]): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/jwt-auth/token"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("expiryTimeInMins", Some(expiryTimeInMinsQuery.toParamString(expiryTimeInMins))), ("maxExpiryTimeInMins", Some(maxExpiryTimeInMinsQuery.toParamString(maxExpiryTimeInMins))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def getOrganisation(organization: String): Task[Organisation] = {
    implicit val returnTypeDecoder: EntityDecoder[Organisation] = jsonOf[Organisation]

    val path = "/blue/rest/organizations/{organization}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Organisation](req)

    } yield resp
  }

  def getOrganisations(): Task[List[Organisation]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Organisation]] = jsonOf[List[Organisation]]

    val path = "/blue/rest/organizations/"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Organisation]](req)

    } yield resp
  }

  def getPipeline(organization: String, pipeline: String): Task[Pipeline] = {
    implicit val returnTypeDecoder: EntityDecoder[Pipeline] = jsonOf[Pipeline]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Pipeline](req)

    } yield resp
  }

  def getPipelineActivities(organization: String, pipeline: String): Task[List[PipelineActivity]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PipelineActivity]] = jsonOf[List[PipelineActivity]]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PipelineActivity]](req)

    } yield resp
  }

  def getPipelineBranch(organization: String, pipeline: String, branch: String): Task[BranchImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[BranchImpl] = jsonOf[BranchImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "branch" + "\\}",escape(branch.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BranchImpl](req)

    } yield resp
  }

  def getPipelineBranchRun(organization: String, pipeline: String, branch: String, run: String): Task[PipelineRun] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineRun] = jsonOf[PipelineRun]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "branch" + "\\}",escape(branch.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineRun](req)

    } yield resp
  }

  def getPipelineBranches(organization: String, pipeline: String): Task[MultibranchPipeline] = {
    implicit val returnTypeDecoder: EntityDecoder[MultibranchPipeline] = jsonOf[MultibranchPipeline]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MultibranchPipeline](req)

    } yield resp
  }

  def getPipelineFolder(organization: String, folder: String): Task[PipelineFolderImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineFolderImpl] = jsonOf[PipelineFolderImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{folder}/".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "folder" + "\\}",escape(folder.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineFolderImpl](req)

    } yield resp
  }

  def getPipelineFolderPipeline(organization: String, pipeline: String, folder: String): Task[PipelineImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineImpl] = jsonOf[PipelineImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "folder" + "\\}",escape(folder.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineImpl](req)

    } yield resp
  }

  def getPipelineQueue(organization: String, pipeline: String): Task[List[QueueItemImpl]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[QueueItemImpl]] = jsonOf[List[QueueItemImpl]]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[QueueItemImpl]](req)

    } yield resp
  }

  def getPipelineRun(organization: String, pipeline: String, run: String): Task[PipelineRun] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineRun] = jsonOf[PipelineRun]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineRun](req)

    } yield resp
  }

  def getPipelineRunLog(organization: String, pipeline: String, run: String, start: Integer, download: Boolean)(implicit startQuery: QueryParam[Integer], downloadQuery: QueryParam[Boolean]): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))), ("download", Some(downloadQuery.toParamString(download))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def getPipelineRunNode(organization: String, pipeline: String, run: String, node: String): Task[PipelineRunNode] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineRunNode] = jsonOf[PipelineRunNode]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString)).replaceAll("\\{" + "node" + "\\}",escape(node.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineRunNode](req)

    } yield resp
  }

  def getPipelineRunNodeStep(organization: String, pipeline: String, run: String, node: String, step: String): Task[PipelineStepImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineStepImpl] = jsonOf[PipelineStepImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString)).replaceAll("\\{" + "node" + "\\}",escape(node.toString)).replaceAll("\\{" + "step" + "\\}",escape(step.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineStepImpl](req)

    } yield resp
  }

  def getPipelineRunNodeStepLog(organization: String, pipeline: String, run: String, node: String, step: String): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString)).replaceAll("\\{" + "node" + "\\}",escape(node.toString)).replaceAll("\\{" + "step" + "\\}",escape(step.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def getPipelineRunNodeSteps(organization: String, pipeline: String, run: String, node: String): Task[List[PipelineStepImpl]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PipelineStepImpl]] = jsonOf[List[PipelineStepImpl]]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString)).replaceAll("\\{" + "node" + "\\}",escape(node.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PipelineStepImpl]](req)

    } yield resp
  }

  def getPipelineRunNodes(organization: String, pipeline: String, run: String): Task[List[PipelineRunNode]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PipelineRunNode]] = jsonOf[List[PipelineRunNode]]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PipelineRunNode]](req)

    } yield resp
  }

  def getPipelineRuns(organization: String, pipeline: String): Task[List[PipelineRun]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PipelineRun]] = jsonOf[List[PipelineRun]]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PipelineRun]](req)

    } yield resp
  }

  def getPipelines(organization: String): Task[List[Pipeline]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Pipeline]] = jsonOf[List[Pipeline]]

    val path = "/blue/rest/organizations/{organization}/pipelines/".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Pipeline]](req)

    } yield resp
  }

  def getSCM(organization: String, scm: String): Task[GithubScm] = {
    implicit val returnTypeDecoder: EntityDecoder[GithubScm] = jsonOf[GithubScm]

    val path = "/blue/rest/organizations/{organization}/scm/{scm}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "scm" + "\\}",escape(scm.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GithubScm](req)

    } yield resp
  }

  def getSCMOrganisationRepositories(organization: String, scm: String, scmOrganisation: String, credentialId: String, pageSize: Integer, pageNumber: Integer)(implicit credentialIdQuery: QueryParam[String], pageSizeQuery: QueryParam[Integer], pageNumberQuery: QueryParam[Integer]): Task[List[GithubOrganization]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[GithubOrganization]] = jsonOf[List[GithubOrganization]]

    val path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "scm" + "\\}",escape(scm.toString)).replaceAll("\\{" + "scmOrganisation" + "\\}",escape(scmOrganisation.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("credentialId", Some(credentialIdQuery.toParamString(credentialId))), ("pageSize", Some(pageSizeQuery.toParamString(pageSize))), ("pageNumber", Some(pageNumberQuery.toParamString(pageNumber))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[GithubOrganization]](req)

    } yield resp
  }

  def getSCMOrganisationRepository(organization: String, scm: String, scmOrganisation: String, repository: String, credentialId: String)(implicit credentialIdQuery: QueryParam[String]): Task[List[GithubOrganization]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[GithubOrganization]] = jsonOf[List[GithubOrganization]]

    val path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "scm" + "\\}",escape(scm.toString)).replaceAll("\\{" + "scmOrganisation" + "\\}",escape(scmOrganisation.toString)).replaceAll("\\{" + "repository" + "\\}",escape(repository.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("credentialId", Some(credentialIdQuery.toParamString(credentialId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[GithubOrganization]](req)

    } yield resp
  }

  def getSCMOrganisations(organization: String, scm: String, credentialId: String)(implicit credentialIdQuery: QueryParam[String]): Task[List[GithubOrganization]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[GithubOrganization]] = jsonOf[List[GithubOrganization]]

    val path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "scm" + "\\}",escape(scm.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("credentialId", Some(credentialIdQuery.toParamString(credentialId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[GithubOrganization]](req)

    } yield resp
  }

  def getUser(organization: String, user: String): Task[User] = {
    implicit val returnTypeDecoder: EntityDecoder[User] = jsonOf[User]

    val path = "/blue/rest/organizations/{organization}/users/{user}".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "user" + "\\}",escape(user.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[User](req)

    } yield resp
  }

  def getUserFavorites(user: String): Task[List[FavoriteImpl]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[FavoriteImpl]] = jsonOf[List[FavoriteImpl]]

    val path = "/blue/rest/users/{user}/favorites".replaceAll("\\{" + "user" + "\\}",escape(user.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[FavoriteImpl]](req)

    } yield resp
  }

  def getUsers(organization: String): Task[User] = {
    implicit val returnTypeDecoder: EntityDecoder[User] = jsonOf[User]

    val path = "/blue/rest/organizations/{organization}/users/".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[User](req)

    } yield resp
  }

  def postPipelineRun(organization: String, pipeline: String, run: String): Task[QueueItemImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueItemImpl] = jsonOf[QueueItemImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueItemImpl](req)

    } yield resp
  }

  def postPipelineRuns(organization: String, pipeline: String): Task[QueueItemImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueItemImpl] = jsonOf[QueueItemImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueItemImpl](req)

    } yield resp
  }

  def putPipelineFavorite(organization: String, pipeline: String, body: Boolean): Task[FavoriteImpl] = {
    implicit val returnTypeDecoder: EntityDecoder[FavoriteImpl] = jsonOf[FavoriteImpl]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[FavoriteImpl](req)

    } yield resp
  }

  def putPipelineRun(organization: String, pipeline: String, run: String, blocking: String, timeOutInSecs: Integer)(implicit blockingQuery: QueryParam[String], timeOutInSecsQuery: QueryParam[Integer]): Task[PipelineRun] = {
    implicit val returnTypeDecoder: EntityDecoder[PipelineRun] = jsonOf[PipelineRun]

    val path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop".replaceAll("\\{" + "organization" + "\\}",escape(organization.toString)).replaceAll("\\{" + "pipeline" + "\\}",escape(pipeline.toString)).replaceAll("\\{" + "run" + "\\}",escape(run.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("blocking", Some(blockingQuery.toParamString(blocking))), ("timeOutInSecs", Some(timeOutInSecsQuery.toParamString(timeOutInSecs))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PipelineRun](req)

    } yield resp
  }

  def search(q: String)(implicit qQuery: QueryParam[String]): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/blue/rest/search/"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("q", Some(qQuery.toParamString(q))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

  def searchClasses(q: String)(implicit qQuery: QueryParam[String]): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/blue/rest/classes/"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("q", Some(qQuery.toParamString(q))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[String](req)

    } yield resp
  }

}
