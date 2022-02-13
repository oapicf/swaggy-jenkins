package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for DefaultCrumbIssuer.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class DefaultCrumbIssuer(
  `class`: Option[String],
  crumb: Option[String],
  crumbRequestField: Option[String]
  additionalProperties: 
)

object DefaultCrumbIssuer {
  implicit lazy val defaultCrumbIssuerJsonFormat: Format[DefaultCrumbIssuer] = {
    val realJsonFormat = Json.format[DefaultCrumbIssuer]
    val declaredPropNames = Set("`class`", "crumb", "crumbRequestField")
    
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
      Writes { defaultCrumbIssuer =>
        val jsObj = realJsonFormat.writes(defaultCrumbIssuer)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

