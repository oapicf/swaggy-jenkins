package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelinelatestRunartifacts.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class PipelinelatestRunartifacts(
  name: Option[String],
  size: Option[Int],
  url: Option[String],
  `class`: Option[String]
  additionalProperties: 
)

object PipelinelatestRunartifacts {
  implicit lazy val pipelinelatestRunartifactsJsonFormat: Format[PipelinelatestRunartifacts] = {
    val realJsonFormat = Json.format[PipelinelatestRunartifacts]
    val declaredPropNames = Set("name", "size", "url", "`class`")
    
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
      Writes { pipelinelatestRunartifacts =>
        val jsObj = realJsonFormat.writes(pipelinelatestRunartifacts)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

