package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class BranchImpl (
  _class: Option[String],
displayName: Option[String],
estimatedDurationInMillis: Option[Integer],
fullDisplayName: Option[String],
fullName: Option[String],
name: Option[String],
organization: Option[String],
parameters: Option[List[StringParameterDefinition]],
permissions: Option[BranchImplpermissions],
weatherScore: Option[Integer],
pullRequest: Option[String],
_links: Option[BranchImpllinks],
latestRun: Option[PipelineRunImpl]
)
