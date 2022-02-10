package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunImpllinks.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class PipelineRunImpllinks(
  nodes: Option[Link],
  log: Option[Link],
  self: Option[Link],
  actions: Option[Link],
  steps: Option[Link],
  `class`: Option[String]
  additionalProperties: 
)

object PipelineRunImpllinks {
  implicit lazy val pipelineRunImpllinksJsonFormat: Format[PipelineRunImpllinks] = {
    val realJsonFormat = Json.format[PipelineRunImpllinks]
    val declaredPropNames = Set("nodes", "log", "self", "actions", "steps", "`class`")
    
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
      Writes { pipelineRunImpllinks =>
        val jsObj = realJsonFormat.writes(pipelineRunImpllinks)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

