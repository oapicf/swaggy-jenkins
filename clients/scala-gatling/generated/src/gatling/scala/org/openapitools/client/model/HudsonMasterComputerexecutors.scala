
package org.openapitools.client.model


case class HudsonMasterComputerexecutors (
    _currentExecutable: Option[FreeStyleBuild],
    _idle: Option[Boolean],
    _likelyStuck: Option[Boolean],
    _number: Option[Integer],
    _progress: Option[Integer],
    _class: Option[String]
)
object HudsonMasterComputerexecutors {
    def toStringBody(var_currentExecutable: Object, var_idle: Object, var_likelyStuck: Object, var_number: Object, var_progress: Object, var_class: Object) =
        s"""
        | {
        | "currentExecutable":$var_currentExecutable,"idle":$var_idle,"likelyStuck":$var_likelyStuck,"number":$var_number,"progress":$var_progress,"class":$var_class
        | }
        """.stripMargin
}
