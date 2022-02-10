
package org.openapitools.client.model


case class FreeStyleProjectactions (
    _class: Option[String]
)
object FreeStyleProjectactions {
    def toStringBody(var_class: Object) =
        s"""
        | {
        | "class":$var_class
        | }
        """.stripMargin
}
