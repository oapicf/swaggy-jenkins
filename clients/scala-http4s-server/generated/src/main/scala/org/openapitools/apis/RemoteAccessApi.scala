package org.openapitools.apis

import org.openapitools.apis.path._
import org.openapitools.apis.query._

import org.openapitools.models.ComputerSet
import org.openapitools.models.FreeStyleBuild
import org.openapitools.models.FreeStyleProject
import org.openapitools.models.Hudson
import org.openapitools.models.ListView
import org.openapitools.models.Queue


import cats.Monad
import cats.syntax.all._

import org.http4s._
import org.http4s.circe._
import org.http4s.server._
import org.http4s.headers._
import org.http4s.dsl.Http4sDsl
import org.http4s.circe.CirceEntityEncoder._

final case class RemoteAccessApiRoutes[
  F[_]: JsonDecoder: Monad, jenkins_auth
](delegate: RemoteAccessApiDelegate[F, jenkins_auth]) extends Http4sDsl[F] {
  object getComputer {
    import RemoteAccessApiDelegate.getComputerResponses

    object depthQueryParam extends QueryParamDecoderMatcher[Int]("depth")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "computer" / "api" / "json" :? depthQueryParam(depth)) as auth =>
        delegate.getComputer.handle_jenkins_auth(auth, req, depth, responses)

    }

    val responses: getComputerResponses[F] = new getComputerResponses[F] {
      def resp200(value: ComputerSet): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getJenkins {
    import RemoteAccessApiDelegate.getJenkinsResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "api" / "json") as auth =>
        delegate.getJenkins.handle_jenkins_auth(auth, req, responses)

    }

    val responses: getJenkinsResponses[F] = new getJenkinsResponses[F] {
      def resp200(value: Hudson): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getJob {
    import RemoteAccessApiDelegate.getJobResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "job" / name / "api" / "json") as auth =>
        delegate.getJob.handle_jenkins_auth(auth, req, name, responses)

    }

    val responses: getJobResponses[F] = new getJobResponses[F] {
      def resp200(value: FreeStyleProject): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object getJobConfig {
    import RemoteAccessApiDelegate.getJobConfigResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "job" / name / "config.xml") as auth =>
        delegate.getJobConfig.handle_jenkins_auth(auth, req, name, responses)

    }

    val responses: getJobConfigResponses[F] = new getJobConfigResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object getJobLastBuild {
    import RemoteAccessApiDelegate.getJobLastBuildResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "job" / name / "lastBuild" / "api" / "json") as auth =>
        delegate.getJobLastBuild.handle_jenkins_auth(auth, req, name, responses)

    }

    val responses: getJobLastBuildResponses[F] = new getJobLastBuildResponses[F] {
      def resp200(value: FreeStyleBuild): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object getJobProgressiveText {
    import RemoteAccessApiDelegate.getJobProgressiveTextResponses

    object startQueryParam extends QueryParamDecoderMatcher[String]("start")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "job" / name / number / "logText" / "progressiveText" :? startQueryParam(start)) as auth =>
        delegate.getJobProgressiveText.handle_jenkins_auth(auth, req, name, number, start, responses)

    }

    val responses: getJobProgressiveTextResponses[F] = new getJobProgressiveTextResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object getQueue {
    import RemoteAccessApiDelegate.getQueueResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "queue" / "api" / "json") as auth =>
        delegate.getQueue.handle_jenkins_auth(auth, req, responses)

    }

    val responses: getQueueResponses[F] = new getQueueResponses[F] {
      def resp200(value: Queue): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getQueueItem {
    import RemoteAccessApiDelegate.getQueueItemResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "queue" / "item" / number / "api" / "json") as auth =>
        delegate.getQueueItem.handle_jenkins_auth(auth, req, number, responses)

    }

    val responses: getQueueItemResponses[F] = new getQueueItemResponses[F] {
      def resp200(value: Queue): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object getView {
    import RemoteAccessApiDelegate.getViewResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "view" / name / "api" / "json") as auth =>
        delegate.getView.handle_jenkins_auth(auth, req, name, responses)

    }

    val responses: getViewResponses[F] = new getViewResponses[F] {
      def resp200(value: ListView): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object getViewConfig {
    import RemoteAccessApiDelegate.getViewConfigResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "view" / name / "config.xml") as auth =>
        delegate.getViewConfig.handle_jenkins_auth(auth, req, name, responses)

    }

    val responses: getViewConfigResponses[F] = new getViewConfigResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object headJenkins {
    import RemoteAccessApiDelegate.headJenkinsResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ HEAD -> Root / "api" / "json") as auth =>
        delegate.headJenkins.handle_jenkins_auth(auth, req, responses)

    }

    val responses: headJenkinsResponses[F] = new headJenkinsResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object postCreateItem {
    import RemoteAccessApiDelegate.postCreateItemResponses

    object nameQueryParam extends QueryParamDecoderMatcher[String]("name")
    object fromQueryParam extends OptionalQueryParamDecoderMatcher[String]("from")
    object modeQueryParam extends OptionalQueryParamDecoderMatcher[String]("mode")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ POST -> Root / "createItem" :? nameQueryParam(name) +& fromQueryParam(from) +& modeQueryParam(mode)) as auth =>
          delegate.postCreateItem.handle_jenkins_auth(auth, req, req.asJsonDecode[String] , name, from, mode, responses)

    }

    val responses: postCreateItemResponses[F] = new postCreateItemResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp400(): F[Response[F]] = BadRequest()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object postCreateView {
    import RemoteAccessApiDelegate.postCreateViewResponses

    object nameQueryParam extends QueryParamDecoderMatcher[String]("name")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ POST -> Root / "createView" :? nameQueryParam(name)) as auth =>
          delegate.postCreateView.handle_jenkins_auth(auth, req, req.asJsonDecode[String] , name, responses)

    }

    val responses: postCreateViewResponses[F] = new postCreateViewResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp400(): F[Response[F]] = BadRequest()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }
  object postJobBuild {
    import RemoteAccessApiDelegate.postJobBuildResponses

    object jsonQueryParam extends QueryParamDecoderMatcher[String]("json")
    object tokenQueryParam extends OptionalQueryParamDecoderMatcher[String]("token")

    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ POST -> Root / "job" / name / "build" :? jsonQueryParam(json) +& tokenQueryParam(token)) as auth =>
        delegate.postJobBuild.handle_jenkins_auth(auth, req, name, json, token, responses)

    }

    val responses: postJobBuildResponses[F] = new postJobBuildResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp201(): F[Response[F]] = Created()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object postJobConfig {
    import RemoteAccessApiDelegate.postJobConfigResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ POST -> Root / "job" / name / "config.xml") as auth =>
          delegate.postJobConfig.handle_jenkins_auth(auth, req, req.asJsonDecode[String] , name, responses)

    }

    val responses: postJobConfigResponses[F] = new postJobConfigResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp400(): F[Response[F]] = BadRequest()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object postJobDelete {
    import RemoteAccessApiDelegate.postJobDeleteResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ POST -> Root / "job" / name / "doDelete") as auth =>
        delegate.postJobDelete.handle_jenkins_auth(auth, req, name, responses)

    }

    val responses: postJobDeleteResponses[F] = new postJobDeleteResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object postJobDisable {
    import RemoteAccessApiDelegate.postJobDisableResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ POST -> Root / "job" / name / "disable") as auth =>
        delegate.postJobDisable.handle_jenkins_auth(auth, req, name, responses)

    }

    val responses: postJobDisableResponses[F] = new postJobDisableResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object postJobEnable {
    import RemoteAccessApiDelegate.postJobEnableResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ POST -> Root / "job" / name / "enable") as auth =>
        delegate.postJobEnable.handle_jenkins_auth(auth, req, name, responses)

    }

    val responses: postJobEnableResponses[F] = new postJobEnableResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object postJobLastBuildStop {
    import RemoteAccessApiDelegate.postJobLastBuildStopResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ POST -> Root / "job" / name / "lastBuild" / "stop") as auth =>
        delegate.postJobLastBuildStop.handle_jenkins_auth(auth, req, name, responses)

    }

    val responses: postJobLastBuildStopResponses[F] = new postJobLastBuildStopResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }
  object postViewConfig {
    import RemoteAccessApiDelegate.postViewConfigResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ POST -> Root / "view" / name / "config.xml") as auth =>
          delegate.postViewConfig.handle_jenkins_auth(auth, req, req.asJsonDecode[String] , name, responses)

    }

    val responses: postViewConfigResponses[F] = new postViewConfigResponses[F] {
      def resp200(): F[Response[F]] = Ok()
      def resp400(): F[Response[F]] = BadRequest()
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
      def resp404(): F[Response[F]] = NotFound()
    }
  }

  val routesjenkins_auth =
    getComputer.routejenkins_auth <+>
    getJenkins.routejenkins_auth <+>
    getJob.routejenkins_auth <+>
    getJobConfig.routejenkins_auth <+>
    getJobLastBuild.routejenkins_auth <+>
    getJobProgressiveText.routejenkins_auth <+>
    getQueue.routejenkins_auth <+>
    getQueueItem.routejenkins_auth <+>
    getView.routejenkins_auth <+>
    getViewConfig.routejenkins_auth <+>
    headJenkins.routejenkins_auth <+>
    postCreateItem.routejenkins_auth <+>
    postCreateView.routejenkins_auth <+>
    postJobBuild.routejenkins_auth <+>
    postJobConfig.routejenkins_auth <+>
    postJobDelete.routejenkins_auth <+>
    postJobDisable.routejenkins_auth <+>
    postJobEnable.routejenkins_auth <+>
    postJobLastBuildStop.routejenkins_auth <+>
    postViewConfig.routejenkins_auth
}

