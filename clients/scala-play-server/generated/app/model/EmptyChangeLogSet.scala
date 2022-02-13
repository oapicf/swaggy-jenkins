package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for EmptyChangeLogSet.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
case class EmptyChangeLogSet(
  `class`: Option[String],
  kind: Option[String]
  additionalProperties: 
)

object EmptyChangeLogSet {
  implicit lazy val emptyChangeLogSetJsonFormat: Format[EmptyChangeLogSet] = {
    val realJsonFormat = Json.format[EmptyChangeLogSet]
    val declaredPropNames = Set("`class`", "kind")
    
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
      Writes { emptyChangeLogSet =>
        val jsObj = realJsonFormat.writes(emptyChangeLogSet)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

