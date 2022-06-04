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
  displayName: Option[String] = None,
  estimatedDurationInMillis: Option[Int] = None,
  name: Option[String] = None,
  weatherScore: Option[Int] = None,
  latestRun: Option[PipelineBranchesitemlatestRun] = None,
  organization: Option[String] = None,
  pullRequest: Option[PipelineBranchesitempullRequest] = None,
  totalNumberOfPullRequests: Option[Int] = None,
  `class`: Option[String] = None
)

