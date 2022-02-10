package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineActivityartifacts.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class PipelineActivityartifacts(
  name: Option[String],
  size: Option[Int],
  url: Option[String],
  `class`: Option[String]
  additionalProperties: 
)

object PipelineActivityartifacts {
  implicit lazy val pipelineActivityartifactsJsonFormat: Format[PipelineActivityartifacts] = {
    val realJsonFormat = Json.format[PipelineActivityartifacts]
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
      Writes { pipelineActivityartifacts =>
        val jsObj = realJsonFormat.writes(pipelineActivityartifacts)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

