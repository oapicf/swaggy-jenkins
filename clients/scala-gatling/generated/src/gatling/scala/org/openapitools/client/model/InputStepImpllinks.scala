
package org.openapitools.client.model


case class InputStepImpllinks (
    _self: Option[Link],
    _class: Option[String]
)
object InputStepImpllinks {
    def toStringBody(var_self: Object, var_class: Object) =
        s"""
        | {
        | "self":$var_self,"class":$var_class
        | }
        """.stripMargin
}
