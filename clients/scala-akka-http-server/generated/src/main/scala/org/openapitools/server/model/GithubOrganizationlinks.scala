package org.openapitools.server.model


/**
 * @param repositories  for example: ''null''
 * @param self  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class GithubOrganizationlinks (
  repositories: Option[Link] = None,
  self: Option[Link] = None,
  `class`: Option[String] = None
)

