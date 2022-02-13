package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for FavoriteImpl.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class FavoriteImpl(
  `class`: Option[String],
  links: Option[FavoriteImpllinks],
  item: Option[PipelineImpl]
  additionalProperties: 
)

object FavoriteImpl {
  implicit lazy val favoriteImplJsonFormat: Format[FavoriteImpl] = {
    val realJsonFormat = Json.format[FavoriteImpl]
    val declaredPropNames = Set("`class`", "links", "item")
    
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
      Writes { favoriteImpl =>
        val jsObj = realJsonFormat.writes(favoriteImpl)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

