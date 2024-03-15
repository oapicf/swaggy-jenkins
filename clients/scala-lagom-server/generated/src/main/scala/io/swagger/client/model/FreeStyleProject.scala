/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package io.swagger.client.model
import play.api.libs.json._

case class FreeStyleProject (
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

object FreeStyleProject {
implicit val format: Format[FreeStyleProject] = Json.format
}

