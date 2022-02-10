package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for InputStepImpllinks.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class InputStepImpllinks(
  self: Option[Link],
  `class`: Option[String]
  additionalProperties: 
)

object InputStepImpllinks {
  implicit lazy val inputStepImpllinksJsonFormat: Format[InputStepImpllinks] = {
    val realJsonFormat = Json.format[InputStepImpllinks]
    val declaredPropNames = Set("self", "`class`")
    
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
      Writes { inputStepImpllinks =>
        val jsObj = realJsonFormat.writes(inputStepImpllinks)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

