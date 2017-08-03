package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.ArrayList
import io.swagger.models.GithubOrganization
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
