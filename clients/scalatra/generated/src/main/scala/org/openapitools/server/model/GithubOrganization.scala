/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 */

package org.openapitools.server.model

case class GithubOrganization(
  `class`: Option[String],

  links: Option[GithubOrganizationlinks],

  jenkinsOrganizationPipeline: Option[Boolean],

  name: Option[String]

 )
