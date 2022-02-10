
package org.openapitools.client.model


case class PipelineRunImpllinks (
    _nodes: Option[Link],
    _log: Option[Link],
    _self: Option[Link],
    _actions: Option[Link],
    _steps: Option[Link],
    _class: Option[String]
)
object PipelineRunImpllinks {
    def toStringBody(var_nodes: Object, var_log: Object, var_self: Object, var_actions: Object, var_steps: Object, var_class: Object) =
        s"""
        | {
        | "nodes":$var_nodes,"log":$var_log,"self":$var_self,"actions":$var_actions,"steps":$var_steps,"class":$var_class
        | }
        """.stripMargin
}
