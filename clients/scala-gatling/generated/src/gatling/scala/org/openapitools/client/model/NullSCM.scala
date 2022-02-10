
package org.openapitools.client.model


case class NullSCM (
    _class: Option[String]
)
object NullSCM {
    def toStringBody(var_class: Object) =
        s"""
        | {
        | "class":$var_class
        | }
        """.stripMargin
}
