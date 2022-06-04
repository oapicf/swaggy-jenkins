package org.openapitools.api

import org.openapitools.model.BranchImpl
import org.openapitools.model.FavoriteImpl
import org.openapitools.model.GithubOrganization
import org.openapitools.model.GithubScm
import org.openapitools.model.MultibranchPipeline
import org.openapitools.model.Organisation
import org.openapitools.model.Pipeline
import org.openapitools.model.PipelineActivity
import org.openapitools.model.PipelineFolderImpl
import org.openapitools.model.PipelineImpl
import org.openapitools.model.PipelineRun
import org.openapitools.model.PipelineRunNode
import org.openapitools.model.PipelineStepImpl
import org.openapitools.model.QueueItemImpl
import org.openapitools.model.User
import org.junit.jupiter.api.Test
import org.springframework.http.ResponseEntity

class BlueApiTest {

    private val api: BlueApiController = BlueApiController()

    /**
     * To test BlueApiController.deletePipelineQueueItem
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun deletePipelineQueueItemTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val queue: kotlin.String = TODO()
        val response: ResponseEntity<Unit> = api.deletePipelineQueueItem(organization, pipeline, queue)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getAuthenticatedUser
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getAuthenticatedUserTest() {
        val organization: kotlin.String = TODO()
        val response: ResponseEntity<User> = api.getAuthenticatedUser(organization)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getClasses
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getClassesTest() {
        val propertyClass: kotlin.String = TODO()
        val response: ResponseEntity<kotlin.String> = api.getClasses(propertyClass)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getOrganisation
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getOrganisationTest() {
        val organization: kotlin.String = TODO()
        val response: ResponseEntity<Organisation> = api.getOrganisation(organization)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getOrganisations
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getOrganisationsTest() {
        val response: ResponseEntity<List<Organisation>> = api.getOrganisations()

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipeline
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val response: ResponseEntity<Pipeline> = api.getPipeline(organization, pipeline)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineActivities
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineActivitiesTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val response: ResponseEntity<List<PipelineActivity>> = api.getPipelineActivities(organization, pipeline)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineBranch
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineBranchTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val branch: kotlin.String = TODO()
        val response: ResponseEntity<BranchImpl> = api.getPipelineBranch(organization, pipeline, branch)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineBranchRun
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineBranchRunTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val branch: kotlin.String = TODO()
        val run: kotlin.String = TODO()
        val response: ResponseEntity<PipelineRun> = api.getPipelineBranchRun(organization, pipeline, branch, run)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineBranches
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineBranchesTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val response: ResponseEntity<MultibranchPipeline> = api.getPipelineBranches(organization, pipeline)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineFolder
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineFolderTest() {
        val organization: kotlin.String = TODO()
        val folder: kotlin.String = TODO()
        val response: ResponseEntity<PipelineFolderImpl> = api.getPipelineFolder(organization, folder)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineFolderPipeline
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineFolderPipelineTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val folder: kotlin.String = TODO()
        val response: ResponseEntity<PipelineImpl> = api.getPipelineFolderPipeline(organization, pipeline, folder)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineQueue
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineQueueTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val response: ResponseEntity<List<QueueItemImpl>> = api.getPipelineQueue(organization, pipeline)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineRun
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineRunTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val run: kotlin.String = TODO()
        val response: ResponseEntity<PipelineRun> = api.getPipelineRun(organization, pipeline, run)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineRunLog
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineRunLogTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val run: kotlin.String = TODO()
        val start: kotlin.Int? = TODO()
        val download: kotlin.Boolean? = TODO()
        val response: ResponseEntity<kotlin.String> = api.getPipelineRunLog(organization, pipeline, run, start, download)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineRunNode
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineRunNodeTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val run: kotlin.String = TODO()
        val node: kotlin.String = TODO()
        val response: ResponseEntity<PipelineRunNode> = api.getPipelineRunNode(organization, pipeline, run, node)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineRunNodeStep
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineRunNodeStepTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val run: kotlin.String = TODO()
        val node: kotlin.String = TODO()
        val step: kotlin.String = TODO()
        val response: ResponseEntity<PipelineStepImpl> = api.getPipelineRunNodeStep(organization, pipeline, run, node, step)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineRunNodeStepLog
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineRunNodeStepLogTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val run: kotlin.String = TODO()
        val node: kotlin.String = TODO()
        val step: kotlin.String = TODO()
        val response: ResponseEntity<kotlin.String> = api.getPipelineRunNodeStepLog(organization, pipeline, run, node, step)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineRunNodeSteps
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineRunNodeStepsTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val run: kotlin.String = TODO()
        val node: kotlin.String = TODO()
        val response: ResponseEntity<List<PipelineStepImpl>> = api.getPipelineRunNodeSteps(organization, pipeline, run, node)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineRunNodes
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineRunNodesTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val run: kotlin.String = TODO()
        val response: ResponseEntity<List<PipelineRunNode>> = api.getPipelineRunNodes(organization, pipeline, run)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelineRuns
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelineRunsTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val response: ResponseEntity<List<PipelineRun>> = api.getPipelineRuns(organization, pipeline)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getPipelines
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getPipelinesTest() {
        val organization: kotlin.String = TODO()
        val response: ResponseEntity<List<Pipeline>> = api.getPipelines(organization)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getSCM
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getSCMTest() {
        val organization: kotlin.String = TODO()
        val scm: kotlin.String = TODO()
        val response: ResponseEntity<GithubScm> = api.getSCM(organization, scm)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getSCMOrganisationRepositories
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getSCMOrganisationRepositoriesTest() {
        val organization: kotlin.String = TODO()
        val scm: kotlin.String = TODO()
        val scmOrganisation: kotlin.String = TODO()
        val credentialId: kotlin.String? = TODO()
        val pageSize: kotlin.Int? = TODO()
        val pageNumber: kotlin.Int? = TODO()
        val response: ResponseEntity<List<GithubOrganization>> = api.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getSCMOrganisationRepository
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getSCMOrganisationRepositoryTest() {
        val organization: kotlin.String = TODO()
        val scm: kotlin.String = TODO()
        val scmOrganisation: kotlin.String = TODO()
        val repository: kotlin.String = TODO()
        val credentialId: kotlin.String? = TODO()
        val response: ResponseEntity<List<GithubOrganization>> = api.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getSCMOrganisations
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getSCMOrganisationsTest() {
        val organization: kotlin.String = TODO()
        val scm: kotlin.String = TODO()
        val credentialId: kotlin.String? = TODO()
        val response: ResponseEntity<List<GithubOrganization>> = api.getSCMOrganisations(organization, scm, credentialId)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getUser
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getUserTest() {
        val organization: kotlin.String = TODO()
        val user: kotlin.String = TODO()
        val response: ResponseEntity<User> = api.getUser(organization, user)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getUserFavorites
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getUserFavoritesTest() {
        val user: kotlin.String = TODO()
        val response: ResponseEntity<List<FavoriteImpl>> = api.getUserFavorites(user)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.getUsers
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getUsersTest() {
        val organization: kotlin.String = TODO()
        val response: ResponseEntity<User> = api.getUsers(organization)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.postPipelineRun
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun postPipelineRunTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val run: kotlin.String = TODO()
        val response: ResponseEntity<QueueItemImpl> = api.postPipelineRun(organization, pipeline, run)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.postPipelineRuns
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun postPipelineRunsTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val response: ResponseEntity<QueueItemImpl> = api.postPipelineRuns(organization, pipeline)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.putPipelineFavorite
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun putPipelineFavoriteTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val body: kotlin.Boolean = TODO()
        val response: ResponseEntity<FavoriteImpl> = api.putPipelineFavorite(organization, pipeline, body)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.putPipelineRun
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun putPipelineRunTest() {
        val organization: kotlin.String = TODO()
        val pipeline: kotlin.String = TODO()
        val run: kotlin.String = TODO()
        val blocking: kotlin.String? = TODO()
        val timeOutInSecs: kotlin.Int? = TODO()
        val response: ResponseEntity<PipelineRun> = api.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.search
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun searchTest() {
        val q: kotlin.String = TODO()
        val response: ResponseEntity<kotlin.String> = api.search(q)

        // TODO: test validations
    }

    /**
     * To test BlueApiController.searchClasses
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun searchClassesTest() {
        val q: kotlin.String = TODO()
        val response: ResponseEntity<kotlin.String> = api.searchClasses(q)

        // TODO: test validations
    }
}
