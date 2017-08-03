package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class GithubRepositories (
  _class: Option[String],
_links: Option[GithubRepositorieslinks],
items: Option[List[GithubRepository]],
lastPage: Option[Integer],
nextPage: Option[Integer],
pageSize: Option[Integer]
)