object RemoteAccessApiDelegate {
  trait getComputerResponses[F[_]] {
    def resp200(value: ComputerSet): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getJenkinsResponses[F[_]] {
    def resp200(value: Hudson): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getJobResponses[F[_]] {
    def resp200(value: FreeStyleProject): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait getJobConfigResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait getJobLastBuildResponses[F[_]] {
    def resp200(value: FreeStyleBuild): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait getJobProgressiveTextResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait getQueueResponses[F[_]] {
    def resp200(value: Queue): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getQueueItemResponses[F[_]] {
    def resp200(value: Queue): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait getViewResponses[F[_]] {
    def resp200(value: ListView): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait getViewConfigResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait headJenkinsResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait postCreateItemResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp400(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait postCreateViewResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp400(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

  trait postJobBuildResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp201(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait postJobConfigResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp400(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait postJobDeleteResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait postJobDisableResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait postJobEnableResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait postJobLastBuildStopResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

  trait postViewConfigResponses[F[_]] {
    def resp200(): F[Response[F]]
    def resp400(): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
    def resp404(): F[Response[F]]
  }

}

trait RemoteAccessApiDelegate[F[_], jenkins_auth] {

  trait getComputer {
    import RemoteAccessApiDelegate.getComputerResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      depth: Int,
      responses: getComputerResponses[F]
    ): F[Response[F]]

  }
  def getComputer: getComputer


  trait getJenkins {
    import RemoteAccessApiDelegate.getJenkinsResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      responses: getJenkinsResponses[F]
    ): F[Response[F]]

  }
  def getJenkins: getJenkins


  trait getJob {
    import RemoteAccessApiDelegate.getJobResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      name: String,
      responses: getJobResponses[F]
    ): F[Response[F]]

  }
  def getJob: getJob


  trait getJobConfig {
    import RemoteAccessApiDelegate.getJobConfigResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      name: String,
      responses: getJobConfigResponses[F]
    ): F[Response[F]]

  }
  def getJobConfig: getJobConfig


  trait getJobLastBuild {
    import RemoteAccessApiDelegate.getJobLastBuildResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      name: String,
      responses: getJobLastBuildResponses[F]
    ): F[Response[F]]

  }
  def getJobLastBuild: getJobLastBuild


  trait getJobProgressiveText {
    import RemoteAccessApiDelegate.getJobProgressiveTextResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      name: String,
      number: String,
      start: String,
      responses: getJobProgressiveTextResponses[F]
    ): F[Response[F]]

  }
  def getJobProgressiveText: getJobProgressiveText


  trait getQueue {
    import RemoteAccessApiDelegate.getQueueResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      responses: getQueueResponses[F]
    ): F[Response[F]]

  }
  def getQueue: getQueue


  trait getQueueItem {
    import RemoteAccessApiDelegate.getQueueItemResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      number: String,
      responses: getQueueItemResponses[F]
    ): F[Response[F]]

  }
  def getQueueItem: getQueueItem


  trait getView {
    import RemoteAccessApiDelegate.getViewResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      name: String,
      responses: getViewResponses[F]
    ): F[Response[F]]

  }
  def getView: getView


  trait getViewConfig {
    import RemoteAccessApiDelegate.getViewConfigResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      name: String,
      responses: getViewConfigResponses[F]
    ): F[Response[F]]

  }
  def getViewConfig: getViewConfig


