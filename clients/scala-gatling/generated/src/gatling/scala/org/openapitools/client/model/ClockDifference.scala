
package org.openapitools.client.model


case class ClockDifference (
    _class: Option[String],
    _diff: Option[Integer]
)
object ClockDifference {
    def toStringBody(var_class: Object, var_diff: Object) =
        s"""
        | {
        | "class":$var_class,"diff":$var_diff
        | }
        """.stripMargin
}
