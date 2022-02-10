
package org.openapitools.client.model


case class GithubRespositoryContainerlinks (
    _self: Option[Link],
    _class: Option[String]
)
object GithubRespositoryContainerlinks {
    def toStringBody(var_self: Object, var_class: Object) =
        s"""
        | {
        | "self":$var_self,"class":$var_class
        | }
        """.stripMargin
}
