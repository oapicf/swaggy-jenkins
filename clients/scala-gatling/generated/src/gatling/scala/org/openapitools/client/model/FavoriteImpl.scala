
package org.openapitools.client.model


case class FavoriteImpl (
    _class: Option[String],
    _links: Option[FavoriteImpllinks],
    _item: Option[PipelineImpl]
)
object FavoriteImpl {
    def toStringBody(var_class: Object, var_links: Object, var_item: Object) =
        s"""
        | {
        | "class":$var_class,"links":$var_links,"item":$var_item
        | }
        """.stripMargin
}
