package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineBranchesitem.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class PipelineBranchesitem(
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  name: Option[String],
  weatherScore: Option[Int],
  latestRun: Option[PipelineBranchesitemlatestRun],
  organization: Option[String],
  pullRequest: Option[PipelineBranchesitempullRequest],
  totalNumberOfPullRequests: Option[Int],
  `class`: Option[String]
  additionalProperties: 
)

object PipelineBranchesitem {
  implicit lazy val pipelineBranchesitemJsonFormat: Format[PipelineBranchesitem] = {
    val realJsonFormat = Json.format[PipelineBranchesitem]
    val declaredPropNames = Set("displayName", "estimatedDurationInMillis", "name", "weatherScore", "latestRun", "organization", "pullRequest", "totalNumberOfPullRequests", "`class`")
    
    Format(
      Reads {
        case JsObject(xs) =>
          val declaredProps = xs.filterKeys(declaredPropNames)
          val additionalProps = JsObject(xs -- declaredPropNames)
          val restructuredProps = declaredProps + ("additionalProperties" -> additionalProps)
          val newObj = JsObject(restructuredProps)
          realJsonFormat.reads(newObj)
        case _ =>
          JsError("error.expected.jsobject")
      },
      Writes { pipelineBranchesitem =>
        val jsObj = realJsonFormat.writes(pipelineBranchesitem)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

