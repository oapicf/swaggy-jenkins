
package org.openapitools.client.model


case class StringParameterValue (
    _class: Option[String],
    _name: Option[String],
    _value: Option[String]
)
object StringParameterValue {
    def toStringBody(var_class: Object, var_name: Object, var_value: Object) =
        s"""
        | {
        | "class":$var_class,"name":$var_name,"value":$var_value
        | }
        """.stripMargin
}
