package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for QueueItemImpl.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class QueueItemImpl(
  `class`: Option[String],
  expectedBuildNumber: Option[Int],
  id: Option[String],
  pipeline: Option[String],
  queuedTime: Option[Int]
  additionalProperties: 
)

object QueueItemImpl {
  implicit lazy val queueItemImplJsonFormat: Format[QueueItemImpl] = {
    val realJsonFormat = Json.format[QueueItemImpl]
    val declaredPropNames = Set("`class`", "expectedBuildNumber", "id", "pipeline", "queuedTime")
    
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
      Writes { queueItemImpl =>
        val jsObj = realJsonFormat.writes(queueItemImpl)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

