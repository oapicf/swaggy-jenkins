/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 */

package org.openapitools.server.model

case class InputStepImpl(
  `class`: Option[String],

  links: Option[InputStepImpllinks],

  id: Option[String],

  message: Option[String],

  ok: Option[String],

  parameters: Option[List[StringParameterDefinition]],

  submitter: Option[String]

 )
