package org.openapitools.server

import akka.http.scaladsl.Http
import akka.http.scaladsl.server.Route
import org.openapitools.server.api.BaseApi
import org.openapitools.server.api.BlueOceanApi
import org.openapitools.server.api.RemoteAccessApi

import akka.http.scaladsl.server.Directives._
import akka.actor.ActorSystem
import akka.stream.ActorMaterializer

class Controller(base: BaseApi, blueOcean: BlueOceanApi, remoteAccess: RemoteAccessApi)(implicit system: ActorSystem, materializer: ActorMaterializer) {

    lazy val routes: Route = base.route ~ blueOcean.route ~ remoteAccess.route 

    Http().bindAndHandle(routes, "0.0.0.0", 9000)
}