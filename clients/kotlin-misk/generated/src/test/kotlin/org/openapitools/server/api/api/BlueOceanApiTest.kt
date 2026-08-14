package org.openapitools.server.api.api

import misk.testing.MiskTestModule
import jakarta.inject.Inject
import misk.testing.MiskTest
import misk.testing.MiskTestModule
import org.junit.jupiter.api.Test
import misk.web.HttpCall
import misk.web.PathParam
import misk.web.QueryParam
import misk.web.RequestBody
import misk.web.RequestHeader
import org.openapitools.server.api.model.BranchImpl
import org.openapitools.server.api.model.FavoriteImpl
import org.openapitools.server.api.model.GithubOrganization
import org.openapitools.server.api.model.GithubScm
import org.openapitools.server.api.model.MultibranchPipeline
import org.openapitools.server.api.model.Organisation
import org.openapitools.server.api.model.Pipeline
import org.openapitools.server.api.model.PipelineActivity
import org.openapitools.server.api.model.PipelineFolderImpl
import org.openapitools.server.api.model.PipelineImpl
import org.openapitools.server.api.model.PipelineRun
import org.openapitools.server.api.model.PipelineRunNode
import org.openapitools.server.api.model.PipelineStepImpl
import org.openapitools.server.api.model.QueueItemImpl
import org.openapitools.server.api.model.User

@MiskTest(startService = true)
internal class BlueOceanApiTest {

    @Suppress("unused")
    @MiskTestModule
    private val module = MiskTestModule()

    @Inject private lateinit var blueOceanApi: BlueOceanApiAction

    /**
     * To test BlueOceanApiAction.deletePipelineQueueItem
     */
    @Test
    fun `should handle deletePipelineQueueItem`() {
        val organization = TODO()
        val pipeline = TODO()
        val queue = TODO()
        val response = blueOceanApi.deletePipelineQueueItem(organization, pipeline, queue)
    }

    /**
     * To test BlueOceanApiAction.getAuthenticatedUser
     */
    @Test
    fun `should handle getAuthenticatedUser`() {
        val organization = TODO()
        val response: User = blueOceanApi.getAuthenticatedUser(organization)
    }

    /**
     * To test BlueOceanApiAction.getClasses
     */
    @Test
    fun `should handle getClasses`() {
        val propertyClass = TODO()
        val response: kotlin.String = blueOceanApi.getClasses(propertyClass)
    }

    /**
     * To test BlueOceanApiAction.getJsonWebKey
     */
    @Test
    fun `should handle getJsonWebKey`() {
        val key = TODO()
        val response: kotlin.String = blueOceanApi.getJsonWebKey(key)
    }

