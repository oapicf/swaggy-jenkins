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


case class GithubContent(
  name: Option[String] = None,
  sha: Option[String] = None,
  `class`: Option[String] = None,
  repo: Option[String] = None,
  size: Option[Int] = None,
  owner: Option[String] = None,
  path: Option[String] = None,
  base64Data: Option[String] = None
)

