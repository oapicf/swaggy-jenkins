package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunImpl.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-11T12:54:41.523230Z[Etc/UTC]")
case class PipelineRunImpl(
  `class`: Option[String],
  links: Option[PipelineRunImpllinks],
  durationInMillis: Option[Int],
  enQueueTime: Option[String],
  endTime: Option[String],
  estimatedDurationInMillis: Option[Int],
  id: Option[String],
  organization: Option[String],
  pipeline: Option[String],
  result: Option[String],
  runSummary: Option[String],
  startTime: Option[String],
  state: Option[String],
  `type`: Option[String],
  commitId: Option[String]
  additionalProperties: 
)

object PipelineRunImpl {
  implicit lazy val pipelineRunImplJsonFormat: Format[PipelineRunImpl] = {
    val realJsonFormat = Json.format[PipelineRunImpl]
    val declaredPropNames = Set("`class`", "links", "durationInMillis", "enQueueTime", "endTime", "estimatedDurationInMillis", "id", "organization", "pipeline", "result", "runSummary", "startTime", "state", "`type`", "commitId")
    
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
      Writes { pipelineRunImpl =>
        val jsObj = realJsonFormat.writes(pipelineRunImpl)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

