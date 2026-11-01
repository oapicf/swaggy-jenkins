package api

import play.api.libs.json._
import model.DefaultCrumbIssuer

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:23:42.633582383Z[Etc/UTC]", comments = "Generator version: 7.26.0")
trait BaseApi {
  /**
    * Retrieve CSRF protection token
    */
  def getCrumb(): DefaultCrumbIssuer
}
