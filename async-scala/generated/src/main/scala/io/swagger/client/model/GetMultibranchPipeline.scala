package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class GetMultibranchPipeline (
  displayName: Option[String],
estimatedDurationInMillis: Option[Integer],
latestRun: Option[String],
name: Option[String],
organization: Option[String],
weatherScore: Option[Integer],
branchNames: Option[List[String]],
numberOfFailingBranches: Option[Integer],
numberOfFailingPullRequests: Option[Integer],
numberOfSuccessfulBranches: Option[Integer],
numberOfSuccessfulPullRequests: Option[Integer],
totalNumberOfBranches: Option[Integer],
totalNumberOfPullRequests: Option[Integer],
_class: Option[String]
)
