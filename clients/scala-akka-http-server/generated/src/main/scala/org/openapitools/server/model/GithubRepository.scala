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
  `class`: Option[String] = None,
  links: Option[GithubRepositorylinks] = None,
  defaultBranch: Option[String] = None,
  description: Option[String] = None,
  name: Option[String] = None,
  permissions: Option[GithubRepositorypermissions] = None,
  `private`: Option[Boolean] = None,
  fullName: Option[String] = None
)

