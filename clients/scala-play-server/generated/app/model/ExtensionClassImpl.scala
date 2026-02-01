package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class ExtensionClassImpl(
  `class`: Option[String],
  links: Option[ExtensionClassImpllinks],
  classes: Option[List[String]]
)

object ExtensionClassImpl {
  implicit lazy val extensionClassImplJsonFormat: Format[ExtensionClassImpl] = Json.format[ExtensionClassImpl]
}

