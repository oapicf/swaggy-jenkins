package org.openapitools.apis

import org.openapitools.apis.path._
import org.openapitools.apis.query._

import org.openapitools.models.DefaultCrumbIssuer


import cats.Monad
import cats.syntax.all._

import org.http4s._
import org.http4s.circe._
import org.http4s.server._
import org.http4s.headers._
import org.http4s.dsl.Http4sDsl
import org.http4s.circe.CirceEntityEncoder._

final case class BaseApiRoutes[
  F[_]: JsonDecoder: Monad, jenkins_auth
](delegate: BaseApiDelegate[F, jenkins_auth]) extends Http4sDsl[F] {
  object getCrumb {
    import BaseApiDelegate.getCrumbResponses


    val routejenkins_auth = AuthedRoutes.of[jenkins_auth, F] {
      case (req @ GET -> Root / "crumbIssuer" / "api" / "json") as auth =>
        delegate.getCrumb.handle_jenkins_auth(auth, req, responses)

    }

    val responses: getCrumbResponses[F] = new getCrumbResponses[F] {
      def resp200(value: DefaultCrumbIssuer): F[Response[F]] = Ok(value)
      def resp401(authenticate: `WWW-Authenticate`): F[Response[F]] = Unauthorized(authenticate)
      def resp403(): F[Response[F]] = Forbidden()
    }
  }

  val routesjenkins_auth =
    getCrumb.routejenkins_auth
}

object BaseApiDelegate {
  trait getCrumbResponses[F[_]] {
    def resp200(value: DefaultCrumbIssuer): F[Response[F]]
    def resp401(authenticate: `WWW-Authenticate`): F[Response[F]]
    def resp403(): F[Response[F]]
  }

}

trait BaseApiDelegate[F[_], jenkins_auth] {

  trait getCrumb {
    import BaseApiDelegate.getCrumbResponses


    def handle_jenkins_auth(
      auth: jenkins_auth,
      req: Request[F],
      responses: getCrumbResponses[F]
    ): F[Response[F]]

  }
  def getCrumb: getCrumb

}