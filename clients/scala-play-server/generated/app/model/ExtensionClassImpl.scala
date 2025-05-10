package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class ExtensionClassImpl(
  `class`: Option[String],
  links: Option[ExtensionClassImpllinks],
  classes: Option[List[String]]
)

object ExtensionClassImpl {
  implicit lazy val extensionClassImplJsonFormat: Format[ExtensionClassImpl] = Json.format[ExtensionClassImpl]
}

