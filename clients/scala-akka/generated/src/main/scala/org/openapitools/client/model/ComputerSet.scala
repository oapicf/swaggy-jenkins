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
package org.openapitools.client.model

import org.openapitools.client.core.ApiModel

case class ComputerSet (
  `class`: Option[String] = None,
  busyExecutors: Option[Int] = None,
  computer: Option[Seq[HudsonMasterComputer]] = None,
  displayName: Option[String] = None,
  totalExecutors: Option[Int] = None
) extends ApiModel

