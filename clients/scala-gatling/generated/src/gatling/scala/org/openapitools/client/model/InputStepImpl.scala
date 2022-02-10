
package org.openapitools.client.model


case class InputStepImpl (
    _class: Option[String],
    _links: Option[InputStepImpllinks],
    _id: Option[String],
    _message: Option[String],
    _ok: Option[String],
    _parameters: Option[List[StringParameterDefinition]],
    _submitter: Option[String]
)
object InputStepImpl {
    def toStringBody(var_class: Object, var_links: Object, var_id: Object, var_message: Object, var_ok: Object, var_parameters: Object, var_submitter: Object) =
        s"""
        | {
        | "class":$var_class,"links":$var_links,"id":$var_id,"message":$var_message,"ok":$var_ok,"parameters":$var_parameters,"submitter":$var_submitter
        | }
        """.stripMargin
}
