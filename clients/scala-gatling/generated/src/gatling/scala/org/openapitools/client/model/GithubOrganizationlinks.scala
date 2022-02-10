
package org.openapitools.client.model


case class GithubOrganizationlinks (
    _repositories: Option[Link],
    _self: Option[Link],
    _class: Option[String]
)
object GithubOrganizationlinks {
    def toStringBody(var_repositories: Object, var_self: Object, var_class: Object) =
        s"""
        | {
        | "repositories":$var_repositories,"self":$var_self,"class":$var_class
        | }
        """.stripMargin
}
