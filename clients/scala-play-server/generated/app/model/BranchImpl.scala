package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for BranchImpl.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class BranchImpl(
  `class`: Option[String],
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  fullDisplayName: Option[String],
  fullName: Option[String],
  name: Option[String],
  organization: Option[String],
  parameters: Option[List[StringParameterDefinition]],
  permissions: Option[BranchImplpermissions],
  weatherScore: Option[Int],
  pullRequest: Option[String],
  links: Option[BranchImpllinks],
  latestRun: Option[PipelineRunImpl]
  additionalProperties: 
)

object BranchImpl {
  implicit lazy val branchImplJsonFormat: Format[BranchImpl] = {
    val realJsonFormat = Json.format[BranchImpl]
    val declaredPropNames = Set("`class`", "displayName", "estimatedDurationInMillis", "fullDisplayName", "fullName", "name", "organization", "parameters", "permissions", "weatherScore", "pullRequest", "links", "latestRun")
    
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
      Writes { branchImpl =>
        val jsObj = realJsonFormat.writes(branchImpl)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