    /**
     * To test BlueOceanApiAction.getJsonWebToken
     */
    @Test
    fun `should handle getJsonWebToken`() {
        val expiryTimeInMins = TODO()
        val maxExpiryTimeInMins = TODO()
        val response: kotlin.String = blueOceanApi.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)
    }

    /**
     * To test BlueOceanApiAction.getOrganisation
     */
    @Test
    fun `should handle getOrganisation`() {
        val organization = TODO()
        val response: Organisation = blueOceanApi.getOrganisation(organization)
    }

    /**
     * To test BlueOceanApiAction.getOrganisations
     */
    @Test
    fun `should handle getOrganisations`() {
        val response: kotlin.collections.List<Organisation> = blueOceanApi.getOrganisations()
    }

    /**
     * To test BlueOceanApiAction.getPipeline
     */
    @Test
    fun `should handle getPipeline`() {
        val organization = TODO()
        val pipeline = TODO()
        val response: Pipeline = blueOceanApi.getPipeline(organization, pipeline)
    }

    /**
     * To test BlueOceanApiAction.getPipelineActivities
     */
    @Test
    fun `should handle getPipelineActivities`() {
        val organization = TODO()
        val pipeline = TODO()
        val response: kotlin.collections.List<PipelineActivity> = blueOceanApi.getPipelineActivities(organization, pipeline)
    }

    /**
     * To test BlueOceanApiAction.getPipelineBranch
     */
    @Test
    fun `should handle getPipelineBranch`() {
        val organization = TODO()
        val pipeline = TODO()
        val branch = TODO()
        val response: BranchImpl = blueOceanApi.getPipelineBranch(organization, pipeline, branch)
    }

    /**
     * To test BlueOceanApiAction.getPipelineBranchRun
     */
    @Test
    fun `should handle getPipelineBranchRun`() {
        val organization = TODO()
        val pipeline = TODO()
        val branch = TODO()
        val run = TODO()
        val response: PipelineRun = blueOceanApi.getPipelineBranchRun(organization, pipeline, branch, run)
    }

    /**
     * To test BlueOceanApiAction.getPipelineBranches
     */
    @Test
    fun `should handle getPipelineBranches`() {
        val organization = TODO()
        val pipeline = TODO()
        val response: MultibranchPipeline = blueOceanApi.getPipelineBranches(organization, pipeline)
    }

    /**
     * To test BlueOceanApiAction.getPipelineFolder
     */
    @Test
    fun `should handle getPipelineFolder`() {
        val organization = TODO()
        val folder = TODO()
        val response: PipelineFolderImpl = blueOceanApi.getPipelineFolder(organization, folder)
    }

    /**
     * To test BlueOceanApiAction.getPipelineFolderPipeline
     */
    @Test
    fun `should handle getPipelineFolderPipeline`() {
        val organization = TODO()
        val pipeline = TODO()
        val folder = TODO()
        val response: PipelineImpl = blueOceanApi.getPipelineFolderPipeline(organization, pipeline, folder)
    }

    /**
     * To test BlueOceanApiAction.getPipelineQueue
     */
    @Test
    fun `should handle getPipelineQueue`() {
        val organization = TODO()
        val pipeline = TODO()
        val response: kotlin.collections.List<QueueItemImpl> = blueOceanApi.getPipelineQueue(organization, pipeline)
    }

    /**
     * To test BlueOceanApiAction.getPipelineRun
     */
    @Test
    fun `should handle getPipelineRun`() {
        val organization = TODO()
        val pipeline = TODO()
        val run = TODO()
        val response: PipelineRun = blueOceanApi.getPipelineRun(organization, pipeline, run)
    }

    /**
     * To test BlueOceanApiAction.getPipelineRunLog
     */
    @Test
    fun `should handle getPipelineRunLog`() {
        val organization = TODO()
        val pipeline = TODO()
        val run = TODO()
        val start = TODO()
        val download = TODO()
        val response: kotlin.String = blueOceanApi.getPipelineRunLog(organization, pipeline, run, start, download)
    }

    /**
     * To test BlueOceanApiAction.getPipelineRunNode
     */
    @Test
    fun `should handle getPipelineRunNode`() {
        val organization = TODO()
        val pipeline = TODO()
        val run = TODO()
        val node = TODO()
        val response: PipelineRunNode = blueOceanApi.getPipelineRunNode(organization, pipeline, run, node)
    }

    /**
     * To test BlueOceanApiAction.getPipelineRunNodeStep
     */
    @Test
    fun `should handle getPipelineRunNodeStep`() {
        val organization = TODO()
        val pipeline = TODO()
        val run = TODO()
        val node = TODO()
        val step = TODO()
        val response: PipelineStepImpl = blueOceanApi.getPipelineRunNodeStep(organization, pipeline, run, node, step)
    }

    /**
     * To test BlueOceanApiAction.getPipelineRunNodeStepLog
     */
    @Test
    fun `should handle getPipelineRunNodeStepLog`() {
        val organization = TODO()
        val pipeline = TODO()
        val run = TODO()
        val node = TODO()
        val step = TODO()
        val response: kotlin.String = blueOceanApi.getPipelineRunNodeStepLog(organization, pipeline, run, node, step)
    }

    /**
     * To test BlueOceanApiAction.getPipelineRunNodeSteps
     */
    @Test
    fun `should handle getPipelineRunNodeSteps`() {
        val organization = TODO()
        val pipeline = TODO()
        val run = TODO()
        val node = TODO()
        val response: kotlin.collections.List<PipelineStepImpl> = blueOceanApi.getPipelineRunNodeSteps(organization, pipeline, run, node)
    }

    /**
     * To test BlueOceanApiAction.getPipelineRunNodes
     */
    @Test
    fun `should handle getPipelineRunNodes`() {
        val organization = TODO()
        val pipeline = TODO()
        val run = TODO()
        val response: kotlin.collections.List<PipelineRunNode> = blueOceanApi.getPipelineRunNodes(organization, pipeline, run)
    }

    /**
     * To test BlueOceanApiAction.getPipelineRuns
     */
    @Test
    fun `should handle getPipelineRuns`() {
        val organization = TODO()
        val pipeline = TODO()
        val response: kotlin.collections.List<PipelineRun> = blueOceanApi.getPipelineRuns(organization, pipeline)
    }

    /**
     * To test BlueOceanApiAction.getPipelines
     */
    @Test
    fun `should handle getPipelines`() {
        val organization = TODO()
        val response: kotlin.collections.List<Pipeline> = blueOceanApi.getPipelines(organization)
    }

    /**
     * To test BlueOceanApiAction.getSCM
     */
    @Test
    fun `should handle getSCM`() {
        val organization = TODO()
        val scm = TODO()
        val response: GithubScm = blueOceanApi.getSCM(organization, scm)
    }

    /**
     * To test BlueOceanApiAction.getSCMOrganisationRepositories
     */
    @Test
    fun `should handle getSCMOrganisationRepositories`() {
        val organization = TODO()
        val scm = TODO()
        val scmOrganisation = TODO()
        val credentialId = TODO()
        val pageSize = TODO()
        val pageNumber = TODO()
        val response: kotlin.collections.List<GithubOrganization> = blueOceanApi.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)
    }

    /**
     * To test BlueOceanApiAction.getSCMOrganisationRepository
     */
    @Test
    fun `should handle getSCMOrganisationRepository`() {
        val organization = TODO()
        val scm = TODO()
        val scmOrganisation = TODO()
        val repository = TODO()
        val credentialId = TODO()
        val response: kotlin.collections.List<GithubOrganization> = blueOceanApi.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)
    }

    /**
     * To test BlueOceanApiAction.getSCMOrganisations
     */
    @Test
    fun `should handle getSCMOrganisations`() {
        val organization = TODO()
        val scm = TODO()
        val credentialId = TODO()
        val response: kotlin.collections.List<GithubOrganization> = blueOceanApi.getSCMOrganisations(organization, scm, credentialId)
    }

    /**
     * To test BlueOceanApiAction.getUser
     */
    @Test
    fun `should handle getUser`() {
        val organization = TODO()
        val user = TODO()
        val response: User = blueOceanApi.getUser(organization, user)
    }

    /**
     * To test BlueOceanApiAction.getUserFavorites
     */
    @Test
    fun `should handle getUserFavorites`() {
        val user = TODO()
        val response: kotlin.collections.List<FavoriteImpl> = blueOceanApi.getUserFavorites(user)
    }

    /**
     * To test BlueOceanApiAction.getUsers
     */
    @Test
    fun `should handle getUsers`() {
        val organization = TODO()
        val response: User = blueOceanApi.getUsers(organization)
    }

    /**
     * To test BlueOceanApiAction.postPipelineRun
     */
    @Test
    fun `should handle postPipelineRun`() {
        val organization = TODO()
        val pipeline = TODO()
        val run = TODO()
        val response: QueueItemImpl = blueOceanApi.postPipelineRun(organization, pipeline, run)
    }

    /**
     * To test BlueOceanApiAction.postPipelineRuns
     */
    @Test
    fun `should handle postPipelineRuns`() {
        val organization = TODO()
        val pipeline = TODO()
        val response: QueueItemImpl = blueOceanApi.postPipelineRuns(organization, pipeline)
    }

    /**
     * To test BlueOceanApiAction.putPipelineFavorite
     */
    @Test
    fun `should handle putPipelineFavorite`() {
        val organization = TODO()
        val pipeline = TODO()
        val body = TODO()
        val response: FavoriteImpl = blueOceanApi.putPipelineFavorite(organization, pipeline, body)
    }

    /**
     * To test BlueOceanApiAction.putPipelineRun
     */
    @Test
    fun `should handle putPipelineRun`() {
        val organization = TODO()
        val pipeline = TODO()
        val run = TODO()
        val blocking = TODO()
        val timeOutInSecs = TODO()
        val response: PipelineRun = blueOceanApi.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)
    }

    /**
     * To test BlueOceanApiAction.search
     */
    @Test
    fun `should handle search`() {
        val q = TODO()
        val response: kotlin.String = blueOceanApi.search(q)
    }

    /**
     * To test BlueOceanApiAction.searchClasses
     */
    @Test
    fun `should handle searchClasses`() {
        val q = TODO()
        val response: kotlin.String = blueOceanApi.searchClasses(q)
    }
}
