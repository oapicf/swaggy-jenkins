/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 */

package org.openapitools.server.model

case class ComputerSet(
  `class`: Option[String],

  busyExecutors: Option[Int],

  computer: Option[List[HudsonMasterComputer]],

  displayName: Option[String],

  totalExecutors: Option[Int]

 )
