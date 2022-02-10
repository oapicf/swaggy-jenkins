package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubFile.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class GithubFile(
  content: Option[GithubContent],
  `class`: Option[String]
  additionalProperties: 
)

object GithubFile {
  implicit lazy val githubFileJsonFormat: Format[GithubFile] = {
    val realJsonFormat = Json.format[GithubFile]
    val declaredPropNames = Set("content", "`class`")
    
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
      Writes { githubFile =>
        val jsObj = realJsonFormat.writes(githubFile)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

