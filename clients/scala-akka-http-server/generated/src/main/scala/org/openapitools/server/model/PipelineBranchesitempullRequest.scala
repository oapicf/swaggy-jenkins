package org.openapitools.server.model


/**
 * @param links  for example: ''null''
 * @param author  for example: ''null''
 * @param id  for example: ''null''
 * @param title  for example: ''null''
 * @param url  for example: ''null''
 * @param `class`  for example: ''null''
*/
final case class PipelineBranchesitempullRequest (
  links: Option[PipelineBranchesitempullRequestlinks],
  author: Option[String],
  id: Option[String],
  title: Option[String],
  url: Option[String],
  `class`: Option[String]
)

