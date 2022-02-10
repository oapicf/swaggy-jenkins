
package org.openapitools.client.model


case class ExtensionClassContainerImpl1 (
    _class: Option[String],
    _links: Option[ExtensionClassContainerImpl1links],
    _map: Option[ExtensionClassContainerImpl1map]
)
object ExtensionClassContainerImpl1 {
    def toStringBody(var_class: Object, var_links: Object, var_map: Object) =
        s"""
        | {
        | "class":$var_class,"links":$var_links,"map":$var_map
        | }
        """.stripMargin
}
