package api

import play.api.libs.json._
import model.DefaultCrumbIssuer

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
trait BaseApi {
  /**
    * Retrieve CSRF protection token
    */
  def getCrumb(): DefaultCrumbIssuer
}
