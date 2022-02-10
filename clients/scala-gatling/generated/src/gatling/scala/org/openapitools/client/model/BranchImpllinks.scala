
package org.openapitools.client.model


case class BranchImpllinks (
    _self: Option[Link],
    _actions: Option[Link],
    _runs: Option[Link],
    _queue: Option[Link],
    _class: Option[String]
)
object BranchImpllinks {
    def toStringBody(var_self: Object, var_actions: Object, var_runs: Object, var_queue: Object, var_class: Object) =
        s"""
        | {
        | "self":$var_self,"actions":$var_actions,"runs":$var_runs,"queue":$var_queue,"class":$var_class
        | }
        """.stripMargin
}
