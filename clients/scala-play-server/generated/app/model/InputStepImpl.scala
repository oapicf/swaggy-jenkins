package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for InputStepImpl.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class InputStepImpl(
  `class`: Option[String],
  links: Option[InputStepImpllinks],
  id: Option[String],
  message: Option[String],
  ok: Option[String],
  parameters: Option[List[StringParameterDefinition]],
  submitter: Option[String]
  additionalProperties: 
)

object InputStepImpl {
  implicit lazy val inputStepImplJsonFormat: Format[InputStepImpl] = {
    val realJsonFormat = Json.format[InputStepImpl]
    val declaredPropNames = Set("`class`", "links", "id", "message", "ok", "parameters", "submitter")
    
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
      Writes { inputStepImpl =>
        val jsObj = realJsonFormat.writes(inputStepImpl)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

