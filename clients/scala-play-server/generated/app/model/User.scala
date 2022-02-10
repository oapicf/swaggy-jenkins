package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for User.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class User(
  `class`: Option[String],
  id: Option[String],
  fullName: Option[String],
  email: Option[String],
  name: Option[String]
  additionalProperties: 
)

object User {
  implicit lazy val userJsonFormat: Format[User] = {
    val realJsonFormat = Json.format[User]
    val declaredPropNames = Set("`class`", "id", "fullName", "email", "name")
    
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
      Writes { user =>
        val jsObj = realJsonFormat.writes(user)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

