
package org.openapitools.client.model


case class UnlabeledLoadStatistics (
    _class: Option[String]
)
object UnlabeledLoadStatistics {
    def toStringBody(var_class: Object) =
        s"""
        | {
        | "class":$var_class
        | }
        """.stripMargin
}
