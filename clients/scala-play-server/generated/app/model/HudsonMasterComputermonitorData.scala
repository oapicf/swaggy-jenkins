package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for HudsonMasterComputermonitorData.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class HudsonMasterComputermonitorData(
  hudsonNodeMonitorsSwapSpaceMonitor: Option[SwapSpaceMonitorMemoryUsage2],
  hudsonNodeMonitorsTemporarySpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
  hudsonNodeMonitorsDiskSpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
  hudsonNodeMonitorsArchitectureMonitor: Option[String],
  hudsonNodeMonitorsResponseTimeMonitor: Option[ResponseTimeMonitorData],
  hudsonNodeMonitorsClockMonitor: Option[ClockDifference],
  `class`: Option[String]
  additionalProperties: 
)

object HudsonMasterComputermonitorData {
  implicit lazy val hudsonMasterComputermonitorDataJsonFormat: Format[HudsonMasterComputermonitorData] = {
    val realJsonFormat = Json.format[HudsonMasterComputermonitorData]
    val declaredPropNames = Set("hudsonNodeMonitorsSwapSpaceMonitor", "hudsonNodeMonitorsTemporarySpaceMonitor", "hudsonNodeMonitorsDiskSpaceMonitor", "hudsonNodeMonitorsArchitectureMonitor", "hudsonNodeMonitorsResponseTimeMonitor", "hudsonNodeMonitorsClockMonitor", "`class`")
    
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
      Writes { hudsonMasterComputermonitorData =>
        val jsObj = realJsonFormat.writes(hudsonMasterComputermonitorData)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

