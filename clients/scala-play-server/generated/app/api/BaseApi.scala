package api

import play.api.libs.json._
import model.DefaultCrumbIssuer

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
trait BaseApi {
  /**
    * Retrieve CSRF protection token
    */
  def getCrumb(): DefaultCrumbIssuer
}
