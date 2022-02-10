
package org.openapitools.client.model


case class GenericResource (
    _class: Option[String],
    _displayName: Option[String],
    _durationInMillis: Option[Integer],
    _id: Option[String],
    _result: Option[String],
    _startTime: Option[String]
)
object GenericResource {
    def toStringBody(var_class: Object, var_displayName: Object, var_durationInMillis: Object, var_id: Object, var_result: Object, var_startTime: Object) =
        s"""
        | {
        | "class":$var_class,"displayName":$var_displayName,"durationInMillis":$var_durationInMillis,"id":$var_id,"result":$var_result,"startTime":$var_startTime
        | }
        """.stripMargin
}
