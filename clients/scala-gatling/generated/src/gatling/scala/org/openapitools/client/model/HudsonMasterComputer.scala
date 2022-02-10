
package org.openapitools.client.model


case class HudsonMasterComputer (
    _class: Option[String],
    _displayName: Option[String],
    _executors: Option[List[HudsonMasterComputerexecutors]],
    _icon: Option[String],
    _iconClassName: Option[String],
    _idle: Option[Boolean],
    _jnlpAgent: Option[Boolean],
    _launchSupported: Option[Boolean],
    _loadStatistics: Option[Label1],
    _manualLaunchAllowed: Option[Boolean],
    _monitorData: Option[HudsonMasterComputermonitorData],
    _numExecutors: Option[Integer],
    _offline: Option[Boolean],
    _offlineCause: Option[String],
    _offlineCauseReason: Option[String],
    _temporarilyOffline: Option[Boolean]
)
object HudsonMasterComputer {
    def toStringBody(var_class: Object, var_displayName: Object, var_executors: Object, var_icon: Object, var_iconClassName: Object, var_idle: Object, var_jnlpAgent: Object, var_launchSupported: Object, var_loadStatistics: Object, var_manualLaunchAllowed: Object, var_monitorData: Object, var_numExecutors: Object, var_offline: Object, var_offlineCause: Object, var_offlineCauseReason: Object, var_temporarilyOffline: Object) =
        s"""
        | {
        | "class":$var_class,"displayName":$var_displayName,"executors":$var_executors,"icon":$var_icon,"iconClassName":$var_iconClassName,"idle":$var_idle,"jnlpAgent":$var_jnlpAgent,"launchSupported":$var_launchSupported,"loadStatistics":$var_loadStatistics,"manualLaunchAllowed":$var_manualLaunchAllowed,"monitorData":$var_monitorData,"numExecutors":$var_numExecutors,"offline":$var_offline,"offlineCause":$var_offlineCause,"offlineCauseReason":$var_offlineCauseReason,"temporarilyOffline":$var_temporarilyOffline
        | }
        """.stripMargin
}
