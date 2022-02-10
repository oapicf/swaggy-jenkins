package org.openapitools.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.model.StatusCodes
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import akka.http.scaladsl.unmarshalling.FromEntityUnmarshaller
import akka.http.scaladsl.unmarshalling.FromStringUnmarshaller
import org.openapitools.server.AkkaHttpHelper._
import org.openapitools.server.model.DefaultCrumbIssuer


class BaseApi(
    baseService: BaseApiService,
    baseMarshaller: BaseApiMarshaller
) {

  
  import baseMarshaller._

  lazy val route: Route =
    path("crumbIssuer" / "api" / "json") { 
      get {  
            baseService.getCrumb()
      }
    }
}


trait BaseApiService {

  def getCrumb200(responseDefaultCrumbIssuer: DefaultCrumbIssuer)(implicit toEntityMarshallerDefaultCrumbIssuer: ToEntityMarshaller[DefaultCrumbIssuer]): Route =
    complete((200, responseDefaultCrumbIssuer))
  def getCrumb401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getCrumb403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved CSRF protection token, DataType: DefaultCrumbIssuer
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getCrumb()
      (implicit toEntityMarshallerDefaultCrumbIssuer: ToEntityMarshaller[DefaultCrumbIssuer]): Route

}

trait BaseApiMarshaller {


  implicit def toEntityMarshallerDefaultCrumbIssuer: ToEntityMarshaller[DefaultCrumbIssuer]

}

