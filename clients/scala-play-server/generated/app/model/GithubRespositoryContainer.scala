package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRespositoryContainer.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class GithubRespositoryContainer(
  `class`: Option[String],
  links: Option[GithubRespositoryContainerlinks],
  repositories: Option[GithubRepositories]
  additionalProperties: 
)

object GithubRespositoryContainer {
  implicit lazy val githubRespositoryContainerJsonFormat: Format[GithubRespositoryContainer] = {
    val realJsonFormat = Json.format[GithubRespositoryContainer]
    val declaredPropNames = Set("`class`", "links", "repositories")
    
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
      Writes { githubRespositoryContainer =>
        val jsObj = realJsonFormat.writes(githubRespositoryContainer)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

