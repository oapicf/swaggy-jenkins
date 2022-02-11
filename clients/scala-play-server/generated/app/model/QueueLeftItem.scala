package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for QueueLeftItem.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-11T12:54:41.523230Z[Etc/UTC]")
case class QueueLeftItem(
  `class`: Option[String],
  actions: Option[List[CauseAction]],
  blocked: Option[Boolean],
  buildable: Option[Boolean],
  id: Option[Int],
  inQueueSince: Option[Int],
  params: Option[String],
  stuck: Option[Boolean],
  task: Option[FreeStyleProject],
  url: Option[String],
  why: Option[String],
  cancelled: Option[Boolean],
  executable: Option[FreeStyleBuild]
  additionalProperties: 
)

object QueueLeftItem {
  implicit lazy val queueLeftItemJsonFormat: Format[QueueLeftItem] = {
    val realJsonFormat = Json.format[QueueLeftItem]
    val declaredPropNames = Set("`class`", "actions", "blocked", "buildable", "id", "inQueueSince", "params", "stuck", "task", "url", "why", "cancelled", "executable")
    
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
      Writes { queueLeftItem =>
        val jsObj = realJsonFormat.writes(queueLeftItem)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

