package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class GetPipelineBranchesitem (
  displayName: Option[String],
estimatedDurationInMillis: Option[Integer],
name: Option[String],
weatherScore: Option[Integer],
latestRun: Option[GetPipelineBranchesitem_latestRun],
organization: Option[String],
pullRequest: Option[GetPipelineBranchesitem_pullRequest],
totalNumberOfPullRequests: Option[Integer],
_class: Option[String]
)
