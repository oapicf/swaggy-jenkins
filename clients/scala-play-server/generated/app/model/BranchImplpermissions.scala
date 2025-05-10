package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for BranchImplpermissions.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class BranchImplpermissions(
  create: Option[Boolean],
  read: Option[Boolean],
  start: Option[Boolean],
  stop: Option[Boolean],
  `class`: Option[String]
)

object BranchImplpermissions {
  implicit lazy val branchImplpermissionsJsonFormat: Format[BranchImplpermissions] = Json.format[BranchImplpermissions]
}

