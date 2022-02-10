package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for NullSCM.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class NullSCM(
  `class`: Option[String]
  additionalProperties: 
)

object NullSCM {
  implicit lazy val nullSCMJsonFormat: Format[NullSCM] = {
    val realJsonFormat = Json.format[NullSCM]
    val declaredPropNames = Set("`class`")
    
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
      Writes { nullSCM =>
        val jsObj = realJsonFormat.writes(nullSCM)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

