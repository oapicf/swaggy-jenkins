package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubOrganization.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-11T12:54:41.523230Z[Etc/UTC]")
case class GithubOrganization(
  `class`: Option[String],
  links: Option[GithubOrganizationlinks],
  jenkinsOrganizationPipeline: Option[Boolean],
  name: Option[String]
  additionalProperties: 
)

object GithubOrganization {
  implicit lazy val githubOrganizationJsonFormat: Format[GithubOrganization] = {
    val realJsonFormat = Json.format[GithubOrganization]
    val declaredPropNames = Set("`class`", "links", "jenkinsOrganizationPipeline", "name")
    
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
      Writes { githubOrganization =>
        val jsObj = realJsonFormat.writes(githubOrganization)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

