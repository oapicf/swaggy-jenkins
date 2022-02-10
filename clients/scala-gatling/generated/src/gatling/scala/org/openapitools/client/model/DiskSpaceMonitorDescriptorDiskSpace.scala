
package org.openapitools.client.model


case class DiskSpaceMonitorDescriptorDiskSpace (
    _class: Option[String],
    _timestamp: Option[Integer],
    _path: Option[String],
    _size: Option[Integer]
)
object DiskSpaceMonitorDescriptorDiskSpace {
    def toStringBody(var_class: Object, var_timestamp: Object, var_path: Object, var_size: Object) =
        s"""
        | {
        | "class":$var_class,"timestamp":$var_timestamp,"path":$var_path,"size":$var_size
        | }
        """.stripMargin
}
