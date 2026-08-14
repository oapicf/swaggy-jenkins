package org.openapitools

import org.http4s.circe._
import cats.Monad
import cats.syntax.all._
import cats.data.OptionT
import cats.data.Kleisli
import org.http4s._
import org.http4s.server._

import org.openapitools.apis._

final case class API [
  F[_]: JsonDecoder: Monad, jenkins_auth, jwt_auth
](
  jenkinsAuth: Kleisli[OptionT[F, *], Request[F], jenkins_auth],
  jwtAuth: Kleisli[OptionT[F, *], Request[F], jwt_auth],
)(
  delegateBaseApi: BaseApiDelegate[F, jenkins_auth],
  delegateBlueOceanApi: BlueOceanApiDelegate[F, jenkins_auth],
  delegateRemoteAccessApi: RemoteAccessApiDelegate[F, jenkins_auth],
){
  val jenkinsAuthMiddleware = AuthMiddleware(jenkinsAuth)

  val baseApiRoutes = new BaseApiRoutes(delegateBaseApi)
  val blueOceanApiRoutes = new BlueOceanApiRoutes(delegateBlueOceanApi)
  val remoteAccessApiRoutes = new RemoteAccessApiRoutes(delegateRemoteAccessApi)

  val routes = 
    blueOceanApiRoutes.routes
  
  val routesjenkins_auth = jenkinsAuthMiddleware(
    baseApiRoutes.routesjenkins_auth <+>
      blueOceanApiRoutes.routesjenkins_auth <+>
      remoteAccessApiRoutes.routesjenkins_auth
  )

  val routesAll =
    routes <+>
    routesjenkins_auth
}
