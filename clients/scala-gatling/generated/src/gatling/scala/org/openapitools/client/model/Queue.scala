
package org.openapitools.client.model


case class Queue (
    _class: Option[String],
    _items: Option[List[QueueBlockedItem]]
)
object Queue {
    def toStringBody(var_class: Object, var_items: Object) =
        s"""
        | {
        | "class":$var_class,"items":$var_items
        | }
        """.stripMargin
}
