
package org.openapitools.client.model


case class FreeStyleBuild (
    _class: Option[String],
    _number: Option[Integer],
    _url: Option[String],
    _actions: Option[List[CauseAction]],
    _building: Option[Boolean],
    _description: Option[String],
    _displayName: Option[String],
    _duration: Option[Integer],
    _estimatedDuration: Option[Integer],
    _executor: Option[String],
    _fullDisplayName: Option[String],
    _id: Option[String],
    _keepLog: Option[Boolean],
    _queueId: Option[Integer],
    _result: Option[String],
    _timestamp: Option[Integer],
    _builtOn: Option[String],
    _changeSet: Option[EmptyChangeLogSet]
)
object FreeStyleBuild {
    def toStringBody(var_class: Object, var_number: Object, var_url: Object, var_actions: Object, var_building: Object, var_description: Object, var_displayName: Object, var_duration: Object, var_estimatedDuration: Object, var_executor: Object, var_fullDisplayName: Object, var_id: Object, var_keepLog: Object, var_queueId: Object, var_result: Object, var_timestamp: Object, var_builtOn: Object, var_changeSet: Object) =
        s"""
        | {
        | "class":$var_class,"number":$var_number,"url":$var_url,"actions":$var_actions,"building":$var_building,"description":$var_description,"displayName":$var_displayName,"duration":$var_duration,"estimatedDuration":$var_estimatedDuration,"executor":$var_executor,"fullDisplayName":$var_fullDisplayName,"id":$var_id,"keepLog":$var_keepLog,"queueId":$var_queueId,"result":$var_result,"timestamp":$var_timestamp,"builtOn":$var_builtOn,"changeSet":$var_changeSet
        | }
        """.stripMargin
}
