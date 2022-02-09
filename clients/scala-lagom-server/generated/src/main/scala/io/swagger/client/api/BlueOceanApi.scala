/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package io.swagger.client.api

import akka.{Done, NotUsed}
import com.lightbend.lagom.scaladsl.api.transport.Method
import com.lightbend.lagom.scaladsl.api.{Service, ServiceCall}
import play.api.libs.json._
import com.lightbend.lagom.scaladsl.api.deser.PathParamSerializer

import io.swagger.client.model.BranchImpl
import io.swagger.client.model.FavoriteImpl
import io.swagger.client.model.GithubOrganization
import io.swagger.client.model.GithubScm
import io.swagger.client.model.MultibranchPipeline
import io.swagger.client.model.Organisation
import io.swagger.client.model.Pipeline
import io.swagger.client.model.PipelineActivity
import io.swagger.client.model.PipelineFolderImpl
import io.swagger.client.model.PipelineImpl
import io.swagger.client.model.PipelineRun
import io.swagger.client.model.PipelineRunNode
import io.swagger.client.model.PipelineStepImpl
import io.swagger.client.model.QueueItemImpl
import io.swagger.client.model.UNKNOWN_BASE_TYPE
import io.swagger.client.model.User

trait BlueOceanApi extends Service {


  final override def descriptor = {
    import Service._
    named("BlueOceanApi").withCalls(
      restCall(Method.DELETE, "/blue/rest/organizations/:organization/pipelines/:pipeline/queue/:queue", deletePipelineQueueItem _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/user/", getAuthenticatedUser _), 
      restCall(Method.GET, "/blue/rest/classes/:class", getClasses _), 
      restCall(Method.GET, "/jwt-auth/jwks/:key", getJsonWebKey _), 
      restCall(Method.GET, "/jwt-auth/token?expiryTimeInMins&maxExpiryTimeInMins", getJsonWebToken _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization", getOrganisation _), 
      restCall(Method.GET, "/blue/rest/organizations/", getOrganisations _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline", getPipeline _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/activities", getPipelineActivities _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/", getPipelineBranch _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/runs/:run", getPipelineBranchRun _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/branches", getPipelineBranches _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:folder/", getPipelineFolder _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:folder/pipelines/:pipeline", getPipelineFolderPipeline _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/queue", getPipelineQueue _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run", getPipelineRun _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/log?start&download", getPipelineRunLog _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node", getPipelineRunNode _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step", getPipelineRunNodeStep _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step/log", getPipelineRunNodeStepLog _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps", getPipelineRunNodeSteps _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes", getPipelineRunNodes _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/:pipeline/runs", getPipelineRuns _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/pipelines/", getPipelines _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/scm/:scm", getSCM _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories?credentialId&pageSize&pageNumber", getSCMOrganisationRepositories _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories/:repository?credentialId", getSCMOrganisationRepository _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/scm/:scm/organizations?credentialId", getSCMOrganisations _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/users/:user", getUser _), 
      restCall(Method.GET, "/blue/rest/users/:user/favorites", getUserFavorites _), 
      restCall(Method.GET, "/blue/rest/organizations/:organization/users/", getUsers _), 
      restCall(Method.POST, "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/replay", postPipelineRun _), 
      restCall(Method.POST, "/blue/rest/organizations/:organization/pipelines/:pipeline/runs", postPipelineRuns _), 
      restCall(Method.PUT, "/blue/rest/organizations/:organization/pipelines/:pipeline/favorite", putPipelineFavorite _), 
      restCall(Method.PUT, "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/stop?blocking&timeOutInSecs", putPipelineRun _), 
      restCall(Method.GET, "/blue/rest/search/?q", search _), 
      restCall(Method.GET, "/blue/rest/classes/?q", searchClasses _)
    ).withAutoAcl(true)
  }


  /**
    * 
    * Delete queue item from an organization pipeline queue
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param queue Name of the queue item 
    * @return void
    */
  def deletePipelineQueueItem(organization: String, pipeline: String, queue: String): ServiceCall[NotUsed ,Done]
  
  /**
    * 
    * Retrieve authenticated user details for an organization
    *  
    * @param organization Name of the organization 
    * @return User
    */
  def getAuthenticatedUser(organization: String): ServiceCall[NotUsed ,User]
  
  /**
    * 
    * Get a list of class names supported by a given class
    *  
    * @param `class` Name of the class 
    * @return String
    */
  def getClasses(`class`: String): ServiceCall[NotUsed ,String]
  
  /**
    * 
    * Retrieve JSON Web Key
    *  
    * @param key Key ID received as part of JWT header field kid 
    * @return String
    */
  def getJsonWebKey(key: Int): ServiceCall[NotUsed ,String]
        
  /**
    * 
    * Retrieve JSON Web Token
    *  
    * @param expiryTimeInMins Token expiry time in minutes, default: 30 minutes (optional) 
    * @param maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes (optional)
    * @return String
    */
  def getJsonWebToken(expiryTimeInMins:           Option[Int] = None,maxExpiryTimeInMins:           Option[Int] = None): ServiceCall[NotUsed ,String]
  
  /**
    * 
    * Retrieve organization details
    *  
    * @param organization Name of the organization 
    * @return Organisation
    */
  def getOrganisation(organization: String): ServiceCall[NotUsed ,Organisation]
  
  /**
    * 
    * Retrieve all organizations details
    * 
    * @return Seq[Organisation]
    */
  def getOrganisations(): ServiceCall[NotUsed ,Seq[Organisation]]
  
  /**
    * 
    * Retrieve pipeline details for an organization
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline 
    * @return Pipeline
    */
  def getPipeline(organization: String, pipeline: String): ServiceCall[NotUsed ,Pipeline]
  
  /**
    * 
    * Retrieve all activities details for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline 
    * @return Seq[PipelineActivity]
    */
  def getPipelineActivities(organization: String, pipeline: String): ServiceCall[NotUsed ,Seq[PipelineActivity]]
  
  /**
    * 
    * Retrieve branch details for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param branch Name of the branch 
    * @return BranchImpl
    */
  def getPipelineBranch(organization: String, pipeline: String, branch: String): ServiceCall[NotUsed ,BranchImpl]
  
  /**
    * 
    * Retrieve branch run details for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param branch Name of the branch  
    * @param run Name of the run 
    * @return PipelineRun
    */
  def getPipelineBranchRun(organization: String, pipeline: String, branch: String, run: String): ServiceCall[NotUsed ,PipelineRun]
  
  /**
    * 
    * Retrieve all branches details for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline 
    * @return MultibranchPipeline
    */
  def getPipelineBranches(organization: String, pipeline: String): ServiceCall[NotUsed ,MultibranchPipeline]
  
  /**
    * 
    * Retrieve pipeline folder for an organization
    *  
    * @param organization Name of the organization  
    * @param folder Name of the folder 
    * @return PipelineFolderImpl
    */
  def getPipelineFolder(organization: String, folder: String): ServiceCall[NotUsed ,PipelineFolderImpl]
  
  /**
    * 
    * Retrieve pipeline details for an organization folder
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param folder Name of the folder 
    * @return PipelineImpl
    */
  def getPipelineFolderPipeline(organization: String, pipeline: String, folder: String): ServiceCall[NotUsed ,PipelineImpl]
  
  /**
    * 
    * Retrieve queue details for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline 
    * @return Seq[QueueItemImpl]
    */
  def getPipelineQueue(organization: String, pipeline: String): ServiceCall[NotUsed ,Seq[QueueItemImpl]]
  
  /**
    * 
    * Retrieve run details for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param run Name of the run 
    * @return PipelineRun
    */
  def getPipelineRun(organization: String, pipeline: String, run: String): ServiceCall[NotUsed ,PipelineRun]
        
  /**
    * 
    * Get log for a pipeline run
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param run Name of the run  
    * @param start Start position of the log (optional) 
    * @param download Set to true in order to download the file, otherwise it&#39;s passed as a response body (optional)
    * @return String
    */
  def getPipelineRunLog(start:           Option[Int] = None,download:           Option[Boolean] = Noneorganization: String, pipeline: String, run: String): ServiceCall[NotUsed ,String]
  
  /**
    * 
    * Retrieve run node details for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param run Name of the run  
    * @param node Name of the node 
    * @return PipelineRunNode
    */
  def getPipelineRunNode(organization: String, pipeline: String, run: String, node: String): ServiceCall[NotUsed ,PipelineRunNode]
  
  /**
    * 
    * Retrieve run node details for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param run Name of the run  
    * @param node Name of the node  
    * @param step Name of the step 
    * @return PipelineStepImpl
    */
  def getPipelineRunNodeStep(organization: String, pipeline: String, run: String, node: String, step: String): ServiceCall[NotUsed ,PipelineStepImpl]
  
  /**
    * 
    * Get log for a pipeline run node step
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param run Name of the run  
    * @param node Name of the node  
    * @param step Name of the step 
    * @return String
    */
  def getPipelineRunNodeStepLog(organization: String, pipeline: String, run: String, node: String, step: String): ServiceCall[NotUsed ,String]
  
  /**
    * 
    * Retrieve run node steps details for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param run Name of the run  
    * @param node Name of the node 
    * @return Seq[PipelineStepImpl]
    */
  def getPipelineRunNodeSteps(organization: String, pipeline: String, run: String, node: String): ServiceCall[NotUsed ,Seq[PipelineStepImpl]]
  
  /**
    * 
    * Retrieve run nodes details for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param run Name of the run 
    * @return Seq[PipelineRunNode]
    */
  def getPipelineRunNodes(organization: String, pipeline: String, run: String): ServiceCall[NotUsed ,Seq[PipelineRunNode]]
  
  /**
    * 
    * Retrieve all runs details for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline 
    * @return Seq[PipelineRun]
    */
  def getPipelineRuns(organization: String, pipeline: String): ServiceCall[NotUsed ,Seq[PipelineRun]]
  
  /**
    * 
    * Retrieve all pipelines details for an organization
    *  
    * @param organization Name of the organization 
    * @return Seq[Pipeline]
    */
  def getPipelines(organization: String): ServiceCall[NotUsed ,Seq[Pipeline]]
  
  /**
    * 
    * Retrieve SCM details for an organization
    *  
    * @param organization Name of the organization  
    * @param scm Name of SCM 
    * @return GithubScm
    */
  def getSCM(organization: String, scm: String): ServiceCall[NotUsed ,GithubScm]
        
  /**
    * 
    * Retrieve SCM organization repositories details for an organization
    *  
    * @param organization Name of the organization  
    * @param scm Name of SCM  
    * @param scmOrganisation Name of the SCM organization  
    * @param credentialId Credential ID (optional) 
    * @param pageSize Number of items in a page (optional) 
    * @param pageNumber Page number (optional)
    * @return Seq[GithubOrganization]
    */
  def getSCMOrganisationRepositories(credentialId:           Option[String] = None,pageSize:           Option[Int] = None,pageNumber:           Option[Int] = Noneorganization: String, scm: String, scmOrganisation: String): ServiceCall[NotUsed ,Seq[GithubOrganization]]
        
  /**
    * 
    * Retrieve SCM organization repository details for an organization
    *  
    * @param organization Name of the organization  
    * @param scm Name of SCM  
    * @param scmOrganisation Name of the SCM organization  
    * @param repository Name of the SCM repository  
    * @param credentialId Credential ID (optional)
    * @return Seq[GithubOrganization]
    */
  def getSCMOrganisationRepository(credentialId:           Option[String] = Noneorganization: String, scm: String, scmOrganisation: String, repository: String): ServiceCall[NotUsed ,Seq[GithubOrganization]]
        
  /**
    * 
    * Retrieve SCM organizations details for an organization
    *  
    * @param organization Name of the organization  
    * @param scm Name of SCM  
    * @param credentialId Credential ID (optional)
    * @return Seq[GithubOrganization]
    */
  def getSCMOrganisations(credentialId:           Option[String] = Noneorganization: String, scm: String): ServiceCall[NotUsed ,Seq[GithubOrganization]]
  
  /**
    * 
    * Retrieve user details for an organization
    *  
    * @param organization Name of the organization  
    * @param user Name of the user 
    * @return User
    */
  def getUser(organization: String, user: String): ServiceCall[NotUsed ,User]
  
  /**
    * 
    * Retrieve user favorites details for an organization
    *  
    * @param user Name of the user 
    * @return Seq[FavoriteImpl]
    */
  def getUserFavorites(user: String): ServiceCall[NotUsed ,Seq[FavoriteImpl]]
  
  /**
    * 
    * Retrieve users details for an organization
    *  
    * @param organization Name of the organization 
    * @return User
    */
  def getUsers(organization: String): ServiceCall[NotUsed ,User]
  
  /**
    * 
    * Replay an organization pipeline run
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param run Name of the run 
    * @return QueueItemImpl
    */
  def postPipelineRun(organization: String, pipeline: String, run: String): ServiceCall[NotUsed ,QueueItemImpl]
  
  /**
    * 
    * Start a build for an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline 
    * @return QueueItemImpl
    */
  def postPipelineRuns(organization: String, pipeline: String): ServiceCall[NotUsed ,QueueItemImpl]
  
  /**
    * 
    * Favorite/unfavorite a pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @return FavoriteImpl Body Parameter  Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite 
    */
  def putPipelineFavorite(organization: String, pipeline: String): ServiceCall[UNKNOWN_BASE_TYPE ,FavoriteImpl]
        
  /**
    * 
    * Stop a build of an organization pipeline
    *  
    * @param organization Name of the organization  
    * @param pipeline Name of the pipeline  
    * @param run Name of the run  
    * @param blocking Set to true to make blocking stop, default: false (optional) 
    * @param timeOutInSecs Timeout in seconds, default: 10 seconds (optional)
    * @return PipelineRun
    */
  def putPipelineRun(blocking:           Option[String] = None,timeOutInSecs:           Option[Int] = Noneorganization: String, pipeline: String, run: String): ServiceCall[NotUsed ,PipelineRun]
        
  /**
    * 
    * Search for any resource details
    *  
    * @param q Query string 
    * @return String
    */
  def search(q:String          ): ServiceCall[NotUsed ,String]
        
  /**
    * 
    * Get classes details
    *  
    * @param q Query string containing an array of class names 
    * @return String
    */
  def searchClasses(q:String          ): ServiceCall[NotUsed ,String]
  

  }
