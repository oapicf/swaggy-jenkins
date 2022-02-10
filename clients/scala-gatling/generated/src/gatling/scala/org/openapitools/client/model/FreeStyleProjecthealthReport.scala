
package org.openapitools.client.model


case class FreeStyleProjecthealthReport (
    _description: Option[String],
    _iconClassName: Option[String],
    _iconUrl: Option[String],
    _score: Option[Integer],
    _class: Option[String]
)
object FreeStyleProjecthealthReport {
    def toStringBody(var_description: Object, var_iconClassName: Object, var_iconUrl: Object, var_score: Object, var_class: Object) =
        s"""
        | {
        | "description":$var_description,"iconClassName":$var_iconClassName,"iconUrl":$var_iconUrl,"score":$var_score,"class":$var_class
        | }
        """.stripMargin
}
