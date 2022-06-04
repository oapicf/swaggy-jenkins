package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ComputerSet.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class ComputerSet(
  `class`: Option[String],
  busyExecutors: Option[Int],
  computer: Option[List[HudsonMasterComputer]],
  displayName: Option[String],
  totalExecutors: Option[Int]
  additionalProperties: 
)

object ComputerSet {
  implicit lazy val computerSetJsonFormat: Format[ComputerSet] = {
    val realJsonFormat = Json.format[ComputerSet]
    val declaredPropNames = Set("`class`", "busyExecutors", "computer", "displayName", "totalExecutors")
    
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
      Writes { computerSet =>
        val jsObj = realJsonFormat.writes(computerSet)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

