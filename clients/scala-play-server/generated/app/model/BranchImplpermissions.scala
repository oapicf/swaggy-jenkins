package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for BranchImplpermissions.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class BranchImplpermissions(
  create: Option[Boolean],
  read: Option[Boolean],
  start: Option[Boolean],
  stop: Option[Boolean],
  `class`: Option[String]
  additionalProperties: 
)

object BranchImplpermissions {
  implicit lazy val branchImplpermissionsJsonFormat: Format[BranchImplpermissions] = {
    val realJsonFormat = Json.format[BranchImplpermissions]
    val declaredPropNames = Set("create", "read", "start", "stop", "`class`")
    
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
      Writes { branchImplpermissions =>
        val jsObj = realJsonFormat.writes(branchImplpermissions)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

