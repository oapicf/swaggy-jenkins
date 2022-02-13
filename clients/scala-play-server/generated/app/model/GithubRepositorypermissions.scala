package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRepositorypermissions.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class GithubRepositorypermissions(
  admin: Option[Boolean],
  push: Option[Boolean],
  pull: Option[Boolean],
  `class`: Option[String]
  additionalProperties: 
)

object GithubRepositorypermissions {
  implicit lazy val githubRepositorypermissionsJsonFormat: Format[GithubRepositorypermissions] = {
    val realJsonFormat = Json.format[GithubRepositorypermissions]
    val declaredPropNames = Set("admin", "push", "pull", "`class`")
    
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
      Writes { githubRepositorypermissions =>
        val jsObj = realJsonFormat.writes(githubRepositorypermissions)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

