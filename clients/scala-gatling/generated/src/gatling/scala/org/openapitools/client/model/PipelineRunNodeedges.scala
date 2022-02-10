
package org.openapitools.client.model


case class PipelineRunNodeedges (
    _id: Option[String],
    _class: Option[String]
)
object PipelineRunNodeedges {
    def toStringBody(var_id: Object, var_class: Object) =
        s"""
        | {
        | "id":$var_id,"class":$var_class
        | }
        """.stripMargin
}
