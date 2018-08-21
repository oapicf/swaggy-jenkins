package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ExtensionClassImpl

/**
 * 
 * @param ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodPipelineImpl 
 * @param ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodMultiBranchPipelineImpl 
 * @param Underscoreclass 
 */
case class ExtensionClassContainerImpl1map(ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodPipelineImpl: Option[ExtensionClassImpl],
                ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodMultiBranchPipelineImpl: Option[ExtensionClassImpl],
                Underscoreclass: Option[String]
                )

object ExtensionClassContainerImpl1map {
    /**
     * Creates the codec for converting ExtensionClassContainerImpl1map from and to JSON.
     */
    implicit val decoder: Decoder[ExtensionClassContainerImpl1map] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtensionClassContainerImpl1map] = deriveEncoder
}
