
package org.openapitools.client.model


case class DefaultCrumbIssuer (
    _class: Option[String],
    _crumb: Option[String],
    _crumbRequestField: Option[String]
)
object DefaultCrumbIssuer {
    def toStringBody(var_class: Object, var_crumb: Object, var_crumbRequestField: Object) =
        s"""
        | {
        | "class":$var_class,"crumb":$var_crumb,"crumbRequestField":$var_crumbRequestField
        | }
        """.stripMargin
}
