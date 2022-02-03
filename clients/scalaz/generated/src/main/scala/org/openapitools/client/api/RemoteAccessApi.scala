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

import org.openapitools.client.api.ComputerSet
import org.openapitools.client.api.FreeStyleBuild
import org.openapitools.client.api.FreeStyleProject
import org.openapitools.client.api.Hudson
import org.openapitools.client.api.ListView
import org.openapitools.client.api.Queue

object RemoteAccessApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getComputer(host: String, depth: Integer)(implicit depthQuery: QueryParam[Integer]): Task[ComputerSet] = {
    implicit val returnTypeDecoder: EntityDecoder[ComputerSet] = jsonOf[ComputerSet]

    val path = "/computer/api/json"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("depth", Some(depthQuery.toParamString(depth))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ComputerSet](req)

    } yield resp
  }

  def getJenkins(host: String): Task[Hudson] = {
    implicit val returnTypeDecoder: EntityDecoder[Hudson] = jsonOf[Hudson]

    val path = "/api/json"

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
      resp          <- client.expect[Hudson](req)

    } yield resp
  }

  def getJob(host: String, name: String): Task[FreeStyleProject] = {
    implicit val returnTypeDecoder: EntityDecoder[FreeStyleProject] = jsonOf[FreeStyleProject]

    val path = "/job/{name}/api/json".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

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
      resp          <- client.expect[FreeStyleProject](req)

    } yield resp
  }

  def getJobConfig(host: String, name: String): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/job/{name}/config.xml".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

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

  def getJobLastBuild(host: String, name: String): Task[FreeStyleBuild] = {
    implicit val returnTypeDecoder: EntityDecoder[FreeStyleBuild] = jsonOf[FreeStyleBuild]

    val path = "/job/{name}/lastBuild/api/json".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

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
      resp          <- client.expect[FreeStyleBuild](req)

    } yield resp
  }

  def getJobProgressiveText(host: String, name: String, number: String, start: String)(implicit startQuery: QueryParam[String]): Task[Unit] = {
    val path = "/job/{name}/{number}/logText/progressiveText".replaceAll("\\{" + "name" + "\\}",escape(name.toString)).replaceAll("\\{" + "number" + "\\}",escape(number.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQueue(host: String): Task[Queue] = {
    implicit val returnTypeDecoder: EntityDecoder[Queue] = jsonOf[Queue]

    val path = "/queue/api/json"

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
      resp          <- client.expect[Queue](req)

    } yield resp
  }

  def getQueueItem(host: String, number: String): Task[Queue] = {
    implicit val returnTypeDecoder: EntityDecoder[Queue] = jsonOf[Queue]

    val path = "/queue/item/{number}/api/json".replaceAll("\\{" + "number" + "\\}",escape(number.toString))

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
      resp          <- client.expect[Queue](req)

    } yield resp
  }

  def getView(host: String, name: String): Task[ListView] = {
    implicit val returnTypeDecoder: EntityDecoder[ListView] = jsonOf[ListView]

    val path = "/view/{name}/api/json".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

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
      resp          <- client.expect[ListView](req)

    } yield resp
  }

  def getViewConfig(host: String, name: String): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/view/{name}/config.xml".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

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

  def headJenkins(host: String): Task[Unit] = {
    val path = "/api/json"

    val httpMethod = Method.HEAD
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

  def postCreateItem(host: String, name: String, from: String, mode: String, jenkinsCrumb: String, `contentType`: String, body: String)(implicit nameQuery: QueryParam[String], fromQuery: QueryParam[String], modeQuery: QueryParam[String]): Task[Unit] = {
    val path = "/createItem"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb), Header("Content-Type", `contentType`))
    val queryParams = Query(
      ("name", Some(nameQuery.toParamString(name))), ("from", Some(fromQuery.toParamString(from))), ("mode", Some(modeQuery.toParamString(mode))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postCreateView(host: String, name: String, jenkinsCrumb: String, `contentType`: String, body: String)(implicit nameQuery: QueryParam[String]): Task[Unit] = {
    val path = "/createView"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb), Header("Content-Type", `contentType`))
    val queryParams = Query(
      ("name", Some(nameQuery.toParamString(name))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobBuild(host: String, name: String, json: String, token: String, jenkinsCrumb: String)(implicit jsonQuery: QueryParam[String], tokenQuery: QueryParam[String]): Task[Unit] = {
    val path = "/job/{name}/build".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      ("json", Some(jsonQuery.toParamString(json))), ("token", Some(tokenQuery.toParamString(token))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobConfig(host: String, name: String, body: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/job/{name}/config.xml".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobDelete(host: String, name: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/job/{name}/doDelete".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobDisable(host: String, name: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/job/{name}/disable".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobEnable(host: String, name: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/job/{name}/enable".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobLastBuildStop(host: String, name: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/job/{name}/lastBuild/stop".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postViewConfig(host: String, name: String, body: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/view/{name}/config.xml".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

}

class HttpServiceRemoteAccessApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getComputer(depth: Integer)(implicit depthQuery: QueryParam[Integer]): Task[ComputerSet] = {
    implicit val returnTypeDecoder: EntityDecoder[ComputerSet] = jsonOf[ComputerSet]

    val path = "/computer/api/json"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("depth", Some(depthQuery.toParamString(depth))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ComputerSet](req)

    } yield resp
  }

  def getJenkins(): Task[Hudson] = {
    implicit val returnTypeDecoder: EntityDecoder[Hudson] = jsonOf[Hudson]

    val path = "/api/json"

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
      resp          <- client.expect[Hudson](req)

    } yield resp
  }

  def getJob(name: String): Task[FreeStyleProject] = {
    implicit val returnTypeDecoder: EntityDecoder[FreeStyleProject] = jsonOf[FreeStyleProject]

    val path = "/job/{name}/api/json".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

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
      resp          <- client.expect[FreeStyleProject](req)

    } yield resp
  }

  def getJobConfig(name: String): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/job/{name}/config.xml".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

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

  def getJobLastBuild(name: String): Task[FreeStyleBuild] = {
    implicit val returnTypeDecoder: EntityDecoder[FreeStyleBuild] = jsonOf[FreeStyleBuild]

    val path = "/job/{name}/lastBuild/api/json".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

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
      resp          <- client.expect[FreeStyleBuild](req)

    } yield resp
  }

  def getJobProgressiveText(name: String, number: String, start: String)(implicit startQuery: QueryParam[String]): Task[Unit] = {
    val path = "/job/{name}/{number}/logText/progressiveText".replaceAll("\\{" + "name" + "\\}",escape(name.toString)).replaceAll("\\{" + "number" + "\\}",escape(number.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getQueue(): Task[Queue] = {
    implicit val returnTypeDecoder: EntityDecoder[Queue] = jsonOf[Queue]

    val path = "/queue/api/json"

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
      resp          <- client.expect[Queue](req)

    } yield resp
  }

  def getQueueItem(number: String): Task[Queue] = {
    implicit val returnTypeDecoder: EntityDecoder[Queue] = jsonOf[Queue]

    val path = "/queue/item/{number}/api/json".replaceAll("\\{" + "number" + "\\}",escape(number.toString))

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
      resp          <- client.expect[Queue](req)

    } yield resp
  }

  def getView(name: String): Task[ListView] = {
    implicit val returnTypeDecoder: EntityDecoder[ListView] = jsonOf[ListView]

    val path = "/view/{name}/api/json".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

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
      resp          <- client.expect[ListView](req)

    } yield resp
  }

  def getViewConfig(name: String): Task[String] = {
    implicit val returnTypeDecoder: EntityDecoder[String] = jsonOf[String]

    val path = "/view/{name}/config.xml".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

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

  def headJenkins(): Task[Unit] = {
    val path = "/api/json"

    val httpMethod = Method.HEAD
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

  def postCreateItem(name: String, from: String, mode: String, jenkinsCrumb: String, `contentType`: String, body: String)(implicit nameQuery: QueryParam[String], fromQuery: QueryParam[String], modeQuery: QueryParam[String]): Task[Unit] = {
    val path = "/createItem"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb), Header("Content-Type", `contentType`))
    val queryParams = Query(
      ("name", Some(nameQuery.toParamString(name))), ("from", Some(fromQuery.toParamString(from))), ("mode", Some(modeQuery.toParamString(mode))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postCreateView(name: String, jenkinsCrumb: String, `contentType`: String, body: String)(implicit nameQuery: QueryParam[String]): Task[Unit] = {
    val path = "/createView"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb), Header("Content-Type", `contentType`))
    val queryParams = Query(
      ("name", Some(nameQuery.toParamString(name))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobBuild(name: String, json: String, token: String, jenkinsCrumb: String)(implicit jsonQuery: QueryParam[String], tokenQuery: QueryParam[String]): Task[Unit] = {
    val path = "/job/{name}/build".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      ("json", Some(jsonQuery.toParamString(json))), ("token", Some(tokenQuery.toParamString(token))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobConfig(name: String, body: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/job/{name}/config.xml".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobDelete(name: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/job/{name}/doDelete".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobDisable(name: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/job/{name}/disable".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobEnable(name: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/job/{name}/enable".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postJobLastBuildStop(name: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/job/{name}/lastBuild/stop".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def postViewConfig(name: String, body: String, jenkinsCrumb: String): Task[Unit] = {
    val path = "/view/{name}/config.xml".replaceAll("\\{" + "name" + "\\}",escape(name.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("Jenkins-Crumb", jenkinsCrumb))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

}
