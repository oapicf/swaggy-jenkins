
package org.openapitools.client.model


case class GithubFile (
    _content: Option[GithubContent],
    _class: Option[String]
)
object GithubFile {
    def toStringBody(var_content: Object, var_class: Object) =
        s"""
        | {
        | "content":$var_content,"class":$var_class
        | }
        """.stripMargin
}
