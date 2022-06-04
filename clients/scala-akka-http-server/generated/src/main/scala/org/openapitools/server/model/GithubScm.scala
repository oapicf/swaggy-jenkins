package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param links  for example: ''null''
 * @param credentialId  for example: ''null''
 * @param id  for example: ''null''
 * @param uri  for example: ''null''
*/
final case class GithubScm (
  `class`: Option[String] = None,
  links: Option[GithubScmlinks] = None,
  credentialId: Option[String] = None,
  id: Option[String] = None,
  uri: Option[String] = None
)

