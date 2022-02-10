package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param links  for example: ''null''
 * @param defaultBranch  for example: ''null''
 * @param description  for example: ''null''
 * @param name  for example: ''null''
 * @param permissions  for example: ''null''
 * @param `private`  for example: ''null''
 * @param fullName  for example: ''null''
*/
final case class GithubRepository (
  `class`: Option[String],
  links: Option[GithubRepositorylinks],
  defaultBranch: Option[String],
  description: Option[String],
  name: Option[String],
  permissions: Option[GithubRepositorypermissions],
  `private`: Option[Boolean],
  fullName: Option[String]
)

