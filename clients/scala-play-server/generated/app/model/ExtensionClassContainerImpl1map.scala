package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassContainerImpl1map.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class ExtensionClassContainerImpl1map(
  ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: Option[ExtensionClassImpl],
  ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: Option[ExtensionClassImpl],
  `class`: Option[String]
  additionalProperties: 
)

object ExtensionClassContainerImpl1map {
  implicit lazy val extensionClassContainerImpl1mapJsonFormat: Format[ExtensionClassContainerImpl1map] = {
    val realJsonFormat = Json.format[ExtensionClassContainerImpl1map]
    val declaredPropNames = Set("ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl", "ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl", "`class`")
    
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
      Writes { extensionClassContainerImpl1map =>
        val jsObj = realJsonFormat.writes(extensionClassContainerImpl1map)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

