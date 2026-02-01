package org.openapitools.server

import akka.http.scaladsl.Http
import akka.http.scaladsl.server.Route
import org.openapitools.server.api.BaseApi
import org.openapitools.server.api.BlueOceanApi
import org.openapitools.server.api.RemoteAccessApi

import akka.http.scaladsl.server.Directives._
import akka.actor.ActorSystem
import akka.stream.Materializer

class Controller(base: BaseApi, blueOcean: BlueOceanApi, remoteAccess: RemoteAccessApi)(implicit system: ActorSystem, materializer: Materializer) {

    lazy val routes: Route = base.route ~ blueOcean.route ~ remoteAccess.route 

    Http().newServerAt("0.0.0.0", 9000).bind(routes)
}
