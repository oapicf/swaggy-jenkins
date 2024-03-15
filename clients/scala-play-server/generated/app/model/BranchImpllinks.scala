package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for BranchImpllinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class BranchImpllinks(
  self: Option[Link],
  actions: Option[Link],
  runs: Option[Link],
  queue: Option[Link],
  `class`: Option[String]
)

object BranchImpllinks {
  implicit lazy val branchImpllinksJsonFormat: Format[BranchImpllinks] = Json.format[BranchImpllinks]
}

