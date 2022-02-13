package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubScmlinks.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class GithubScmlinks(
  self: Option[Link],
  `class`: Option[String]
  additionalProperties: 
)

object GithubScmlinks {
  implicit lazy val githubScmlinksJsonFormat: Format[GithubScmlinks] = {
    val realJsonFormat = Json.format[GithubScmlinks]
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
      Writes { githubScmlinks =>
        val jsObj = realJsonFormat.writes(githubScmlinks)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

