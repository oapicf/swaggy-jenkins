package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for StringParameterDefinition.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class StringParameterDefinition(
  `class`: Option[String],
  defaultParameterValue: Option[StringParameterValue],
  description: Option[String],
  name: Option[String],
  `type`: Option[String]
  additionalProperties: 
)

object StringParameterDefinition {
  implicit lazy val stringParameterDefinitionJsonFormat: Format[StringParameterDefinition] = {
    val realJsonFormat = Json.format[StringParameterDefinition]
    val declaredPropNames = Set("`class`", "defaultParameterValue", "description", "name", "`type`")
    
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
      Writes { stringParameterDefinition =>
        val jsObj = realJsonFormat.writes(stringParameterDefinition)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

