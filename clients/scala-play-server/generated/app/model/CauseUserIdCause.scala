package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for CauseUserIdCause.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class CauseUserIdCause(
  `class`: Option[String],
  shortDescription: Option[String],
  userId: Option[String],
  userName: Option[String]
  additionalProperties: 
)

object CauseUserIdCause {
  implicit lazy val causeUserIdCauseJsonFormat: Format[CauseUserIdCause] = {
    val realJsonFormat = Json.format[CauseUserIdCause]
    val declaredPropNames = Set("`class`", "shortDescription", "userId", "userName")
    
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
      Writes { causeUserIdCause =>
        val jsObj = realJsonFormat.writes(causeUserIdCause)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

