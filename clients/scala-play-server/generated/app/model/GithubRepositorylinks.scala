package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRepositorylinks.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class GithubRepositorylinks(
  self: Option[Link],
  `class`: Option[String]
  additionalProperties: 
)

object GithubRepositorylinks {
  implicit lazy val githubRepositorylinksJsonFormat: Format[GithubRepositorylinks] = {
    val realJsonFormat = Json.format[GithubRepositorylinks]
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
      Writes { githubRepositorylinks =>
        val jsObj = realJsonFormat.writes(githubRepositorylinks)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

