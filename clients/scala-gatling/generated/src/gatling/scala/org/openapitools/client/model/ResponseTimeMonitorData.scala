
package org.openapitools.client.model


case class ResponseTimeMonitorData (
    _class: Option[String],
    _timestamp: Option[Integer],
    _average: Option[Integer]
)
object ResponseTimeMonitorData {
    def toStringBody(var_class: Object, var_timestamp: Object, var_average: Object) =
        s"""
        | {
        | "class":$var_class,"timestamp":$var_timestamp,"average":$var_average
        | }
        """.stripMargin
}
