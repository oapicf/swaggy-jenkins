package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for BranchImpllinks.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class BranchImpllinks(
  self: Option[Link],
  actions: Option[Link],
  runs: Option[Link],
  queue: Option[Link],
  `class`: Option[String]
  additionalProperties: 
)

object BranchImpllinks {
  implicit lazy val branchImpllinksJsonFormat: Format[BranchImpllinks] = {
    val realJsonFormat = Json.format[BranchImpllinks]
    val declaredPropNames = Set("self", "actions", "runs", "queue", "`class`")
    
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
      Writes { branchImpllinks =>
        val jsObj = realJsonFormat.writes(branchImpllinks)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

