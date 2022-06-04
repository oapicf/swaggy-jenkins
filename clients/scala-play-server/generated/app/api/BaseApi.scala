package api

import play.api.libs.json._
import model.DefaultCrumbIssuer

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
trait BaseApi {
  /**
    * Retrieve CSRF protection token
    */
  def getCrumb(): DefaultCrumbIssuer
}
