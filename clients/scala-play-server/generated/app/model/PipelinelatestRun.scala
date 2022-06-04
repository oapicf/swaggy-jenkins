package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelinelatestRun.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class PipelinelatestRun(
  artifacts: Option[List[PipelinelatestRunartifacts]],
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
  commitId: Option[String],
  `class`: Option[String]
  additionalProperties: 
)

object PipelinelatestRun {
  implicit lazy val pipelinelatestRunJsonFormat: Format[PipelinelatestRun] = {
    val realJsonFormat = Json.format[PipelinelatestRun]
    val declaredPropNames = Set("artifacts", "durationInMillis", "estimatedDurationInMillis", "enQueueTime", "endTime", "id", "organization", "pipeline", "result", "runSummary", "startTime", "state", "`type`", "commitId", "`class`")
    
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
      Writes { pipelinelatestRun =>
        val jsObj = realJsonFormat.writes(pipelinelatestRun)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

