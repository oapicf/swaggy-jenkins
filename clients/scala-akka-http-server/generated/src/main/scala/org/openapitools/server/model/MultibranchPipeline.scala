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
  displayName: Option[String] = None,
  estimatedDurationInMillis: Option[Int] = None,
  latestRun: Option[String] = None,
  name: Option[String] = None,
  organization: Option[String] = None,
  weatherScore: Option[Int] = None,
  branchNames: Option[Seq[String]] = None,
  numberOfFailingBranches: Option[Int] = None,
  numberOfFailingPullRequests: Option[Int] = None,
  numberOfSuccessfulBranches: Option[Int] = None,
  numberOfSuccessfulPullRequests: Option[Int] = None,
  totalNumberOfBranches: Option[Int] = None,
  totalNumberOfPullRequests: Option[Int] = None,
  `class`: Option[String] = None
)

