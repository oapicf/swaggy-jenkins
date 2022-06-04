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
  `class`: Option[String] = None,
  links: Option[GithubRepositorieslinks] = None,
  items: Option[Seq[GithubRepository]] = None,
  lastPage: Option[Int] = None,
  nextPage: Option[Int] = None,
  pageSize: Option[Int] = None
)

