package api

import model.BranchImpl
import model.FavoriteImpl
import model.GithubOrganization
import model.GithubScm
import model.JsObject
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
import model.UNKNOWN_BASE_TYPE
import model.User

/**
  * Provides a default implementation for [[BlueOceanApi]].
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
class BlueOceanApiImpl extends BlueOceanApi {
  /**
    * @inheritdoc
    */
  override def deletePipelineQueueItem(organization: String, pipeline: String, queue: String): Unit = {
    // TODO: Implement better logic

    
  }

  /**
    * @inheritdoc
    */
  override def getAuthenticatedUser(organization: String): User = {
    // TODO: Implement better logic

    User(None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getClasses(`class`: String): String = {
    // TODO: Implement better logic

    ""
  }

  /**
    * @inheritdoc
    */
  override def getJsonWebKey(key: Int): String = {
    // TODO: Implement better logic

    ""
  }

  /**
    * @inheritdoc
    */
  override def getJsonWebToken(expiryTimeInMins: Option[Int], maxExpiryTimeInMins: Option[Int]): String = {
    // TODO: Implement better logic

    ""
  }

  /**
    * @inheritdoc
    */
  override def getOrganisation(organization: String): Organisation = {
    // TODO: Implement better logic

    Organisation(None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getOrganisations(): List[Organisation] = {
    // TODO: Implement better logic

    List.empty[Organisation]
  }

  /**
    * @inheritdoc
    */
  override def getPipeline(organization: String, pipeline: String): Pipeline = {
    // TODO: Implement better logic

    Pipeline(None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getPipelineActivities(organization: String, pipeline: String): List[PipelineActivity] = {
    // TODO: Implement better logic

    List.empty[PipelineActivity]
  }

  /**
    * @inheritdoc
    */
  override def getPipelineBranch(organization: String, pipeline: String, branch: String): BranchImpl = {
    // TODO: Implement better logic

    BranchImpl(None, None, None, None, None, None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getPipelineBranchRun(organization: String, pipeline: String, branch: String, run: String): PipelineRun = {
    // TODO: Implement better logic

    PipelineRun(None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getPipelineBranches(organization: String, pipeline: String): MultibranchPipeline = {
    // TODO: Implement better logic

    MultibranchPipeline(None, None, None, None, None, None, None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getPipelineFolder(organization: String, folder: String): PipelineFolderImpl = {
    // TODO: Implement better logic

    PipelineFolderImpl(None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getPipelineFolderPipeline(organization: String, pipeline: String, folder: String): PipelineImpl = {
    // TODO: Implement better logic

    PipelineImpl(None, None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getPipelineQueue(organization: String, pipeline: String): List[QueueItemImpl] = {
    // TODO: Implement better logic

    List.empty[QueueItemImpl]
  }

  /**
    * @inheritdoc
    */
  override def getPipelineRun(organization: String, pipeline: String, run: String): PipelineRun = {
    // TODO: Implement better logic

    PipelineRun(None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getPipelineRunLog(organization: String, pipeline: String, run: String, start: Option[Int], download: Option[Boolean]): String = {
    // TODO: Implement better logic

    ""
  }

  /**
    * @inheritdoc
    */
  override def getPipelineRunNode(organization: String, pipeline: String, run: String, node: String): PipelineRunNode = {
    // TODO: Implement better logic

    PipelineRunNode(None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getPipelineRunNodeStep(organization: String, pipeline: String, run: String, node: String, step: String): PipelineStepImpl = {
    // TODO: Implement better logic

    PipelineStepImpl(None, None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getPipelineRunNodeStepLog(organization: String, pipeline: String, run: String, node: String, step: String): String = {
    // TODO: Implement better logic

    ""
  }

  /**
    * @inheritdoc
    */
  override def getPipelineRunNodeSteps(organization: String, pipeline: String, run: String, node: String): List[PipelineStepImpl] = {
    // TODO: Implement better logic

    List.empty[PipelineStepImpl]
  }

  /**
    * @inheritdoc
    */
  override def getPipelineRunNodes(organization: String, pipeline: String, run: String): List[PipelineRunNode] = {
    // TODO: Implement better logic

    List.empty[PipelineRunNode]
  }

  /**
    * @inheritdoc
    */
  override def getPipelineRuns(organization: String, pipeline: String): List[PipelineRun] = {
    // TODO: Implement better logic

    List.empty[PipelineRun]
  }

  /**
    * @inheritdoc
    */
  override def getPipelines(organization: String): List[Pipeline] = {
    // TODO: Implement better logic

    List.empty[Pipeline]
  }

  /**
    * @inheritdoc
    */
  override def getSCM(organization: String, scm: String): GithubScm = {
    // TODO: Implement better logic

    GithubScm(None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getSCMOrganisationRepositories(organization: String, scm: String, scmOrganisation: String, credentialId: Option[String], pageSize: Option[Int], pageNumber: Option[Int]): List[GithubOrganization] = {
    // TODO: Implement better logic

    List.empty[GithubOrganization]
  }

  /**
    * @inheritdoc
    */
  override def getSCMOrganisationRepository(organization: String, scm: String, scmOrganisation: String, repository: String, credentialId: Option[String]): List[GithubOrganization] = {
    // TODO: Implement better logic

    List.empty[GithubOrganization]
  }

  /**
    * @inheritdoc
    */
  override def getSCMOrganisations(organization: String, scm: String, credentialId: Option[String]): List[GithubOrganization] = {
    // TODO: Implement better logic

    List.empty[GithubOrganization]
  }

  /**
    * @inheritdoc
    */
  override def getUser(organization: String, user: String): User = {
    // TODO: Implement better logic

    User(None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getUserFavorites(user: String): List[FavoriteImpl] = {
    // TODO: Implement better logic

    List.empty[FavoriteImpl]
  }

  /**
    * @inheritdoc
    */
  override def getUsers(organization: String): User = {
    // TODO: Implement better logic

    User(None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def postPipelineRun(organization: String, pipeline: String, run: String): QueueItemImpl = {
    // TODO: Implement better logic

    QueueItemImpl(None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def postPipelineRuns(organization: String, pipeline: String): QueueItemImpl = {
    // TODO: Implement better logic

    QueueItemImpl(None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def putPipelineFavorite(organization: String, pipeline: String, uNKNOWNBASETYPE: UNKNOWN_BASE_TYPE): FavoriteImpl = {
    // TODO: Implement better logic

    FavoriteImpl(None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def putPipelineRun(organization: String, pipeline: String, run: String, blocking: Option[String], timeOutInSecs: Option[Int]): PipelineRun = {
    // TODO: Implement better logic

    PipelineRun(None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def search(q: String): String = {
    // TODO: Implement better logic

    ""
  }

  /**
    * @inheritdoc
    */
  override def searchClasses(q: String): String = {
    // TODO: Implement better logic

    ""
  }
}
