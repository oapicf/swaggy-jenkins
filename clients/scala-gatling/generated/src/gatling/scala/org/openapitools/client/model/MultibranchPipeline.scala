
package org.openapitools.client.model


case class MultibranchPipeline (
    _displayName: Option[String],
    _estimatedDurationInMillis: Option[Integer],
    _latestRun: Option[String],
    _name: Option[String],
    _organization: Option[String],
    _weatherScore: Option[Integer],
    _branchNames: Option[List[String]],
    _numberOfFailingBranches: Option[Integer],
    _numberOfFailingPullRequests: Option[Integer],
    _numberOfSuccessfulBranches: Option[Integer],
    _numberOfSuccessfulPullRequests: Option[Integer],
    _totalNumberOfBranches: Option[Integer],
    _totalNumberOfPullRequests: Option[Integer],
    _class: Option[String]
)
object MultibranchPipeline {
    def toStringBody(var_displayName: Object, var_estimatedDurationInMillis: Object, var_latestRun: Object, var_name: Object, var_organization: Object, var_weatherScore: Object, var_branchNames: Object, var_numberOfFailingBranches: Object, var_numberOfFailingPullRequests: Object, var_numberOfSuccessfulBranches: Object, var_numberOfSuccessfulPullRequests: Object, var_totalNumberOfBranches: Object, var_totalNumberOfPullRequests: Object, var_class: Object) =
        s"""
        | {
        | "displayName":$var_displayName,"estimatedDurationInMillis":$var_estimatedDurationInMillis,"latestRun":$var_latestRun,"name":$var_name,"organization":$var_organization,"weatherScore":$var_weatherScore,"branchNames":$var_branchNames,"numberOfFailingBranches":$var_numberOfFailingBranches,"numberOfFailingPullRequests":$var_numberOfFailingPullRequests,"numberOfSuccessfulBranches":$var_numberOfSuccessfulBranches,"numberOfSuccessfulPullRequests":$var_numberOfSuccessfulPullRequests,"totalNumberOfBranches":$var_totalNumberOfBranches,"totalNumberOfPullRequests":$var_totalNumberOfPullRequests,"class":$var_class
        | }
        """.stripMargin
}
