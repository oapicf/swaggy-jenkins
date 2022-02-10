
package org.openapitools.client.model


case class ComputerSet (
    _class: Option[String],
    _busyExecutors: Option[Integer],
    _computer: Option[List[HudsonMasterComputer]],
    _displayName: Option[String],
    _totalExecutors: Option[Integer]
)
object ComputerSet {
    def toStringBody(var_class: Object, var_busyExecutors: Object, var_computer: Object, var_displayName: Object, var_totalExecutors: Object) =
        s"""
        | {
        | "class":$var_class,"busyExecutors":$var_busyExecutors,"computer":$var_computer,"displayName":$var_displayName,"totalExecutors":$var_totalExecutors
        | }
        """.stripMargin
}
