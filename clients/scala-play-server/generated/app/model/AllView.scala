package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for AllView.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-11T12:54:41.523230Z[Etc/UTC]")
case class AllView(
  `class`: Option[String],
  name: Option[String],
  url: Option[String]
  additionalProperties: 
)

object AllView {
  implicit lazy val allViewJsonFormat: Format[AllView] = {
    val realJsonFormat = Json.format[AllView]
    val declaredPropNames = Set("`class`", "name", "url")
    
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
      Writes { allView =>
        val jsObj = realJsonFormat.writes(allView)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

