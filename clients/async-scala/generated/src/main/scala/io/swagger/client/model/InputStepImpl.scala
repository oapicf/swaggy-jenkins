package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class InputStepImpl (
  _class: Option[String],
_links: Option[InputStepImpllinks],
id: Option[String],
message: Option[String],
ok: Option[String],
parameters: Option[List[StringParameterDefinition]],
submitter: Option[String]
)
