package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineStepImpllinks.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class PipelineStepImpllinks(
  self: Option[Link],
  actions: Option[Link],
  `class`: Option[String]
  additionalProperties: 
)

object PipelineStepImpllinks {
  implicit lazy val pipelineStepImpllinksJsonFormat: Format[PipelineStepImpllinks] = {
    val realJsonFormat = Json.format[PipelineStepImpllinks]
    val declaredPropNames = Set("self", "actions", "`class`")
    
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
      Writes { pipelineStepImpllinks =>
        val jsObj = realJsonFormat.writes(pipelineStepImpllinks)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

