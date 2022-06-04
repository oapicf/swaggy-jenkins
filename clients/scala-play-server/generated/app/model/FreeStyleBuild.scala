package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for FreeStyleBuild.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class FreeStyleBuild(
  `class`: Option[String],
  number: Option[Int],
  url: Option[String],
  actions: Option[List[CauseAction]],
  building: Option[Boolean],
  description: Option[String],
  displayName: Option[String],
  duration: Option[Int],
  estimatedDuration: Option[Int],
  executor: Option[String],
  fullDisplayName: Option[String],
  id: Option[String],
  keepLog: Option[Boolean],
  queueId: Option[Int],
  result: Option[String],
  timestamp: Option[Int],
  builtOn: Option[String],
  changeSet: Option[EmptyChangeLogSet]
  additionalProperties: 
)

object FreeStyleBuild {
  implicit lazy val freeStyleBuildJsonFormat: Format[FreeStyleBuild] = {
    val realJsonFormat = Json.format[FreeStyleBuild]
    val declaredPropNames = Set("`class`", "number", "url", "actions", "building", "description", "displayName", "duration", "estimatedDuration", "executor", "fullDisplayName", "id", "keepLog", "queueId", "result", "timestamp", "builtOn", "changeSet")
    
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
      Writes { freeStyleBuild =>
        val jsObj = realJsonFormat.writes(freeStyleBuild)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

