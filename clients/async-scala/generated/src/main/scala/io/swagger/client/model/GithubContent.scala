package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class GithubContent (
  name: Option[String],
sha: Option[String],
_class: Option[String],
repo: Option[String],
size: Option[Integer],
owner: Option[String],
_path: Option[String],
base64Data: Option[String]
)
