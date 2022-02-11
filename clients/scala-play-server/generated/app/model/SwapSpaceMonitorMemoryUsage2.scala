package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for SwapSpaceMonitorMemoryUsage2.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-11T12:54:41.523230Z[Etc/UTC]")
case class SwapSpaceMonitorMemoryUsage2(
  `class`: Option[String],
  availablePhysicalMemory: Option[Int],
  availableSwapSpace: Option[Int],
  totalPhysicalMemory: Option[Int],
  totalSwapSpace: Option[Int]
  additionalProperties: 
)

object SwapSpaceMonitorMemoryUsage2 {
  implicit lazy val swapSpaceMonitorMemoryUsage2JsonFormat: Format[SwapSpaceMonitorMemoryUsage2] = {
    val realJsonFormat = Json.format[SwapSpaceMonitorMemoryUsage2]
    val declaredPropNames = Set("`class`", "availablePhysicalMemory", "availableSwapSpace", "totalPhysicalMemory", "totalSwapSpace")
    
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
      Writes { swapSpaceMonitorMemoryUsage2 =>
        val jsObj = realJsonFormat.writes(swapSpaceMonitorMemoryUsage2)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

