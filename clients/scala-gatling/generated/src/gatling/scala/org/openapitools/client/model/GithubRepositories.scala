
package org.openapitools.client.model


case class GithubRepositories (
    _class: Option[String],
    _links: Option[GithubRepositorieslinks],
    _items: Option[List[GithubRepository]],
    _lastPage: Option[Integer],
    _nextPage: Option[Integer],
    _pageSize: Option[Integer]
)
object GithubRepositories {
    def toStringBody(var_class: Object, var_links: Object, var_items: Object, var_lastPage: Object, var_nextPage: Object, var_pageSize: Object) =
        s"""
        | {
        | "class":$var_class,"links":$var_links,"items":$var_items,"lastPage":$var_lastPage,"nextPage":$var_nextPage,"pageSize":$var_pageSize
        | }
        """.stripMargin
}
