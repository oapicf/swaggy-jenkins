package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class GithubRepository (
  _class: Option[String],
_links: Option[GithubRepositorylinks],
defaultBranch: Option[String],
description: Option[String],
name: Option[String],
permissions: Option[GithubRepositorypermissions],
_private: Option[Boolean],
fullName: Option[String]
)
