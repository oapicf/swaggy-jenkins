@file:Suppress(
    "RemoveRedundantQualifierName",
    "UnusedImport",
    "unused",
)

package org.openapitools.apis

import com.fasterxml.jackson.databind.ObjectMapper
import com.github.tomakehurst.wiremock.client.MappingBuilder
import com.github.tomakehurst.wiremock.client.ResponseDefinitionBuilder
import com.github.tomakehurst.wiremock.client.WireMock.*
import com.github.tomakehurst.wiremock.matching.StringValuePattern
import org.openapitools.models.*

/**
 * WireMock stub request builder.
 */
open class BlueOceanApiStubs(private val objectMapper: ObjectMapper) {

    /**
     * Construct a stub for the operation deletePipelineQueueItem.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param queue path parameter queue pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [DeletePipelineQueueItemStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun deletePipelineQueueItem(organization: StringValuePattern, pipeline: StringValuePattern, queue: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): DeletePipelineQueueItemStubBuilder =
        DeletePipelineQueueItemStubBuilder(objectMapper, delete(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("queue", queue)
            .configurer()
        )

    /**
     * Construct a stub for the operation getAuthenticatedUser.
     *
     * @param organization path parameter organization pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetAuthenticatedUserStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getAuthenticatedUser(organization: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetAuthenticatedUserStubBuilder =
        GetAuthenticatedUserStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/user/"))
            .withPathParam("organization", organization)
            .configurer()
        )

    /**
     * Construct a stub for the operation getClasses.
     *
     * @param propertyClass path parameter propertyClass pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetClassesStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getClasses(propertyClass: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetClassesStubBuilder =
        GetClassesStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/classes/{class}"))
            .withPathParam("class", propertyClass)
            .configurer()
        )

    /**
     * Construct a stub for the operation getJsonWebKey.
     *
     * @param key path parameter key pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetJsonWebKeyStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getJsonWebKey(key: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetJsonWebKeyStubBuilder =
        GetJsonWebKeyStubBuilder(objectMapper, get(urlPathTemplate("/jwt-auth/jwks/{key}"))
            .withPathParam("key", key)
            .configurer()
        )

    /**
     * Construct a stub for the operation getJsonWebToken.
     *
     * @param expiryTimeInMins query parameter expiryTimeInMins pattern.
     * @param maxExpiryTimeInMins query parameter maxExpiryTimeInMins pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetJsonWebTokenStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getJsonWebToken(expiryTimeInMins: StringValuePattern? = null, maxExpiryTimeInMins: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetJsonWebTokenStubBuilder =
        GetJsonWebTokenStubBuilder(objectMapper, get(urlPathTemplate("/jwt-auth/token"))
            .apply { expiryTimeInMins?.let { withQueryParam("expiryTimeInMins", it) } }
            .apply { maxExpiryTimeInMins?.let { withQueryParam("maxExpiryTimeInMins", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation getOrganisation.
     *
     * @param organization path parameter organization pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetOrganisationStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getOrganisation(organization: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetOrganisationStubBuilder =
        GetOrganisationStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}"))
            .withPathParam("organization", organization)
            .configurer()
        )

    /**
     * Construct a stub for the operation getOrganisations.
     *
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetOrganisationsStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getOrganisations(configurer: MappingBuilder.() -> MappingBuilder = { this }): GetOrganisationsStubBuilder =
        GetOrganisationsStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/"))
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipeline.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipeline(organization: StringValuePattern, pipeline: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineStubBuilder =
        GetPipelineStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineActivities.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineActivitiesStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineActivities(organization: StringValuePattern, pipeline: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineActivitiesStubBuilder =
        GetPipelineActivitiesStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineBranch.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param branch path parameter branch pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineBranchStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineBranch(organization: StringValuePattern, pipeline: StringValuePattern, branch: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineBranchStubBuilder =
        GetPipelineBranchStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("branch", branch)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineBranchRun.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param branch path parameter branch pattern.
     * @param run path parameter run pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineBranchRunStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineBranchRun(organization: StringValuePattern, pipeline: StringValuePattern, branch: StringValuePattern, run: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineBranchRunStubBuilder =
        GetPipelineBranchRunStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("branch", branch)
            .withPathParam("run", run)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineBranches.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineBranchesStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineBranches(organization: StringValuePattern, pipeline: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineBranchesStubBuilder =
        GetPipelineBranchesStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineFolder.
     *
     * @param organization path parameter organization pattern.
     * @param folder path parameter folder pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineFolderStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineFolder(organization: StringValuePattern, folder: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineFolderStubBuilder =
        GetPipelineFolderStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{folder}/"))
            .withPathParam("organization", organization)
            .withPathParam("folder", folder)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineFolderPipeline.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param folder path parameter folder pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineFolderPipelineStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineFolderPipeline(organization: StringValuePattern, pipeline: StringValuePattern, folder: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineFolderPipelineStubBuilder =
        GetPipelineFolderPipelineStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("folder", folder)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineQueue.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineQueueStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineQueue(organization: StringValuePattern, pipeline: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineQueueStubBuilder =
        GetPipelineQueueStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineRun.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param run path parameter run pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineRunStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineRun(organization: StringValuePattern, pipeline: StringValuePattern, run: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineRunStubBuilder =
        GetPipelineRunStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("run", run)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineRunLog.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param run path parameter run pattern.
     * @param start query parameter start pattern.
     * @param download query parameter download pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineRunLogStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineRunLog(organization: StringValuePattern, pipeline: StringValuePattern, run: StringValuePattern, start: StringValuePattern? = null, download: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineRunLogStubBuilder =
        GetPipelineRunLogStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("run", run)
            .apply { start?.let { withQueryParam("start", it) } }
            .apply { download?.let { withQueryParam("download", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineRunNode.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param run path parameter run pattern.
     * @param node path parameter node pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineRunNodeStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineRunNode(organization: StringValuePattern, pipeline: StringValuePattern, run: StringValuePattern, node: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineRunNodeStubBuilder =
        GetPipelineRunNodeStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("run", run)
            .withPathParam("node", node)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineRunNodeStep.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param run path parameter run pattern.
     * @param node path parameter node pattern.
     * @param step path parameter step pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineRunNodeStepStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineRunNodeStep(organization: StringValuePattern, pipeline: StringValuePattern, run: StringValuePattern, node: StringValuePattern, step: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineRunNodeStepStubBuilder =
        GetPipelineRunNodeStepStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("run", run)
            .withPathParam("node", node)
            .withPathParam("step", step)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineRunNodeStepLog.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param run path parameter run pattern.
     * @param node path parameter node pattern.
     * @param step path parameter step pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineRunNodeStepLogStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineRunNodeStepLog(organization: StringValuePattern, pipeline: StringValuePattern, run: StringValuePattern, node: StringValuePattern, step: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineRunNodeStepLogStubBuilder =
        GetPipelineRunNodeStepLogStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("run", run)
            .withPathParam("node", node)
            .withPathParam("step", step)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineRunNodeSteps.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param run path parameter run pattern.
     * @param node path parameter node pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineRunNodeStepsStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineRunNodeSteps(organization: StringValuePattern, pipeline: StringValuePattern, run: StringValuePattern, node: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineRunNodeStepsStubBuilder =
        GetPipelineRunNodeStepsStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("run", run)
            .withPathParam("node", node)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineRunNodes.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param run path parameter run pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineRunNodesStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineRunNodes(organization: StringValuePattern, pipeline: StringValuePattern, run: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineRunNodesStubBuilder =
        GetPipelineRunNodesStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("run", run)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelineRuns.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelineRunsStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelineRuns(organization: StringValuePattern, pipeline: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelineRunsStubBuilder =
        GetPipelineRunsStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .configurer()
        )

    /**
     * Construct a stub for the operation getPipelines.
     *
     * @param organization path parameter organization pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetPipelinesStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getPipelines(organization: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetPipelinesStubBuilder =
        GetPipelinesStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/"))
            .withPathParam("organization", organization)
            .configurer()
        )

    /**
     * Construct a stub for the operation getSCM.
     *
     * @param organization path parameter organization pattern.
     * @param scm path parameter scm pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetSCMStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getSCM(organization: StringValuePattern, scm: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetSCMStubBuilder =
        GetSCMStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/scm/{scm}"))
            .withPathParam("organization", organization)
            .withPathParam("scm", scm)
            .configurer()
        )

    /**
     * Construct a stub for the operation getSCMOrganisationRepositories.
     *
     * @param organization path parameter organization pattern.
     * @param scm path parameter scm pattern.
     * @param scmOrganisation path parameter scmOrganisation pattern.
     * @param credentialId query parameter credentialId pattern.
     * @param pageSize query parameter pageSize pattern.
     * @param pageNumber query parameter pageNumber pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetSCMOrganisationRepositoriesStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getSCMOrganisationRepositories(organization: StringValuePattern, scm: StringValuePattern, scmOrganisation: StringValuePattern, credentialId: StringValuePattern? = null, pageSize: StringValuePattern? = null, pageNumber: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetSCMOrganisationRepositoriesStubBuilder =
        GetSCMOrganisationRepositoriesStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories"))
            .withPathParam("organization", organization)
            .withPathParam("scm", scm)
            .withPathParam("scmOrganisation", scmOrganisation)
            .apply { credentialId?.let { withQueryParam("credentialId", it) } }
            .apply { pageSize?.let { withQueryParam("pageSize", it) } }
            .apply { pageNumber?.let { withQueryParam("pageNumber", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation getSCMOrganisationRepository.
     *
     * @param organization path parameter organization pattern.
     * @param scm path parameter scm pattern.
     * @param scmOrganisation path parameter scmOrganisation pattern.
     * @param repository path parameter repository pattern.
     * @param credentialId query parameter credentialId pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetSCMOrganisationRepositoryStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getSCMOrganisationRepository(organization: StringValuePattern, scm: StringValuePattern, scmOrganisation: StringValuePattern, repository: StringValuePattern, credentialId: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetSCMOrganisationRepositoryStubBuilder =
        GetSCMOrganisationRepositoryStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}"))
            .withPathParam("organization", organization)
            .withPathParam("scm", scm)
            .withPathParam("scmOrganisation", scmOrganisation)
            .withPathParam("repository", repository)
            .apply { credentialId?.let { withQueryParam("credentialId", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation getSCMOrganisations.
     *
     * @param organization path parameter organization pattern.
     * @param scm path parameter scm pattern.
     * @param credentialId query parameter credentialId pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetSCMOrganisationsStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getSCMOrganisations(organization: StringValuePattern, scm: StringValuePattern, credentialId: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetSCMOrganisationsStubBuilder =
        GetSCMOrganisationsStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/scm/{scm}/organizations"))
            .withPathParam("organization", organization)
            .withPathParam("scm", scm)
            .apply { credentialId?.let { withQueryParam("credentialId", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation getUser.
     *
     * @param organization path parameter organization pattern.
     * @param user path parameter user pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetUserStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getUser(organization: StringValuePattern, user: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetUserStubBuilder =
        GetUserStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/users/{user}"))
            .withPathParam("organization", organization)
            .withPathParam("user", user)
            .configurer()
        )

    /**
     * Construct a stub for the operation getUserFavorites.
     *
     * @param user path parameter user pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetUserFavoritesStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getUserFavorites(user: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetUserFavoritesStubBuilder =
        GetUserFavoritesStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/users/{user}/favorites"))
            .withPathParam("user", user)
            .configurer()
        )

    /**
     * Construct a stub for the operation getUsers.
     *
     * @param organization path parameter organization pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetUsersStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getUsers(organization: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetUsersStubBuilder =
        GetUsersStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/organizations/{organization}/users/"))
            .withPathParam("organization", organization)
            .configurer()
        )

    /**
     * Construct a stub for the operation postPipelineRun.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param run path parameter run pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PostPipelineRunStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun postPipelineRun(organization: StringValuePattern, pipeline: StringValuePattern, run: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): PostPipelineRunStubBuilder =
        PostPipelineRunStubBuilder(objectMapper, post(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("run", run)
            .configurer()
        )

    /**
     * Construct a stub for the operation postPipelineRuns.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PostPipelineRunsStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun postPipelineRuns(organization: StringValuePattern, pipeline: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): PostPipelineRunsStubBuilder =
        PostPipelineRunsStubBuilder(objectMapper, post(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .configurer()
        )

    /**
     * Construct a stub for the operation putPipelineFavorite.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PutPipelineFavoriteStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun putPipelineFavorite(organization: StringValuePattern, pipeline: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): PutPipelineFavoriteStubBuilder =
        PutPipelineFavoriteStubBuilder(objectMapper, put(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .configurer()
        )

    /**
     * Construct a stub for the operation putPipelineRun.
     *
     * @param organization path parameter organization pattern.
     * @param pipeline path parameter pipeline pattern.
     * @param run path parameter run pattern.
     * @param blocking query parameter blocking pattern.
     * @param timeOutInSecs query parameter timeOutInSecs pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PutPipelineRunStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun putPipelineRun(organization: StringValuePattern, pipeline: StringValuePattern, run: StringValuePattern, blocking: StringValuePattern? = null, timeOutInSecs: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): PutPipelineRunStubBuilder =
        PutPipelineRunStubBuilder(objectMapper, put(urlPathTemplate("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop"))
            .withPathParam("organization", organization)
            .withPathParam("pipeline", pipeline)
            .withPathParam("run", run)
            .apply { blocking?.let { withQueryParam("blocking", it) } }
            .apply { timeOutInSecs?.let { withQueryParam("timeOutInSecs", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation search.
     *
     * @param q query parameter q pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [SearchStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun search(q: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): SearchStubBuilder =
        SearchStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/search/"))
            .apply { q?.let { withQueryParam("q", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation searchClasses.
     *
     * @param q query parameter q pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [SearchClassesStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun searchClasses(q: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): SearchClassesStubBuilder =
        SearchClassesStubBuilder(objectMapper, get(urlPathTemplate("/blue/rest/classes/"))
            .apply { q?.let { withQueryParam("q", it) } }
            .configurer()
        )
}
