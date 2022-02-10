package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassContainerImpl1.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class ExtensionClassContainerImpl1(
  `class`: Option[String],
  links: Option[ExtensionClassContainerImpl1links],
  map: Option[ExtensionClassContainerImpl1map]
  additionalProperties: 
)

object ExtensionClassContainerImpl1 {
  implicit lazy val extensionClassContainerImpl1JsonFormat: Format[ExtensionClassContainerImpl1] = {
    val realJsonFormat = Json.format[ExtensionClassContainerImpl1]
    val declaredPropNames = Set("`class`", "links", "map")
    
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
      Writes { extensionClassContainerImpl1 =>
        val jsObj = realJsonFormat.writes(extensionClassContainerImpl1)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