  trait headJenkins {
    import RemoteAccessApiDelegate.headJenkinsResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      responses: headJenkinsResponses[F]
    ): F[Response[F]]

  }
  def headJenkins: headJenkins


  trait postCreateItem {
    import RemoteAccessApiDelegate.postCreateItemResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      postCreateItem: F[String],
      name: String,
      from: Option[String],
      mode: Option[String],
      responses: postCreateItemResponses[F]
    ): F[Response[F]]


  }
  def postCreateItem: postCreateItem


  trait postCreateView {
    import RemoteAccessApiDelegate.postCreateViewResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      postCreateView: F[String],
      name: String,
      responses: postCreateViewResponses[F]
    ): F[Response[F]]


  }
  def postCreateView: postCreateView


  trait postJobBuild {
    import RemoteAccessApiDelegate.postJobBuildResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      name: String,
      json: String,
      token: Option[String],
      responses: postJobBuildResponses[F]
    ): F[Response[F]]

  }
  def postJobBuild: postJobBuild


  trait postJobConfig {
    import RemoteAccessApiDelegate.postJobConfigResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      postJobConfig: F[String],
      name: String,
      responses: postJobConfigResponses[F]
    ): F[Response[F]]


  }
  def postJobConfig: postJobConfig


  trait postJobDelete {
    import RemoteAccessApiDelegate.postJobDeleteResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      name: String,
      responses: postJobDeleteResponses[F]
    ): F[Response[F]]

  }
  def postJobDelete: postJobDelete


  trait postJobDisable {
    import RemoteAccessApiDelegate.postJobDisableResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      name: String,
      responses: postJobDisableResponses[F]
    ): F[Response[F]]

  }
  def postJobDisable: postJobDisable


  trait postJobEnable {
    import RemoteAccessApiDelegate.postJobEnableResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      name: String,
      responses: postJobEnableResponses[F]
    ): F[Response[F]]

  }
  def postJobEnable: postJobEnable


  trait postJobLastBuildStop {
    import RemoteAccessApiDelegate.postJobLastBuildStopResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      name: String,
      responses: postJobLastBuildStopResponses[F]
    ): F[Response[F]]

  }
  def postJobLastBuildStop: postJobLastBuildStop


  trait postViewConfig {
    import RemoteAccessApiDelegate.postViewConfigResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      postViewConfig: F[String],
      name: String,
      responses: postViewConfigResponses[F]
    ): F[Response[F]]


  }
  def postViewConfig: postViewConfig

}