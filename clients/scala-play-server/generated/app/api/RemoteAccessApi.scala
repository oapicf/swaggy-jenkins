package api

import play.api.libs.json._
import model.ComputerSet
import model.FreeStyleBuild
import model.FreeStyleProject
import model.Hudson
import model.ListView
import model.Queue

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
trait RemoteAccessApi {
  /**
    * Retrieve computer details
    * @param depth Recursion depth in response model
    */
  def getComputer(depth: Int): ComputerSet

  /**
    * Retrieve Jenkins details
    */
  def getJenkins(): Hudson

  /**
    * Retrieve job details
    * @param name Name of the job
    */
  def getJob(name: String): FreeStyleProject

  /**
    * Retrieve job configuration
    * @param name Name of the job
    */
  def getJobConfig(name: String): String

  /**
    * Retrieve job&#39;s last build details
    * @param name Name of the job
    */
  def getJobLastBuild(name: String): FreeStyleBuild

  /**
    * Retrieve job&#39;s build progressive text output
    * @param name Name of the job
    * @param number Build number
    * @param start Starting point of progressive text output
    */
  def getJobProgressiveText(name: String, number: String, start: String): Unit

  /**
    * Retrieve queue details
    */
  def getQueue(): Queue

  /**
    * Retrieve queued item details
    * @param number Queue number
    */
  def getQueueItem(number: String): Queue

  /**
    * Retrieve view details
    * @param name Name of the view
    */
  def getView(name: String): ListView

  /**
    * Retrieve view configuration
    * @param name Name of the view
    */
  def getViewConfig(name: String): String

  /**
    * Retrieve Jenkins headers
    */
  def headJenkins(): Unit

  /**
    * Create a new job using job configuration, or copied from an existing job
    * @param name Name of the new job
    * @param from Existing job to copy from
    * @param mode Set to &#39;copy&#39; for copying an existing job
    * @param jenkinsCrumb CSRF protection token
    * @param contentType Content type header application/xml
    * @param body Job configuration in config.xml format
    */
  def postCreateItem(name: String, from: Option[String], mode: Option[String], jenkinsCrumb: Option[String], contentType: Option[String], body: Option[String]): Unit

  /**
    * Create a new view using view configuration
    * @param name Name of the new view
    * @param jenkinsCrumb CSRF protection token
    * @param contentType Content type header application/xml
    * @param body View configuration in config.xml format
    */
  def postCreateView(name: String, jenkinsCrumb: Option[String], contentType: Option[String], body: Option[String]): Unit

  /**
    * Build a job
    * @param name Name of the job
    * @param jenkinsCrumb CSRF protection token
    */
  def postJobBuild(name: String, json: String, token: Option[String], jenkinsCrumb: Option[String]): Unit

  /**
    * Update job configuration
    * @param name Name of the job
    * @param body Job configuration in config.xml format
    * @param jenkinsCrumb CSRF protection token
    */
  def postJobConfig(name: String, body: String, jenkinsCrumb: Option[String]): Unit

  /**
    * Delete a job
    * @param name Name of the job
    * @param jenkinsCrumb CSRF protection token
    */
  def postJobDelete(name: String, jenkinsCrumb: Option[String]): Unit

  /**
    * Disable a job
    * @param name Name of the job
    * @param jenkinsCrumb CSRF protection token
    */
  def postJobDisable(name: String, jenkinsCrumb: Option[String]): Unit

  /**
    * Enable a job
    * @param name Name of the job
    * @param jenkinsCrumb CSRF protection token
    */
  def postJobEnable(name: String, jenkinsCrumb: Option[String]): Unit

  /**
    * Stop a job
    * @param name Name of the job
    * @param jenkinsCrumb CSRF protection token
    */
  def postJobLastBuildStop(name: String, jenkinsCrumb: Option[String]): Unit

  /**
    * Update view configuration
    * @param name Name of the view
    * @param body View configuration in config.xml format
    * @param jenkinsCrumb CSRF protection token
    */
  def postViewConfig(name: String, body: String, jenkinsCrumb: Option[String]): Unit
}
