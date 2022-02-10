
package org.openapitools.client.model


case class Organisation (
    _class: Option[String],
    _name: Option[String]
)
object Organisation {
    def toStringBody(var_class: Object, var_name: Object) =
        s"""
        | {
        | "class":$var_class,"name":$var_name
        | }
        """.stripMargin
}
