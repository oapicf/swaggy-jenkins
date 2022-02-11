package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Hudson.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-11T12:54:41.523230Z[Etc/UTC]")
case class Hudson(
  `class`: Option[String],
  assignedLabels: Option[List[HudsonassignedLabels]],
  mode: Option[String],
  nodeDescription: Option[String],
  nodeName: Option[String],
  numExecutors: Option[Int],
  description: Option[String],
  jobs: Option[List[FreeStyleProject]],
  primaryView: Option[AllView],
  quietingDown: Option[Boolean],
  slaveAgentPort: Option[Int],
  unlabeledLoad: Option[UnlabeledLoadStatistics],
  useCrumbs: Option[Boolean],
  useSecurity: Option[Boolean],
  views: Option[List[AllView]]
  additionalProperties: 
)

object Hudson {
  implicit lazy val hudsonJsonFormat: Format[Hudson] = {
    val realJsonFormat = Json.format[Hudson]
    val declaredPropNames = Set("`class`", "assignedLabels", "mode", "nodeDescription", "nodeName", "numExecutors", "description", "jobs", "primaryView", "quietingDown", "slaveAgentPort", "unlabeledLoad", "useCrumbs", "useSecurity", "views")
    
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
      Writes { hudson =>
        val jsObj = realJsonFormat.writes(hudson)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

