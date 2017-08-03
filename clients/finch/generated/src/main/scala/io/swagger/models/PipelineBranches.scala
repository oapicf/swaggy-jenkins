package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.ArrayList
import io.swagger.models.PipelineBranchesitem
import scala.collection.immutable.Seq

/**
 * 
 */
case class PipelineBranches()

object PipelineBranches {
    /**
     * Creates the codec for converting PipelineBranches from and to JSON.
     */
    implicit val decoder: Decoder[PipelineBranches] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineBranches] = deriveEncoder
}
