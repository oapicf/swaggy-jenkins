
package org.openapitools.client.model


case class Label1 (
    _class: Option[String]
)
object Label1 {
    def toStringBody(var_class: Object) =
        s"""
        | {
        | "class":$var_class
        | }
        """.stripMargin
}
