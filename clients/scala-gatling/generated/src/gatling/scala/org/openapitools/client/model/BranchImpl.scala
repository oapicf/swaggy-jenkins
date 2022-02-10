
package org.openapitools.client.model


case class BranchImpl (
    _class: Option[String],
    _displayName: Option[String],
    _estimatedDurationInMillis: Option[Integer],
    _fullDisplayName: Option[String],
    _fullName: Option[String],
    _name: Option[String],
    _organization: Option[String],
    _parameters: Option[List[StringParameterDefinition]],
    _permissions: Option[BranchImplpermissions],
    _weatherScore: Option[Integer],
    _pullRequest: Option[String],
    _links: Option[BranchImpllinks],
    _latestRun: Option[PipelineRunImpl]
)
object BranchImpl {
    def toStringBody(var_class: Object, var_displayName: Object, var_estimatedDurationInMillis: Object, var_fullDisplayName: Object, var_fullName: Object, var_name: Object, var_organization: Object, var_parameters: Object, var_permissions: Object, var_weatherScore: Object, var_pullRequest: Object, var_links: Object, var_latestRun: Object) =
        s"""
        | {
        | "class":$var_class,"displayName":$var_displayName,"estimatedDurationInMillis":$var_estimatedDurationInMillis,"fullDisplayName":$var_fullDisplayName,"fullName":$var_fullName,"name":$var_name,"organization":$var_organization,"parameters":$var_parameters,"permissions":$var_permissions,"weatherScore":$var_weatherScore,"pullRequest":$var_pullRequest,"links":$var_links,"latestRun":$var_latestRun
        | }
        """.stripMargin
}
