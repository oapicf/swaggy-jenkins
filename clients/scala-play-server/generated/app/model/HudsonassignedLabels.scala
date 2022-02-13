package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for HudsonassignedLabels.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class HudsonassignedLabels(
  `class`: Option[String]
  additionalProperties: 
)

object HudsonassignedLabels {
  implicit lazy val hudsonassignedLabelsJsonFormat: Format[HudsonassignedLabels] = {
    val realJsonFormat = Json.format[HudsonassignedLabels]
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
      Writes { hudsonassignedLabels =>
        val jsObj = realJsonFormat.writes(hudsonassignedLabels)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

