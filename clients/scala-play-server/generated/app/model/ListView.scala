package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ListView.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class ListView(
  `class`: Option[String],
  description: Option[String],
  jobs: Option[List[FreeStyleProject]],
  name: Option[String],
  url: Option[String]
  additionalProperties: 
)

object ListView {
  implicit lazy val listViewJsonFormat: Format[ListView] = {
    val realJsonFormat = Json.format[ListView]
    val declaredPropNames = Set("`class`", "description", "jobs", "name", "url")
    
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
      Writes { listView =>
        val jsObj = realJsonFormat.writes(listView)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

