package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for BranchImplpermissions.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
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

