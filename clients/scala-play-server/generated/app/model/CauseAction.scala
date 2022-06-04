package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for CauseAction.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class CauseAction(
  `class`: Option[String],
  causes: Option[List[CauseUserIdCause]]
  additionalProperties: 
)

object CauseAction {
  implicit lazy val causeActionJsonFormat: Format[CauseAction] = {
    val realJsonFormat = Json.format[CauseAction]
    val declaredPropNames = Set("`class`", "causes")
    
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
      Writes { causeAction =>
        val jsObj = realJsonFormat.writes(causeAction)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

