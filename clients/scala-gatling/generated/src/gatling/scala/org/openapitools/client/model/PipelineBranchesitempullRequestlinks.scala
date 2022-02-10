
package org.openapitools.client.model


case class PipelineBranchesitempullRequestlinks (
    _self: Option[String],
    _class: Option[String]
)
object PipelineBranchesitempullRequestlinks {
    def toStringBody(var_self: Object, var_class: Object) =
        s"""
        | {
        | "self":$var_self,"class":$var_class
        | }
        """.stripMargin
}
