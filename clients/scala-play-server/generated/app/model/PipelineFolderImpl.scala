package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineFolderImpl.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
case class PipelineFolderImpl(
  `class`: Option[String],
  displayName: Option[String],
  fullName: Option[String],
  name: Option[String],
  organization: Option[String],
  numberOfFolders: Option[Int],
  numberOfPipelines: Option[Int]
  additionalProperties: 
)

object PipelineFolderImpl {
  implicit lazy val pipelineFolderImplJsonFormat: Format[PipelineFolderImpl] = {
    val realJsonFormat = Json.format[PipelineFolderImpl]
    val declaredPropNames = Set("`class`", "displayName", "fullName", "name", "organization", "numberOfFolders", "numberOfPipelines")
    
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
      Writes { pipelineFolderImpl =>
        val jsObj = realJsonFormat.writes(pipelineFolderImpl)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

