package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Pipeline.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class Pipeline(
  `class`: Option[String],
  organization: Option[String],
  name: Option[String],
  displayName: Option[String],
  fullName: Option[String],
  weatherScore: Option[Int],
  estimatedDurationInMillis: Option[Int],
  latestRun: Option[PipelinelatestRun]
  additionalProperties: 
)

object Pipeline {
  implicit lazy val pipelineJsonFormat: Format[Pipeline] = {
    val realJsonFormat = Json.format[Pipeline]
    val declaredPropNames = Set("`class`", "organization", "name", "displayName", "fullName", "weatherScore", "estimatedDurationInMillis", "latestRun")
    
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
      Writes { pipeline =>
        val jsObj = realJsonFormat.writes(pipeline)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

