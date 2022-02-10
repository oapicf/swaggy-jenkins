
package org.openapitools.client.model


case class CauseUserIdCause (
    _class: Option[String],
    _shortDescription: Option[String],
    _userId: Option[String],
    _userName: Option[String]
)
object CauseUserIdCause {
    def toStringBody(var_class: Object, var_shortDescription: Object, var_userId: Object, var_userName: Object) =
        s"""
        | {
        | "class":$var_class,"shortDescription":$var_shortDescription,"userId":$var_userId,"userName":$var_userName
        | }
        """.stripMargin
}
