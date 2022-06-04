package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassContainerImpl1links.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class ExtensionClassContainerImpl1links(
  self: Option[Link],
  `class`: Option[String]
  additionalProperties: 
)

object ExtensionClassContainerImpl1links {
  implicit lazy val extensionClassContainerImpl1linksJsonFormat: Format[ExtensionClassContainerImpl1links] = {
    val realJsonFormat = Json.format[ExtensionClassContainerImpl1links]
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
      Writes { extensionClassContainerImpl1links =>
        val jsObj = realJsonFormat.writes(extensionClassContainerImpl1links)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

