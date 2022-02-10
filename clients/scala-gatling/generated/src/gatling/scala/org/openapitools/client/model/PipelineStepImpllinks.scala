
package org.openapitools.client.model


case class PipelineStepImpllinks (
    _self: Option[Link],
    _actions: Option[Link],
    _class: Option[String]
)
object PipelineStepImpllinks {
    def toStringBody(var_self: Object, var_actions: Object, var_class: Object) =
        s"""
        | {
        | "self":$var_self,"actions":$var_actions,"class":$var_class
        | }
        """.stripMargin
}
