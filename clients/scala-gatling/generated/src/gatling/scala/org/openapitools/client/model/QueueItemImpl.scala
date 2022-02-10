
package org.openapitools.client.model


case class QueueItemImpl (
    _class: Option[String],
    _expectedBuildNumber: Option[Integer],
    _id: Option[String],
    _pipeline: Option[String],
    _queuedTime: Option[Integer]
)
object QueueItemImpl {
    def toStringBody(var_class: Object, var_expectedBuildNumber: Object, var_id: Object, var_pipeline: Object, var_queuedTime: Object) =
        s"""
        | {
        | "class":$var_class,"expectedBuildNumber":$var_expectedBuildNumber,"id":$var_id,"pipeline":$var_pipeline,"queuedTime":$var_queuedTime
        | }
        """.stripMargin
}
