package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for UnlabeledLoadStatistics.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class UnlabeledLoadStatistics(
  `class`: Option[String]
  additionalProperties: 
)

object UnlabeledLoadStatistics {
  implicit lazy val unlabeledLoadStatisticsJsonFormat: Format[UnlabeledLoadStatistics] = {
    val realJsonFormat = Json.format[UnlabeledLoadStatistics]
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
      Writes { unlabeledLoadStatistics =>
        val jsObj = realJsonFormat.writes(unlabeledLoadStatistics)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

