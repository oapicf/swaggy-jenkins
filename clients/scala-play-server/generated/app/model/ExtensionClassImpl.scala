package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassImpl.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class ExtensionClassImpl(
  `class`: Option[String],
  links: Option[ExtensionClassImpllinks],
  classes: Option[List[String]]
  additionalProperties: 
)

object ExtensionClassImpl {
  implicit lazy val extensionClassImplJsonFormat: Format[ExtensionClassImpl] = {
    val realJsonFormat = Json.format[ExtensionClassImpl]
    val declaredPropNames = Set("`class`", "links", "classes")
    
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
      Writes { extensionClassImpl =>
        val jsObj = realJsonFormat.writes(extensionClassImpl)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

