package org.openapitools.server.model


/**
 * @param displayName  for example: ''null''
 * @param estimatedDurationInMillis  for example: ''null''
 * @param latestRun  for example: ''null''
 * @param name  for example: ''null''
 * @param organization  for example: ''null''
 * @param weatherScore  for example: ''null''
 * @param branchNames  for example: ''null''
 * @param numberOfFailingBranches  for example: ''null''
 * @param numberOfFailingPullRequests  for example: ''null''
 * @param numberOfSuccessfulBranches  for example: ''null''
 * @param numberOfSuccessfulPullRequests  for example: ''null''
 * @param totalNumberOfBranches  for example: ''null''
 * @param totalNumberOfPullRequests  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class MultibranchPipeline (
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  latestRun: Option[String],
  name: Option[String],
  organization: Option[String],
  weatherScore: Option[Int],
  branchNames: Option[Seq[String]],
  numberOfFailingBranches: Option[Int],
  numberOfFailingPullRequests: Option[Int],
  numberOfSuccessfulBranches: Option[Int],
  numberOfSuccessfulPullRequests: Option[Int],
  totalNumberOfBranches: Option[Int],
  totalNumberOfPullRequests: Option[Int],
  `class`: Option[String]
)

