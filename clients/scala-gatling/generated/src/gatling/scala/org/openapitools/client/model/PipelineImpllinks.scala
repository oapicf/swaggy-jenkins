
package org.openapitools.client.model


case class PipelineImpllinks (
    _runs: Option[Link],
    _self: Option[Link],
    _queue: Option[Link],
    _actions: Option[Link],
    _class: Option[String]
)
object PipelineImpllinks {
    def toStringBody(var_runs: Object, var_self: Object, var_queue: Object, var_actions: Object, var_class: Object) =
        s"""
        | {
        | "runs":$var_runs,"self":$var_self,"queue":$var_queue,"actions":$var_actions,"class":$var_class
        | }
        """.stripMargin
}
