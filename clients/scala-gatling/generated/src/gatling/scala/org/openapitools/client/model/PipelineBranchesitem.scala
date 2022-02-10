
package org.openapitools.client.model


case class PipelineBranchesitem (
    _displayName: Option[String],
    _estimatedDurationInMillis: Option[Integer],
    _name: Option[String],
    _weatherScore: Option[Integer],
    _latestRun: Option[PipelineBranchesitemlatestRun],
    _organization: Option[String],
    _pullRequest: Option[PipelineBranchesitempullRequest],
    _totalNumberOfPullRequests: Option[Integer],
    _class: Option[String]
)
object PipelineBranchesitem {
    def toStringBody(var_displayName: Object, var_estimatedDurationInMillis: Object, var_name: Object, var_weatherScore: Object, var_latestRun: Object, var_organization: Object, var_pullRequest: Object, var_totalNumberOfPullRequests: Object, var_class: Object) =
        s"""
        | {
        | "displayName":$var_displayName,"estimatedDurationInMillis":$var_estimatedDurationInMillis,"name":$var_name,"weatherScore":$var_weatherScore,"latestRun":$var_latestRun,"organization":$var_organization,"pullRequest":$var_pullRequest,"totalNumberOfPullRequests":$var_totalNumberOfPullRequests,"class":$var_class
        | }
        """.stripMargin
}
