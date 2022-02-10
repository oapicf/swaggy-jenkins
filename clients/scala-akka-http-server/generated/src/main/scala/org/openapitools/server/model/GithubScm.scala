package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param links  for example: ''null''
 * @param credentialId  for example: ''null''
 * @param id  for example: ''null''
 * @param uri  for example: ''null''
*/
final case class GithubScm (
  `class`: Option[String],
  links: Option[GithubScmlinks],
  credentialId: Option[String],
  id: Option[String],
  uri: Option[String]
)

