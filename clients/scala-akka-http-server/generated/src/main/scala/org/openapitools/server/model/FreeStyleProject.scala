package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param name  for example: ''null''
 * @param url  for example: ''null''
 * @param color  for example: ''null''
 * @param actions  for example: ''null''
 * @param description  for example: ''null''
 * @param displayName  for example: ''null''
 * @param displayNameOrNull  for example: ''null''
 * @param fullDisplayName  for example: ''null''
 * @param fullName  for example: ''null''
 * @param buildable  for example: ''null''
 * @param builds  for example: ''null''
 * @param firstBuild  for example: ''null''
 * @param healthReport  for example: ''null''
 * @param inQueue  for example: ''null''
 * @param keepDependencies  for example: ''null''
 * @param lastBuild  for example: ''null''
 * @param lastCompletedBuild  for example: ''null''
 * @param lastFailedBuild  for example: ''null''
 * @param lastStableBuild  for example: ''null''
 * @param lastSuccessfulBuild  for example: ''null''
 * @param lastUnstableBuild  for example: ''null''
 * @param lastUnsuccessfulBuild  for example: ''null''
 * @param nextBuildNumber  for example: ''null''
 * @param queueItem  for example: ''null''
 * @param concurrentBuild  for example: ''null''
 * @param scm  for example: ''null''
*/
final case class FreeStyleProject (
  `class`: Option[String] = None,
  name: Option[String] = None,
  url: Option[String] = None,
  color: Option[String] = None,
  actions: Option[Seq[FreeStyleProjectactions]] = None,
  description: Option[String] = None,
  displayName: Option[String] = None,
  displayNameOrNull: Option[String] = None,
  fullDisplayName: Option[String] = None,
  fullName: Option[String] = None,
  buildable: Option[Boolean] = None,
  builds: Option[Seq[FreeStyleBuild]] = None,
  firstBuild: Option[FreeStyleBuild] = None,
  healthReport: Option[Seq[FreeStyleProjecthealthReport]] = None,
  inQueue: Option[Boolean] = None,
  keepDependencies: Option[Boolean] = None,
  lastBuild: Option[FreeStyleBuild] = None,
  lastCompletedBuild: Option[FreeStyleBuild] = None,
  lastFailedBuild: Option[String] = None,
  lastStableBuild: Option[FreeStyleBuild] = None,
  lastSuccessfulBuild: Option[FreeStyleBuild] = None,
  lastUnstableBuild: Option[String] = None,
  lastUnsuccessfulBuild: Option[String] = None,
  nextBuildNumber: Option[Int] = None,
  queueItem: Option[String] = None,
  concurrentBuild: Option[Boolean] = None,
  scm: Option[NullSCM] = None
)

