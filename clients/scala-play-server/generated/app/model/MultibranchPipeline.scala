package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for MultibranchPipeline.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-11T12:54:41.523230Z[Etc/UTC]")
case class MultibranchPipeline(
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  latestRun: Option[String],
  name: Option[String],
  organization: Option[String],
  weatherScore: Option[Int],
  branchNames: Option[List[String]],
  numberOfFailingBranches: Option[Int],
  numberOfFailingPullRequests: Option[Int],
  numberOfSuccessfulBranches: Option[Int],
  numberOfSuccessfulPullRequests: Option[Int],
  totalNumberOfBranches: Option[Int],
  totalNumberOfPullRequests: Option[Int],
  `class`: Option[String]
  additionalProperties: 
)

object MultibranchPipeline {
  implicit lazy val multibranchPipelineJsonFormat: Format[MultibranchPipeline] = {
    val realJsonFormat = Json.format[MultibranchPipeline]
    val declaredPropNames = Set("displayName", "estimatedDurationInMillis", "latestRun", "name", "organization", "weatherScore", "branchNames", "numberOfFailingBranches", "numberOfFailingPullRequests", "numberOfSuccessfulBranches", "numberOfSuccessfulPullRequests", "totalNumberOfBranches", "totalNumberOfPullRequests", "`class`")
    
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
      Writes { multibranchPipeline =>
        val jsObj = realJsonFormat.writes(multibranchPipeline)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

