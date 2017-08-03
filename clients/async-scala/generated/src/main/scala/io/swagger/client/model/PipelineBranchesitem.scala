package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class PipelineBranchesitem (
  displayName: Option[String],
estimatedDurationInMillis: Option[Integer],
name: Option[String],
weatherScore: Option[Integer],
latestRun: Option[PipelineBranchesitemlatestRun],
organization: Option[String],
pullRequest: Option[PipelineBranchesitempullRequest],
totalNumberOfPullRequests: Option[Integer],
_class: Option[String]
)
