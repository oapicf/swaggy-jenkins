
package org.openapitools.client.model


case class ExtensionClassImpl (
    _class: Option[String],
    _links: Option[ExtensionClassImpllinks],
    _classes: Option[List[String]]
)
object ExtensionClassImpl {
    def toStringBody(var_class: Object, var_links: Object, var_classes: Object) =
        s"""
        | {
        | "class":$var_class,"links":$var_links,"classes":$var_classes
        | }
        """.stripMargin
}
