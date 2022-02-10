
package org.openapitools.client.model


case class Pipeline (
    _class: Option[String],
    _organization: Option[String],
    _name: Option[String],
    _displayName: Option[String],
    _fullName: Option[String],
    _weatherScore: Option[Integer],
    _estimatedDurationInMillis: Option[Integer],
    _latestRun: Option[PipelinelatestRun]
)
object Pipeline {
    def toStringBody(var_class: Object, var_organization: Object, var_name: Object, var_displayName: Object, var_fullName: Object, var_weatherScore: Object, var_estimatedDurationInMillis: Object, var_latestRun: Object) =
        s"""
        | {
        | "class":$var_class,"organization":$var_organization,"name":$var_name,"displayName":$var_displayName,"fullName":$var_fullName,"weatherScore":$var_weatherScore,"estimatedDurationInMillis":$var_estimatedDurationInMillis,"latestRun":$var_latestRun
        | }
        """.stripMargin
}
