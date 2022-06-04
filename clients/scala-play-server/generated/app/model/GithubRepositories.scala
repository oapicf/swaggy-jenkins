package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRepositories.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class GithubRepositories(
  `class`: Option[String],
  links: Option[GithubRepositorieslinks],
  items: Option[List[GithubRepository]],
  lastPage: Option[Int],
  nextPage: Option[Int],
  pageSize: Option[Int]
  additionalProperties: 
)

object GithubRepositories {
  implicit lazy val githubRepositoriesJsonFormat: Format[GithubRepositories] = {
    val realJsonFormat = Json.format[GithubRepositories]
    val declaredPropNames = Set("`class`", "links", "items", "lastPage", "nextPage", "pageSize")
    
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
      Writes { githubRepositories =>
        val jsObj = realJsonFormat.writes(githubRepositories)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

