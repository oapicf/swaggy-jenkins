package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Organisation.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class Organisation(
  `class`: Option[String],
  name: Option[String]
  additionalProperties: 
)

object Organisation {
  implicit lazy val organisationJsonFormat: Format[Organisation] = {
    val realJsonFormat = Json.format[Organisation]
    val declaredPropNames = Set("`class`", "name")
    
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
      Writes { organisation =>
        val jsObj = realJsonFormat.writes(organisation)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

