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

case class DiskSpaceMonitorDescriptorDiskSpace (
  `class`: Option[String] = None,
  timestamp: Option[Int] = None,
  path: Option[String] = None,
  size: Option[Int] = None
) extends ApiModel

