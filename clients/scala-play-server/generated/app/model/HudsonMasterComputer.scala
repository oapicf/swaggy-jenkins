package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for HudsonMasterComputer.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class HudsonMasterComputer(
  `class`: Option[String],
  displayName: Option[String],
  executors: Option[List[HudsonMasterComputerexecutors]],
  icon: Option[String],
  iconClassName: Option[String],
  idle: Option[Boolean],
  jnlpAgent: Option[Boolean],
  launchSupported: Option[Boolean],
  loadStatistics: Option[Label1],
  manualLaunchAllowed: Option[Boolean],
  monitorData: Option[HudsonMasterComputermonitorData],
  numExecutors: Option[Int],
  offline: Option[Boolean],
  offlineCause: Option[String],
  offlineCauseReason: Option[String],
  temporarilyOffline: Option[Boolean]
  additionalProperties: 
)

object HudsonMasterComputer {
  implicit lazy val hudsonMasterComputerJsonFormat: Format[HudsonMasterComputer] = {
    val realJsonFormat = Json.format[HudsonMasterComputer]
    val declaredPropNames = Set("`class`", "displayName", "executors", "icon", "iconClassName", "idle", "jnlpAgent", "launchSupported", "loadStatistics", "manualLaunchAllowed", "monitorData", "numExecutors", "offline", "offlineCause", "offlineCauseReason", "temporarilyOffline")
    
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
      Writes { hudsonMasterComputer =>
        val jsObj = realJsonFormat.writes(hudsonMasterComputer)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

