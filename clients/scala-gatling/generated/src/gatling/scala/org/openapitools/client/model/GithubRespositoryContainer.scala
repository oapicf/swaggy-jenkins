
package org.openapitools.client.model


case class GithubRespositoryContainer (
    _class: Option[String],
    _links: Option[GithubRespositoryContainerlinks],
    _repositories: Option[GithubRepositories]
)
object GithubRespositoryContainer {
    def toStringBody(var_class: Object, var_links: Object, var_repositories: Object) =
        s"""
        | {
        | "class":$var_class,"links":$var_links,"repositories":$var_repositories
        | }
        """.stripMargin
}
