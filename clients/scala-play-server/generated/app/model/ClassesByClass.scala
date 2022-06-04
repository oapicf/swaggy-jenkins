package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ClassesByClass.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class ClassesByClass(
  classes: Option[List[String]],
  `class`: Option[String]
  additionalProperties: 
)

object ClassesByClass {
  implicit lazy val classesByClassJsonFormat: Format[ClassesByClass] = {
    val realJsonFormat = Json.format[ClassesByClass]
    val declaredPropNames = Set("classes", "`class`")
    
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
      Writes { classesByClass =>
        val jsObj = realJsonFormat.writes(classesByClass)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

