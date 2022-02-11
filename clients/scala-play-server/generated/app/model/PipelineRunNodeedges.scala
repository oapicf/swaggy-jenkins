package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunNodeedges.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-11T12:54:41.523230Z[Etc/UTC]")
case class PipelineRunNodeedges(
  id: Option[String],
  `class`: Option[String]
  additionalProperties: 
)

object PipelineRunNodeedges {
  implicit lazy val pipelineRunNodeedgesJsonFormat: Format[PipelineRunNodeedges] = {
    val realJsonFormat = Json.format[PipelineRunNodeedges]
    val declaredPropNames = Set("id", "`class`")
    
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
      Writes { pipelineRunNodeedges =>
        val jsObj = realJsonFormat.writes(pipelineRunNodeedges)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

