
package org.openapitools.client.model


case class GithubRepositorylinks (
    _self: Option[Link],
    _class: Option[String]
)
object GithubRepositorylinks {
    def toStringBody(var_self: Object, var_class: Object) =
        s"""
        | {
        | "self":$var_self,"class":$var_class
        | }
        """.stripMargin
}
