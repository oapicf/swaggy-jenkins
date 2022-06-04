package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassImpllinks.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class ExtensionClassImpllinks(
  self: Option[Link],
  `class`: Option[String]
  additionalProperties: 
)

object ExtensionClassImpllinks {
  implicit lazy val extensionClassImpllinksJsonFormat: Format[ExtensionClassImpllinks] = {
    val realJsonFormat = Json.format[ExtensionClassImpllinks]
    val declaredPropNames = Set("self", "`class`")
    
    Format(
      Reads {
        case JsObject(xs) =>
          val declaredProps = xs.filterKeys(declaredPropNames)
          val additionalProps = JsObject(xs -- declaredPropNames)
          val restructuredProps = declaredProps + ("additionalProperties" -> additionalProps)
          val newObj = JsObject(restructuredProps)
          realJsonFormat.reads(newObj)
        case _ =>
          JsError("error.expected.jsobject")
      },
      Writes { extensionClassImpllinks =>
        val jsObj = realJsonFormat.writes(extensionClassImpllinks)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

