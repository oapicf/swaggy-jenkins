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
  name: Option[String] = None,
  sha: Option[String] = None,
  `class`: Option[String] = None,
  repo: Option[String] = None,
  size: Option[Int] = None,
  owner: Option[String] = None,
  path: Option[String] = None,
  base64Data: Option[String] = None
)

