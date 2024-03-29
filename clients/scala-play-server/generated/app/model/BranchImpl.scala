package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for BranchImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
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
)

object BranchImpl {
  implicit lazy val branchImplJsonFormat: Format[BranchImpl] = Json.format[BranchImpl]
}

