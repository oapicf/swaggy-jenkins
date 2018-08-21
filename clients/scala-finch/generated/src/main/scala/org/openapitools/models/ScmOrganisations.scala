package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ArrayList
import org.openapitools.models.GithubOrganization
import scala.collection.immutable.Seq

/**
 * 
 */
case class ScmOrganisations()

object ScmOrganisations {
    /**
     * Creates the codec for converting ScmOrganisations from and to JSON.
     */
    implicit val decoder: Decoder[ScmOrganisations] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScmOrganisations] = deriveEncoder
}
