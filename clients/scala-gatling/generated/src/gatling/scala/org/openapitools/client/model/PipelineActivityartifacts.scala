
package org.openapitools.client.model


case class PipelineActivityartifacts (
    _name: Option[String],
    _size: Option[Integer],
    _url: Option[String],
    _class: Option[String]
)
object PipelineActivityartifacts {
    def toStringBody(var_name: Object, var_size: Object, var_url: Object, var_class: Object) =
        s"""
        | {
        | "name":$var_name,"size":$var_size,"url":$var_url,"class":$var_class
        | }
        """.stripMargin
}
