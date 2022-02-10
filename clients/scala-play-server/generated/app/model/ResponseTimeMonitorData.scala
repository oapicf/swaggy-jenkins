package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMonitorData.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class ResponseTimeMonitorData(
  `class`: Option[String],
  timestamp: Option[Int],
  average: Option[Int]
  additionalProperties: 
)

object ResponseTimeMonitorData {
  implicit lazy val responseTimeMonitorDataJsonFormat: Format[ResponseTimeMonitorData] = {
    val realJsonFormat = Json.format[ResponseTimeMonitorData]
    val declaredPropNames = Set("`class`", "timestamp", "average")
    
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
      Writes { responseTimeMonitorData =>
        val jsObj = realJsonFormat.writes(responseTimeMonitorData)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

