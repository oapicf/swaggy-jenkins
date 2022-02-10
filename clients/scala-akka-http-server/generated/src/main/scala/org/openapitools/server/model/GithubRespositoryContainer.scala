package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param links  for example: ''null''
 * @param repositories  for example: ''null''
*/
final case class GithubRespositoryContainer (
  `class`: Option[String],
  links: Option[GithubRespositoryContainerlinks],
  repositories: Option[GithubRepositories]
)

