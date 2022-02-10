package org.openapitools.server.model


/**
 * @param displayName  for example: ''null''
 * @param estimatedDurationInMillis  for example: ''null''
 * @param name  for example: ''null''
 * @param weatherScore  for example: ''null''
 * @param latestRun  for example: ''null''
 * @param organization  for example: ''null''
 * @param pullRequest  for example: ''null''
 * @param totalNumberOfPullRequests  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class PipelineBranchesitem (
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  name: Option[String],
  weatherScore: Option[Int],
  latestRun: Option[PipelineBranchesitemlatestRun],
  organization: Option[String],
  pullRequest: Option[PipelineBranchesitempullRequest],
  totalNumberOfPullRequests: Option[Int],
  `class`: Option[String]
)

