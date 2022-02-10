
package org.openapitools.client.model


case class AllView (
    _class: Option[String],
    _name: Option[String],
    _url: Option[String]
)
object AllView {
    def toStringBody(var_class: Object, var_name: Object, var_url: Object) =
        s"""
        | {
        | "class":$var_class,"name":$var_name,"url":$var_url
        | }
        """.stripMargin
}
