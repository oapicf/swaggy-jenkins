package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for BranchImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-10-11T12:08:51.915360815Z[Etc/UTC]", comments = "Generator version: 7.24.0")
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

