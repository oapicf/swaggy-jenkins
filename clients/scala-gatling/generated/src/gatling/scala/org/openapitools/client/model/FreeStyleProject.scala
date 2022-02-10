
package org.openapitools.client.model


case class FreeStyleProject (
    _class: Option[String],
    _name: Option[String],
    _url: Option[String],
    _color: Option[String],
    _actions: Option[List[FreeStyleProjectactions]],
    _description: Option[String],
    _displayName: Option[String],
    _displayNameOrNull: Option[String],
    _fullDisplayName: Option[String],
    _fullName: Option[String],
    _buildable: Option[Boolean],
    _builds: Option[List[FreeStyleBuild]],
    _firstBuild: Option[FreeStyleBuild],
    _healthReport: Option[List[FreeStyleProjecthealthReport]],
    _inQueue: Option[Boolean],
    _keepDependencies: Option[Boolean],
    _lastBuild: Option[FreeStyleBuild],
    _lastCompletedBuild: Option[FreeStyleBuild],
    _lastFailedBuild: Option[String],
    _lastStableBuild: Option[FreeStyleBuild],
    _lastSuccessfulBuild: Option[FreeStyleBuild],
    _lastUnstableBuild: Option[String],
    _lastUnsuccessfulBuild: Option[String],
    _nextBuildNumber: Option[Integer],
    _queueItem: Option[String],
    _concurrentBuild: Option[Boolean],
    _scm: Option[NullSCM]
)
object FreeStyleProject {
    def toStringBody(var_class: Object, var_name: Object, var_url: Object, var_color: Object, var_actions: Object, var_description: Object, var_displayName: Object, var_displayNameOrNull: Object, var_fullDisplayName: Object, var_fullName: Object, var_buildable: Object, var_builds: Object, var_firstBuild: Object, var_healthReport: Object, var_inQueue: Object, var_keepDependencies: Object, var_lastBuild: Object, var_lastCompletedBuild: Object, var_lastFailedBuild: Object, var_lastStableBuild: Object, var_lastSuccessfulBuild: Object, var_lastUnstableBuild: Object, var_lastUnsuccessfulBuild: Object, var_nextBuildNumber: Object, var_queueItem: Object, var_concurrentBuild: Object, var_scm: Object) =
        s"""
        | {
        | "class":$var_class,"name":$var_name,"url":$var_url,"color":$var_color,"actions":$var_actions,"description":$var_description,"displayName":$var_displayName,"displayNameOrNull":$var_displayNameOrNull,"fullDisplayName":$var_fullDisplayName,"fullName":$var_fullName,"buildable":$var_buildable,"builds":$var_builds,"firstBuild":$var_firstBuild,"healthReport":$var_healthReport,"inQueue":$var_inQueue,"keepDependencies":$var_keepDependencies,"lastBuild":$var_lastBuild,"lastCompletedBuild":$var_lastCompletedBuild,"lastFailedBuild":$var_lastFailedBuild,"lastStableBuild":$var_lastStableBuild,"lastSuccessfulBuild":$var_lastSuccessfulBuild,"lastUnstableBuild":$var_lastUnstableBuild,"lastUnsuccessfulBuild":$var_lastUnsuccessfulBuild,"nextBuildNumber":$var_nextBuildNumber,"queueItem":$var_queueItem,"concurrentBuild":$var_concurrentBuild,"scm":$var_scm
        | }
        """.stripMargin
}
