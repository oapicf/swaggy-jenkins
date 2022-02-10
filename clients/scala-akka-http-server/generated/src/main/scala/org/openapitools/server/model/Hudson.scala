package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param assignedLabels  for example: ''null''
 * @param mode  for example: ''null''
 * @param nodeDescription  for example: ''null''
 * @param nodeName  for example: ''null''
 * @param numExecutors  for example: ''null''
 * @param description  for example: ''null''
 * @param jobs  for example: ''null''
 * @param primaryView  for example: ''null''
 * @param quietingDown  for example: ''null''
 * @param slaveAgentPort  for example: ''null''
 * @param unlabeledLoad  for example: ''null''
 * @param useCrumbs  for example: ''null''
 * @param useSecurity  for example: ''null''
 * @param views  for example: ''null''
*/
final case class Hudson (
  `class`: Option[String],
  assignedLabels: Option[Seq[HudsonassignedLabels]],
  mode: Option[String],
  nodeDescription: Option[String],
  nodeName: Option[String],
  numExecutors: Option[Int],
  description: Option[String],
  jobs: Option[Seq[FreeStyleProject]],
  primaryView: Option[AllView],
  quietingDown: Option[Boolean],
  slaveAgentPort: Option[Int],
  unlabeledLoad: Option[UnlabeledLoadStatistics],
  useCrumbs: Option[Boolean],
  useSecurity: Option[Boolean],
  views: Option[Seq[AllView]]
)

