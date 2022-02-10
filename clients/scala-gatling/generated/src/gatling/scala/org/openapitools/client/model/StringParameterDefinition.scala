
package org.openapitools.client.model


case class StringParameterDefinition (
    _class: Option[String],
    _defaultParameterValue: Option[StringParameterValue],
    _description: Option[String],
    _name: Option[String],
    _type: Option[String]
)
object StringParameterDefinition {
    def toStringBody(var_class: Object, var_defaultParameterValue: Object, var_description: Object, var_name: Object, var_type: Object) =
        s"""
        | {
        | "class":$var_class,"defaultParameterValue":$var_defaultParameterValue,"description":$var_description,"name":$var_name,"type":$var_type
        | }
        """.stripMargin
}
