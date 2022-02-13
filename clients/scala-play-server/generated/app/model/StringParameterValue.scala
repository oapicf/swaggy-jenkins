package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for StringParameterValue.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class StringParameterValue(
  `class`: Option[String],
  name: Option[String],
  value: Option[String]
  additionalProperties: 
)

object StringParameterValue {
  implicit lazy val stringParameterValueJsonFormat: Format[StringParameterValue] = {
    val realJsonFormat = Json.format[StringParameterValue]
    val declaredPropNames = Set("`class`", "name", "value")
    
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
      Writes { stringParameterValue =>
        val jsObj = realJsonFormat.writes(stringParameterValue)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

