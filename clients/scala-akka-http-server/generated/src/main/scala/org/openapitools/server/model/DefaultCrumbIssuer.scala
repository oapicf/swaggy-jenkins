package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param crumb  for example: ''null''
 * @param crumbRequestField  for example: ''null''
*/
final case class DefaultCrumbIssuer (
  `class`: Option[String] = None,
  crumb: Option[String] = None,
  crumbRequestField: Option[String] = None
)

