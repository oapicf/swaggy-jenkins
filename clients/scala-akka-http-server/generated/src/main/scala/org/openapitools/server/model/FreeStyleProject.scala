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
  `class`: Option[String],
  name: Option[String],
  url: Option[String],
  color: Option[String],
  actions: Option[Seq[FreeStyleProjectactions]],
  description: Option[String],
  displayName: Option[String],
  displayNameOrNull: Option[String],
  fullDisplayName: Option[String],
  fullName: Option[String],
  buildable: Option[Boolean],
  builds: Option[Seq[FreeStyleBuild]],
  firstBuild: Option[FreeStyleBuild],
  healthReport: Option[Seq[FreeStyleProjecthealthReport]],
  inQueue: Option[Boolean],
  keepDependencies: Option[Boolean],
  lastBuild: Option[FreeStyleBuild],
  lastCompletedBuild: Option[FreeStyleBuild],
  lastFailedBuild: Option[String],
  lastStableBuild: Option[FreeStyleBuild],
  lastSuccessfulBuild: Option[FreeStyleBuild],
  lastUnstableBuild: Option[String],
  lastUnsuccessfulBuild: Option[String],
  nextBuildNumber: Option[Int],
  queueItem: Option[String],
  concurrentBuild: Option[Boolean],
  scm: Option[NullSCM]
)

