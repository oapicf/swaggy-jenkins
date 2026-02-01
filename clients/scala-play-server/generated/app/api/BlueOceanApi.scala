package api

import play.api.libs.json._
import model.BranchImpl
import model.FavoriteImpl
import model.GithubOrganization
import model.GithubScm
import model.MultibranchPipeline
import model.Organisation
import model.Pipeline
import model.PipelineActivity
import model.PipelineFolderImpl
import model.PipelineImpl
import model.PipelineRun
import model.PipelineRunNode
import model.PipelineStepImpl
import model.QueueItemImpl
import model.User

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
trait BlueOceanApi {
  /**
    * Delete queue item from an organization pipeline queue
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param queue Name of the queue item
    */
  def deletePipelineQueueItem(organization: String, pipeline: String, queue: String): Unit

  /**
    * Retrieve authenticated user details for an organization
    * @param organization Name of the organization
    */
  def getAuthenticatedUser(organization: String): User

  /**
    * Get a list of class names supported by a given class
    * @param `class` Name of the class
    */
  def getClasses(`class`: String): String

  /**
    * Retrieve JSON Web Key
    * @param key Key ID received as part of JWT header field kid
    */
  def getJsonWebKey(key: Int): String

  /**
    * Retrieve JSON Web Token
    * @param expiryTimeInMins Token expiry time in minutes, default: 30 minutes
    * @param maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes
    */
  def getJsonWebToken(expiryTimeInMins: Option[Int], maxExpiryTimeInMins: Option[Int]): String

  /**
    * Retrieve organization details
    * @param organization Name of the organization
    */
  def getOrganisation(organization: String): Organisation

  /**
    * Retrieve all organizations details
    */
  def getOrganisations(): List[Organisation]

  /**
    * Retrieve pipeline details for an organization
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def getPipeline(organization: String, pipeline: String): Pipeline

  /**
    * Retrieve all activities details for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def getPipelineActivities(organization: String, pipeline: String): List[PipelineActivity]

  /**
    * Retrieve branch details for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param branch Name of the branch
    */
  def getPipelineBranch(organization: String, pipeline: String, branch: String): BranchImpl

  /**
    * Retrieve branch run details for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param branch Name of the branch
    * @param run Name of the run
    */
  def getPipelineBranchRun(organization: String, pipeline: String, branch: String, run: String): PipelineRun

  /**
    * Retrieve all branches details for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def getPipelineBranches(organization: String, pipeline: String): MultibranchPipeline

  /**
    * Retrieve pipeline folder for an organization
    * @param organization Name of the organization
    * @param folder Name of the folder
    */
  def getPipelineFolder(organization: String, folder: String): PipelineFolderImpl

  /**
    * Retrieve pipeline details for an organization folder
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param folder Name of the folder
    */
  def getPipelineFolderPipeline(organization: String, pipeline: String, folder: String): PipelineImpl

  /**
    * Retrieve queue details for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def getPipelineQueue(organization: String, pipeline: String): List[QueueItemImpl]

  /**
    * Retrieve run details for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    */
  def getPipelineRun(organization: String, pipeline: String, run: String): PipelineRun

  /**
    * Get log for a pipeline run
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    * @param start Start position of the log
    * @param download Set to true in order to download the file, otherwise it&#39;s passed as a response body
    */
  def getPipelineRunLog(organization: String, pipeline: String, run: String, start: Option[Int], download: Option[Boolean]): String

  /**
    * Retrieve run node details for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    * @param node Name of the node
    */
  def getPipelineRunNode(organization: String, pipeline: String, run: String, node: String): PipelineRunNode

  /**
    * Retrieve run node details for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    * @param node Name of the node
    * @param step Name of the step
    */
  def getPipelineRunNodeStep(organization: String, pipeline: String, run: String, node: String, step: String): PipelineStepImpl

  /**
    * Get log for a pipeline run node step
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    * @param node Name of the node
    * @param step Name of the step
    */
  def getPipelineRunNodeStepLog(organization: String, pipeline: String, run: String, node: String, step: String): String

  /**
    * Retrieve run node steps details for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    * @param node Name of the node
    */
  def getPipelineRunNodeSteps(organization: String, pipeline: String, run: String, node: String): List[PipelineStepImpl]

  /**
    * Retrieve run nodes details for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    */
  def getPipelineRunNodes(organization: String, pipeline: String, run: String): List[PipelineRunNode]

  /**
    * Retrieve all runs details for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def getPipelineRuns(organization: String, pipeline: String): List[PipelineRun]

  /**
    * Retrieve all pipelines details for an organization
    * @param organization Name of the organization
    */
  def getPipelines(organization: String): List[Pipeline]

  /**
    * Retrieve SCM details for an organization
    * @param organization Name of the organization
    * @param scm Name of SCM
    */
  def getSCM(organization: String, scm: String): GithubScm

  /**
    * Retrieve SCM organization repositories details for an organization
    * @param organization Name of the organization
    * @param scm Name of SCM
    * @param scmOrganisation Name of the SCM organization
    * @param credentialId Credential ID
    * @param pageSize Number of items in a page
    * @param pageNumber Page number
    */
  def getSCMOrganisationRepositories(organization: String, scm: String, scmOrganisation: String, credentialId: Option[String], pageSize: Option[Int], pageNumber: Option[Int]): List[GithubOrganization]

  /**
    * Retrieve SCM organization repository details for an organization
    * @param organization Name of the organization
    * @param scm Name of SCM
    * @param scmOrganisation Name of the SCM organization
    * @param repository Name of the SCM repository
    * @param credentialId Credential ID
    */
  def getSCMOrganisationRepository(organization: String, scm: String, scmOrganisation: String, repository: String, credentialId: Option[String]): List[GithubOrganization]

  /**
    * Retrieve SCM organizations details for an organization
    * @param organization Name of the organization
    * @param scm Name of SCM
    * @param credentialId Credential ID
    */
  def getSCMOrganisations(organization: String, scm: String, credentialId: Option[String]): List[GithubOrganization]

  /**
    * Retrieve user details for an organization
    * @param organization Name of the organization
    * @param user Name of the user
    */
  def getUser(organization: String, user: String): User

  /**
    * Retrieve user favorites details for an organization
    * @param user Name of the user
    */
  def getUserFavorites(user: String): List[FavoriteImpl]

  /**
    * Retrieve users details for an organization
    * @param organization Name of the organization
    */
  def getUsers(organization: String): User

  /**
    * Replay an organization pipeline run
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    */
  def postPipelineRun(organization: String, pipeline: String, run: String): QueueItemImpl

  /**
    * Start a build for an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    */
  def postPipelineRuns(organization: String, pipeline: String): QueueItemImpl

  /**
    * Favorite/unfavorite a pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param body Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite
    */
  def putPipelineFavorite(organization: String, pipeline: String, body: Boolean): FavoriteImpl

  /**
    * Stop a build of an organization pipeline
    * @param organization Name of the organization
    * @param pipeline Name of the pipeline
    * @param run Name of the run
    * @param blocking Set to true to make blocking stop, default: false
    * @param timeOutInSecs Timeout in seconds, default: 10 seconds
    */
  def putPipelineRun(organization: String, pipeline: String, run: String, blocking: Option[String], timeOutInSecs: Option[Int]): PipelineRun

  /**
    * Search for any resource details
    * @param q Query string
    */
  def search(q: String): String

  /**
    * Get classes details
    * @param q Query string containing an array of class names
    */
  def searchClasses(q: String): String
}
