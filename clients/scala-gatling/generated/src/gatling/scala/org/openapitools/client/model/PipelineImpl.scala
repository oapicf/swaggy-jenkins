
package org.openapitools.client.model


case class PipelineImpl (
    _class: Option[String],
    _displayName: Option[String],
    _estimatedDurationInMillis: Option[Integer],
    _fullName: Option[String],
    _latestRun: Option[String],
    _name: Option[String],
    _organization: Option[String],
    _weatherScore: Option[Integer],
    _links: Option[PipelineImpllinks]
)
object PipelineImpl {
    def toStringBody(var_class: Object, var_displayName: Object, var_estimatedDurationInMillis: Object, var_fullName: Object, var_latestRun: Object, var_name: Object, var_organization: Object, var_weatherScore: Object, var_links: Object) =
        s"""
        | {
        | "class":$var_class,"displayName":$var_displayName,"estimatedDurationInMillis":$var_estimatedDurationInMillis,"fullName":$var_fullName,"latestRun":$var_latestRun,"name":$var_name,"organization":$var_organization,"weatherScore":$var_weatherScore,"links":$var_links
        | }
        """.stripMargin
}
