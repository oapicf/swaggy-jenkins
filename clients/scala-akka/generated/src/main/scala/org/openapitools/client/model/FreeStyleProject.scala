/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.model

import org.openapitools.client.core.ApiModel

case class FreeStyleProject (
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
) extends ApiModel

