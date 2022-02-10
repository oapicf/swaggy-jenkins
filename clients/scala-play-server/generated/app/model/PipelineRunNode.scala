package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunNode.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class PipelineRunNode(
  `class`: Option[String],
  displayName: Option[String],
  durationInMillis: Option[Int],
  edges: Option[List[PipelineRunNodeedges]],
  id: Option[String],
  result: Option[String],
  startTime: Option[String],
  state: Option[String]
  additionalProperties: 
)

object PipelineRunNode {
  implicit lazy val pipelineRunNodeJsonFormat: Format[PipelineRunNode] = {
    val realJsonFormat = Json.format[PipelineRunNode]
    val declaredPropNames = Set("`class`", "displayName", "durationInMillis", "edges", "id", "result", "startTime", "state")
    
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
      Writes { pipelineRunNode =>
        val jsObj = realJsonFormat.writes(pipelineRunNode)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

