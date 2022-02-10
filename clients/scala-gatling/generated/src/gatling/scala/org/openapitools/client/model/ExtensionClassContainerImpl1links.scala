
package org.openapitools.client.model


case class ExtensionClassContainerImpl1links (
    _self: Option[Link],
    _class: Option[String]
)
object ExtensionClassContainerImpl1links {
    def toStringBody(var_self: Object, var_class: Object) =
        s"""
        | {
        | "self":$var_self,"class":$var_class
        | }
        """.stripMargin
}
