package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for FreeStyleProject.
  * @param additionalProperties Any additional properties this model may have.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
case class FreeStyleProject(
  `class`: Option[String],
  name: Option[String],
  url: Option[String],
  color: Option[String],
  actions: Option[List[FreeStyleProjectactions]],
  description: Option[String],
  displayName: Option[String],
  displayNameOrNull: Option[String],
  fullDisplayName: Option[String],
  fullName: Option[String],
  buildable: Option[Boolean],
  builds: Option[List[FreeStyleBuild]],
  firstBuild: Option[FreeStyleBuild],
  healthReport: Option[List[FreeStyleProjecthealthReport]],
  inQueue: Option[Boolean],
  keepDependencies: Option[Boolean],
  lastBuild: Option[FreeStyleBuild],
  lastCompletedBuild: Option[FreeStyleBuild],
  lastFailedBuild: Option[String],
  lastStableBuild: Option[FreeStyleBuild],
  lastSuccessfulBuild: Option[FreeStyleBuild],
  lastUnstableBuild: Option[String],
  lastUnsuccessfulBuild: Option[String],
  nextBuildNumber: Option[Int],
  queueItem: Option[String],
  concurrentBuild: Option[Boolean],
  scm: Option[NullSCM]
  additionalProperties: 
)

object FreeStyleProject {
  implicit lazy val freeStyleProjectJsonFormat: Format[FreeStyleProject] = {
    val realJsonFormat = Json.format[FreeStyleProject]
    val declaredPropNames = Set("`class`", "name", "url", "color", "actions", "description", "displayName", "displayNameOrNull", "fullDisplayName", "fullName", "buildable", "builds", "firstBuild", "healthReport", "inQueue", "keepDependencies", "lastBuild", "lastCompletedBuild", "lastFailedBuild", "lastStableBuild", "lastSuccessfulBuild", "lastUnstableBuild", "lastUnsuccessfulBuild", "nextBuildNumber", "queueItem", "concurrentBuild", "scm")
    
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
      Writes { freeStyleProject =>
        val jsObj = realJsonFormat.writes(freeStyleProject)
        val additionalProps = jsObj.value("additionalProperties").as[JsObject]
        val declaredProps = jsObj - "additionalProperties"
        val newObj = declaredProps ++ additionalProps
        newObj
      }
    )
  }
}

