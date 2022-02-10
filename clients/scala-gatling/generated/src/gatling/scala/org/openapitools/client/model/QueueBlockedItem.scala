
package org.openapitools.client.model


case class QueueBlockedItem (
    _class: Option[String],
    _actions: Option[List[CauseAction]],
    _blocked: Option[Boolean],
    _buildable: Option[Boolean],
    _id: Option[Integer],
    _inQueueSince: Option[Integer],
    _params: Option[String],
    _stuck: Option[Boolean],
    _task: Option[FreeStyleProject],
    _url: Option[String],
    _why: Option[String],
    _buildableStartMilliseconds: Option[Integer]
)
object QueueBlockedItem {
    def toStringBody(var_class: Object, var_actions: Object, var_blocked: Object, var_buildable: Object, var_id: Object, var_inQueueSince: Object, var_params: Object, var_stuck: Object, var_task: Object, var_url: Object, var_why: Object, var_buildableStartMilliseconds: Object) =
        s"""
        | {
        | "class":$var_class,"actions":$var_actions,"blocked":$var_blocked,"buildable":$var_buildable,"id":$var_id,"inQueueSince":$var_inQueueSince,"params":$var_params,"stuck":$var_stuck,"task":$var_task,"url":$var_url,"why":$var_why,"buildableStartMilliseconds":$var_buildableStartMilliseconds
        | }
        """.stripMargin
}
