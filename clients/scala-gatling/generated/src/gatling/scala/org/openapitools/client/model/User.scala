
package org.openapitools.client.model


case class User (
    _class: Option[String],
    _id: Option[String],
    _fullName: Option[String],
    _email: Option[String],
    _name: Option[String]
)
object User {
    def toStringBody(var_class: Object, var_id: Object, var_fullName: Object, var_email: Object, var_name: Object) =
        s"""
        | {
        | "class":$var_class,"id":$var_id,"fullName":$var_fullName,"email":$var_email,"name":$var_name
        | }
        """.stripMargin
}
