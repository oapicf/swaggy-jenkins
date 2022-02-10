
package org.openapitools.client.model


case class GithubRepositorypermissions (
    _admin: Option[Boolean],
    _push: Option[Boolean],
    _pull: Option[Boolean],
    _class: Option[String]
)
object GithubRepositorypermissions {
    def toStringBody(var_admin: Object, var_push: Object, var_pull: Object, var_class: Object) =
        s"""
        | {
        | "admin":$var_admin,"push":$var_push,"pull":$var_pull,"class":$var_class
        | }
        """.stripMargin
}
