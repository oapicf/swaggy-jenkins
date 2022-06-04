package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineImpllinks.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class PipelineImpllinks(
  runs: Option[Link],
  self: Option[Link],
  queue: Option[Link],
  actions: Option[Link],
  `class`: Option[String]
  additionalProperties: 
)

object PipelineImpllinks {
  implicit lazy val pipelineImpllinksJsonFormat: Format[PipelineImpllinks] = {
    val realJsonFormat = Json.format[PipelineImpllinks]
    val declaredPropNames = Set("runs", "self", "queue", "actions", "`class`")
    
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
      Writes { pipelineImpllinks =>
        val jsObj = realJsonFormat.writes(pipelineImpllinks)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

