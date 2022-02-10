
package org.openapitools.client.model


case class Hudson (
    _class: Option[String],
    _assignedLabels: Option[List[HudsonassignedLabels]],
    _mode: Option[String],
    _nodeDescription: Option[String],
    _nodeName: Option[String],
    _numExecutors: Option[Integer],
    _description: Option[String],
    _jobs: Option[List[FreeStyleProject]],
    _primaryView: Option[AllView],
    _quietingDown: Option[Boolean],
    _slaveAgentPort: Option[Integer],
    _unlabeledLoad: Option[UnlabeledLoadStatistics],
    _useCrumbs: Option[Boolean],
    _useSecurity: Option[Boolean],
    _views: Option[List[AllView]]
)
object Hudson {
    def toStringBody(var_class: Object, var_assignedLabels: Object, var_mode: Object, var_nodeDescription: Object, var_nodeName: Object, var_numExecutors: Object, var_description: Object, var_jobs: Object, var_primaryView: Object, var_quietingDown: Object, var_slaveAgentPort: Object, var_unlabeledLoad: Object, var_useCrumbs: Object, var_useSecurity: Object, var_views: Object) =
        s"""
        | {
        | "class":$var_class,"assignedLabels":$var_assignedLabels,"mode":$var_mode,"nodeDescription":$var_nodeDescription,"nodeName":$var_nodeName,"numExecutors":$var_numExecutors,"description":$var_description,"jobs":$var_jobs,"primaryView":$var_primaryView,"quietingDown":$var_quietingDown,"slaveAgentPort":$var_slaveAgentPort,"unlabeledLoad":$var_unlabeledLoad,"useCrumbs":$var_useCrumbs,"useSecurity":$var_useSecurity,"views":$var_views
        | }
        """.stripMargin
}
