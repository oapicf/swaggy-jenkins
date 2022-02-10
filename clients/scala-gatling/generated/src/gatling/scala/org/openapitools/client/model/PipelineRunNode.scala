
package org.openapitools.client.model


case class PipelineRunNode (
    _class: Option[String],
    _displayName: Option[String],
    _durationInMillis: Option[Integer],
    _edges: Option[List[PipelineRunNodeedges]],
    _id: Option[String],
    _result: Option[String],
    _startTime: Option[String],
    _state: Option[String]
)
object PipelineRunNode {
    def toStringBody(var_class: Object, var_displayName: Object, var_durationInMillis: Object, var_edges: Object, var_id: Object, var_result: Object, var_startTime: Object, var_state: Object) =
        s"""
        | {
        | "class":$var_class,"displayName":$var_displayName,"durationInMillis":$var_durationInMillis,"edges":$var_edges,"id":$var_id,"result":$var_result,"startTime":$var_startTime,"state":$var_state
        | }
        """.stripMargin
}
