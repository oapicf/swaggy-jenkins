
package org.openapitools.client.model


case class BranchImplpermissions (
    _create: Option[Boolean],
    _read: Option[Boolean],
    _start: Option[Boolean],
    _stop: Option[Boolean],
    _class: Option[String]
)
object BranchImplpermissions {
    def toStringBody(var_create: Object, var_read: Object, var_start: Object, var_stop: Object, var_class: Object) =
        s"""
        | {
        | "create":$var_create,"read":$var_read,"start":$var_start,"stop":$var_stop,"class":$var_class
        | }
        """.stripMargin
}
