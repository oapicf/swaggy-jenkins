package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class ListView (
  _class: Option[String],
description: Option[String],
jobs: Option[List[FreeStyleProject]],
name: Option[String],
url: Option[String]
)
