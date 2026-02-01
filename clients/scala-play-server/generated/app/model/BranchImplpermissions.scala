package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for BranchImplpermissions.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
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

