package api

import org.openapitools.OpenApiExceptions
import javax.inject.{Inject, Singleton}
import play.api.libs.json._
import play.api.mvc._
import model.DefaultCrumbIssuer

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
@Singleton
class BaseApiController @Inject()(cc: ControllerComponents, api: BaseApi) extends AbstractController(cc) {
  /**
    * GET /crumbIssuer/api/json
    */
  def getCrumb(): Action[AnyContent] = Action { request =>
    def executeApi(): DefaultCrumbIssuer = {
      api.getCrumb()
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  private def splitCollectionParam(paramValues: String, collectionFormat: String): List[String] = {
    val splitBy =
      collectionFormat match {
        case "csv" => ",+"
        case "tsv" => "\t+"
        case "ssv" => " +"
        case "pipes" => "|+"
      }

    paramValues.split(splitBy).toList
  }
}
