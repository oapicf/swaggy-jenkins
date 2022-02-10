
package org.openapitools.client.model


case class SwapSpaceMonitorMemoryUsage2 (
    _class: Option[String],
    _availablePhysicalMemory: Option[Integer],
    _availableSwapSpace: Option[Integer],
    _totalPhysicalMemory: Option[Integer],
    _totalSwapSpace: Option[Integer]
)
object SwapSpaceMonitorMemoryUsage2 {
    def toStringBody(var_class: Object, var_availablePhysicalMemory: Object, var_availableSwapSpace: Object, var_totalPhysicalMemory: Object, var_totalSwapSpace: Object) =
        s"""
        | {
        | "class":$var_class,"availablePhysicalMemory":$var_availablePhysicalMemory,"availableSwapSpace":$var_availableSwapSpace,"totalPhysicalMemory":$var_totalPhysicalMemory,"totalSwapSpace":$var_totalSwapSpace
        | }
        """.stripMargin
}
