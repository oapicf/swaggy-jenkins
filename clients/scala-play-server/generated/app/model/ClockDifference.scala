package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ClockDifference.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class ClockDifference(
  `class`: Option[String],
  diff: Option[Int]
  additionalProperties: 
)

object ClockDifference {
  implicit lazy val clockDifferenceJsonFormat: Format[ClockDifference] = {
    val realJsonFormat = Json.format[ClockDifference]
    val declaredPropNames = Set("`class`", "diff")
    
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
      Writes { clockDifference =>
        val jsObj = realJsonFormat.writes(clockDifference)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

