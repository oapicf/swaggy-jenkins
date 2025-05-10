package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ComputerSet.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class ComputerSet(
  `class`: Option[String],
  busyExecutors: Option[Int],
  computer: Option[List[HudsonMasterComputer]],
  displayName: Option[String],
  totalExecutors: Option[Int]
)

object ComputerSet {
  implicit lazy val computerSetJsonFormat: Format[ComputerSet] = Json.format[ComputerSet]
}

