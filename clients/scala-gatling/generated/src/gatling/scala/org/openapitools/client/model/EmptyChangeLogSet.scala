
package org.openapitools.client.model


case class EmptyChangeLogSet (
    _class: Option[String],
    _kind: Option[String]
)
object EmptyChangeLogSet {
    def toStringBody(var_class: Object, var_kind: Object) =
        s"""
        | {
        | "class":$var_class,"kind":$var_kind
        | }
        """.stripMargin
}
