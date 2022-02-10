
package org.openapitools.client.model


case class HudsonassignedLabels (
    _class: Option[String]
)
object HudsonassignedLabels {
    def toStringBody(var_class: Object) =
        s"""
        | {
        | "class":$var_class
        | }
        """.stripMargin
}
