package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRun.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class PipelineRun(
  `class`: Option[String],
  artifacts: Option[List[PipelineRunartifacts]],
  durationInMillis: Option[Int],
  estimatedDurationInMillis: Option[Int],
  enQueueTime: Option[String],
  endTime: Option[String],
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

object PipelineRun {
  implicit lazy val pipelineRunJsonFormat: Format[PipelineRun] = {
    val realJsonFormat = Json.format[PipelineRun]
    val declaredPropNames = Set("`class`", "artifacts", "durationInMillis", "estimatedDurationInMillis", "enQueueTime", "endTime", "id", "organization", "pipeline", "result", "runSummary", "startTime", "state", "`type`", "commitId")
    
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
      Writes { pipelineRun =>
        val jsObj = realJsonFormat.writes(pipelineRun)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

