package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.FreeStyleBuild
import org.openapitools.models.FreeStyleProjectactions
import org.openapitools.models.FreeStyleProjecthealthReport
import org.openapitools.models.NullSCM
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
 * @param name 
 * @param url 
 * @param color 
 * @param actions 
 * @param description 
 * @param displayName 
 * @param displayNameOrNull 
 * @param fullDisplayName 
 * @param fullName 
 * @param buildable 
 * @param builds 
 * @param firstBuild 
 * @param healthReport 
 * @param inQueue 
 * @param keepDependencies 
 * @param lastBuild 
 * @param lastCompletedBuild 
 * @param lastFailedBuild 
 * @param lastStableBuild 
 * @param lastSuccessfulBuild 
 * @param lastUnstableBuild 
 * @param lastUnsuccessfulBuild 
 * @param nextBuildNumber 
 * @param queueItem 
 * @param concurrentBuild 
 * @param scm 
 */
case class FreeStyleProject(Underscoreclass: Option[String],
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
    /**
     * Creates the codec for converting FreeStyleProject from and to JSON.
     */
    implicit val decoder: Decoder[FreeStyleProject] = deriveDecoder
    implicit val encoder: ObjectEncoder[FreeStyleProject] = deriveEncoder
}
