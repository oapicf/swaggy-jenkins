package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param links  for example: ''null''
 * @param jenkinsOrganizationPipeline  for example: ''null''
 * @param name  for example: ''null''
*/
final case class GithubOrganization (
  `class`: Option[String],
  links: Option[GithubOrganizationlinks],
  jenkinsOrganizationPipeline: Option[Boolean],
  name: Option[String]
)

