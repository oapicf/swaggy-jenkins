package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param links  for example: ''null''
 * @param items  for example: ''null''
 * @param lastPage  for example: ''null''
 * @param nextPage  for example: ''null''
 * @param pageSize  for example: ''null''
*/
final case class GithubRepositories (
  `class`: Option[String],
  links: Option[GithubRepositorieslinks],
  items: Option[Seq[GithubRepository]],
  lastPage: Option[Int],
  nextPage: Option[Int],
  pageSize: Option[Int]
)

