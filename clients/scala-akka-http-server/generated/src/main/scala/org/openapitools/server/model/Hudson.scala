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
  `class`: Option[String] = None,
  assignedLabels: Option[Seq[HudsonassignedLabels]] = None,
  mode: Option[String] = None,
  nodeDescription: Option[String] = None,
  nodeName: Option[String] = None,
  numExecutors: Option[Int] = None,
  description: Option[String] = None,
  jobs: Option[Seq[FreeStyleProject]] = None,
  primaryView: Option[AllView] = None,
  quietingDown: Option[Boolean] = None,
  slaveAgentPort: Option[Int] = None,
  unlabeledLoad: Option[UnlabeledLoadStatistics] = None,
  useCrumbs: Option[Boolean] = None,
  useSecurity: Option[Boolean] = None,
  views: Option[Seq[AllView]] = None
)

