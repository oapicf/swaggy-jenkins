
package org.openapitools.client.model


case class Link (
    _class: Option[String],
    _href: Option[String]
)
object Link {
    def toStringBody(var_class: Object, var_href: Object) =
        s"""
        | {
        | "class":$var_class,"href":$var_href
        | }
        """.stripMargin
}
