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
open class RemoteAccessApiStubs(private val objectMapper: ObjectMapper) {

    /**
     * Construct a stub for the operation getComputer.
     *
     * @param depth query parameter depth pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetComputerStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getComputer(depth: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetComputerStubBuilder =
        GetComputerStubBuilder(objectMapper, get(urlPathTemplate("/computer/api/json"))
            .apply { depth?.let { withQueryParam("depth", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation getJenkins.
     *
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetJenkinsStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getJenkins(configurer: MappingBuilder.() -> MappingBuilder = { this }): GetJenkinsStubBuilder =
        GetJenkinsStubBuilder(objectMapper, get(urlPathTemplate("/api/json"))
            .configurer()
        )

    /**
     * Construct a stub for the operation getJob.
     *
     * @param name path parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetJobStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getJob(name: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetJobStubBuilder =
        GetJobStubBuilder(objectMapper, get(urlPathTemplate("/job/{name}/api/json"))
            .withPathParam("name", name)
            .configurer()
        )

    /**
     * Construct a stub for the operation getJobConfig.
     *
     * @param name path parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetJobConfigStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getJobConfig(name: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetJobConfigStubBuilder =
        GetJobConfigStubBuilder(objectMapper, get(urlPathTemplate("/job/{name}/config.xml"))
            .withPathParam("name", name)
            .configurer()
        )

    /**
     * Construct a stub for the operation getJobLastBuild.
     *
     * @param name path parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetJobLastBuildStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getJobLastBuild(name: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetJobLastBuildStubBuilder =
        GetJobLastBuildStubBuilder(objectMapper, get(urlPathTemplate("/job/{name}/lastBuild/api/json"))
            .withPathParam("name", name)
            .configurer()
        )

    /**
     * Construct a stub for the operation getJobProgressiveText.
     *
     * @param name path parameter name pattern.
     * @param number path parameter number pattern.
     * @param start query parameter start pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetJobProgressiveTextStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getJobProgressiveText(name: StringValuePattern, number: StringValuePattern, start: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetJobProgressiveTextStubBuilder =
        GetJobProgressiveTextStubBuilder(objectMapper, get(urlPathTemplate("/job/{name}/{number}/logText/progressiveText"))
            .withPathParam("name", name)
            .withPathParam("number", number)
            .apply { start?.let { withQueryParam("start", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation getQueue.
     *
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetQueueStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getQueue(configurer: MappingBuilder.() -> MappingBuilder = { this }): GetQueueStubBuilder =
        GetQueueStubBuilder(objectMapper, get(urlPathTemplate("/queue/api/json"))
            .configurer()
        )

    /**
     * Construct a stub for the operation getQueueItem.
     *
     * @param number path parameter number pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetQueueItemStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getQueueItem(number: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetQueueItemStubBuilder =
        GetQueueItemStubBuilder(objectMapper, get(urlPathTemplate("/queue/item/{number}/api/json"))
            .withPathParam("number", number)
            .configurer()
        )

    /**
     * Construct a stub for the operation getView.
     *
     * @param name path parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetViewStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getView(name: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetViewStubBuilder =
        GetViewStubBuilder(objectMapper, get(urlPathTemplate("/view/{name}/api/json"))
            .withPathParam("name", name)
            .configurer()
        )

    /**
     * Construct a stub for the operation getViewConfig.
     *
     * @param name path parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [GetViewConfigStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun getViewConfig(name: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): GetViewConfigStubBuilder =
        GetViewConfigStubBuilder(objectMapper, get(urlPathTemplate("/view/{name}/config.xml"))
            .withPathParam("name", name)
            .configurer()
        )

    /**
     * Construct a stub for the operation headJenkins.
     *
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [HeadJenkinsStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun headJenkins(configurer: MappingBuilder.() -> MappingBuilder = { this }): HeadJenkinsStubBuilder =
        HeadJenkinsStubBuilder(objectMapper, head(urlPathTemplate("/api/json"))
            .configurer()
        )

    /**
     * Construct a stub for the operation postCreateItem.
     *
     * @param name query parameter name pattern.
     * @param from query parameter from pattern.
     * @param mode query parameter mode pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PostCreateItemStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun postCreateItem(name: StringValuePattern? = null, from: StringValuePattern? = null, mode: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): PostCreateItemStubBuilder =
        PostCreateItemStubBuilder(objectMapper, post(urlPathTemplate("/createItem"))
            .apply { name?.let { withQueryParam("name", it) } }
            .apply { from?.let { withQueryParam("from", it) } }
            .apply { mode?.let { withQueryParam("mode", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation postCreateView.
     *
     * @param name query parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PostCreateViewStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun postCreateView(name: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): PostCreateViewStubBuilder =
        PostCreateViewStubBuilder(objectMapper, post(urlPathTemplate("/createView"))
            .apply { name?.let { withQueryParam("name", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation postJobBuild.
     *
     * @param name path parameter name pattern.
     * @param json query parameter json pattern.
     * @param token query parameter token pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PostJobBuildStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun postJobBuild(name: StringValuePattern, json: StringValuePattern? = null, token: StringValuePattern? = null, configurer: MappingBuilder.() -> MappingBuilder = { this }): PostJobBuildStubBuilder =
        PostJobBuildStubBuilder(objectMapper, post(urlPathTemplate("/job/{name}/build"))
            .withPathParam("name", name)
            .apply { json?.let { withQueryParam("json", it) } }
            .apply { token?.let { withQueryParam("token", it) } }
            .configurer()
        )

    /**
     * Construct a stub for the operation postJobConfig.
     *
     * @param name path parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PostJobConfigStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun postJobConfig(name: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): PostJobConfigStubBuilder =
        PostJobConfigStubBuilder(objectMapper, post(urlPathTemplate("/job/{name}/config.xml"))
            .withPathParam("name", name)
            .configurer()
        )

    /**
     * Construct a stub for the operation postJobDelete.
     *
     * @param name path parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PostJobDeleteStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun postJobDelete(name: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): PostJobDeleteStubBuilder =
        PostJobDeleteStubBuilder(objectMapper, post(urlPathTemplate("/job/{name}/doDelete"))
            .withPathParam("name", name)
            .configurer()
        )

    /**
     * Construct a stub for the operation postJobDisable.
     *
     * @param name path parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PostJobDisableStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun postJobDisable(name: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): PostJobDisableStubBuilder =
        PostJobDisableStubBuilder(objectMapper, post(urlPathTemplate("/job/{name}/disable"))
            .withPathParam("name", name)
            .configurer()
        )

    /**
     * Construct a stub for the operation postJobEnable.
     *
     * @param name path parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PostJobEnableStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun postJobEnable(name: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): PostJobEnableStubBuilder =
        PostJobEnableStubBuilder(objectMapper, post(urlPathTemplate("/job/{name}/enable"))
            .withPathParam("name", name)
            .configurer()
        )

    /**
     * Construct a stub for the operation postJobLastBuildStop.
     *
     * @param name path parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PostJobLastBuildStopStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun postJobLastBuildStop(name: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): PostJobLastBuildStopStubBuilder =
        PostJobLastBuildStopStubBuilder(objectMapper, post(urlPathTemplate("/job/{name}/lastBuild/stop"))
            .withPathParam("name", name)
            .configurer()
        )

    /**
     * Construct a stub for the operation postViewConfig.
     *
     * @param name path parameter name pattern.
     * @param configurer configurer for the [MappingBuilder], allowing for arbitrary changes.
     * @return A [PostViewConfigStubBuilder] to configure the response, and the final [MappingBuilder].
     */
    fun postViewConfig(name: StringValuePattern, configurer: MappingBuilder.() -> MappingBuilder = { this }): PostViewConfigStubBuilder =
        PostViewConfigStubBuilder(objectMapper, post(urlPathTemplate("/view/{name}/config.xml"))
            .withPathParam("name", name)
            .configurer()
        )
}
