package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.ExtensionClassImpl

/**
 * 
 * @param io.jenkins.blueocean.service.embedded.rest.PipelineImpl 
 * @param io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl 
 * @param _class 
 */
case class ExtensionClassContainerImpl1map(io.jenkins.blueocean.service.embedded.rest.PipelineImpl: Option[ExtensionClassImpl],
                io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl: Option[ExtensionClassImpl],
                _class: Option[String]
                )

object ExtensionClassContainerImpl1map {
    /**
     * Creates the codec for converting ExtensionClassContainerImpl1map from and to JSON.
     */
    implicit val decoder: Decoder[ExtensionClassContainerImpl1map] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtensionClassContainerImpl1map] = deriveEncoder
}
