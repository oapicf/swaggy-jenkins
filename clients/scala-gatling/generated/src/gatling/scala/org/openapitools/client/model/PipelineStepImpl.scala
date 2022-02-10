
package org.openapitools.client.model


case class PipelineStepImpl (
    _class: Option[String],
    _links: Option[PipelineStepImpllinks],
    _displayName: Option[String],
    _durationInMillis: Option[Integer],
    _id: Option[String],
    _input: Option[InputStepImpl],
    _result: Option[String],
    _startTime: Option[String],
    _state: Option[String]
)
object PipelineStepImpl {
    def toStringBody(var_class: Object, var_links: Object, var_displayName: Object, var_durationInMillis: Object, var_id: Object, var_input: Object, var_result: Object, var_startTime: Object, var_state: Object) =
        s"""
        | {
        | "class":$var_class,"links":$var_links,"displayName":$var_displayName,"durationInMillis":$var_durationInMillis,"id":$var_id,"input":$var_input,"result":$var_result,"startTime":$var_startTime,"state":$var_state
        | }
        """.stripMargin
}
