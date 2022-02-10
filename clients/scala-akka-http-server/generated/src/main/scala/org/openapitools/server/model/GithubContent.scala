package org.openapitools.server.model


/**
 * @param name  for example: ''null''
 * @param sha  for example: ''null''
 * @param `class`  for example: ''null''
 * @param repo  for example: ''null''
 * @param size  for example: ''null''
 * @param owner  for example: ''null''
 * @param path  for example: ''null''
 * @param base64Data  for example: ''null''
*/
final case class GithubContent (
  name: Option[String],
  sha: Option[String],
  `class`: Option[String],
  repo: Option[String],
  size: Option[Int],
  owner: Option[String],
  path: Option[String],
  base64Data: Option[String]
)

