
package org.openapitools.client.model


case class CauseAction (
    _class: Option[String],
    _causes: Option[List[CauseUserIdCause]]
)
object CauseAction {
    def toStringBody(var_class: Object, var_causes: Object) =
        s"""
        | {
        | "class":$var_class,"causes":$var_causes
        | }
        """.stripMargin
}
