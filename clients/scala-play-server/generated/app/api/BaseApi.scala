package api

import play.api.libs.json._
import model.DefaultCrumbIssuer

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-10-11T12:08:51.915360815Z[Etc/UTC]", comments = "Generator version: 7.24.0")
trait BaseApi {
  /**
    * Retrieve CSRF protection token
    */
  def getCrumb(): DefaultCrumbIssuer
}
