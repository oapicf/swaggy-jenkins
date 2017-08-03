package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class GithubRepositorypermissions (
  admin: Option[Boolean],
push: Option[Boolean],
pull: Option[Boolean],
_class: Option[String]
)
