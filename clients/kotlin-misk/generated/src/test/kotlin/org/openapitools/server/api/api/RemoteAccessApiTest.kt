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
import org.openapitools.server.api.model.ComputerSet
import org.openapitools.server.api.model.FreeStyleBuild
import org.openapitools.server.api.model.FreeStyleProject
import org.openapitools.server.api.model.Hudson
import org.openapitools.server.api.model.ListView
import org.openapitools.server.api.model.Queue

@MiskTest(startService = true)
internal class RemoteAccessApiTest {

    @Suppress("unused")
    @MiskTestModule
    private val module = MiskTestModule()

    @Inject private lateinit var remoteAccessApi: RemoteAccessApiAction

    /**
     * To test RemoteAccessApiAction.getComputer
     */
    @Test
    fun `should handle getComputer`() {
        val depth = TODO()
        val response: ComputerSet = remoteAccessApi.getComputer(depth)
    }

    /**
     * To test RemoteAccessApiAction.getJenkins
     */
    @Test
    fun `should handle getJenkins`() {
        val response: Hudson = remoteAccessApi.getJenkins()
    }

    /**
     * To test RemoteAccessApiAction.getJob
     */
    @Test
    fun `should handle getJob`() {
        val name = TODO()
        val response: FreeStyleProject = remoteAccessApi.getJob(name)
    }

    /**
     * To test RemoteAccessApiAction.getJobConfig
     */
    @Test
    fun `should handle getJobConfig`() {
        val name = TODO()
        val response: kotlin.String = remoteAccessApi.getJobConfig(name)
    }

    /**
     * To test RemoteAccessApiAction.getJobLastBuild
     */
    @Test
    fun `should handle getJobLastBuild`() {
        val name = TODO()
        val response: FreeStyleBuild = remoteAccessApi.getJobLastBuild(name)
    }

    /**
     * To test RemoteAccessApiAction.getJobProgressiveText
     */
    @Test
    fun `should handle getJobProgressiveText`() {
        val name = TODO()
        val number = TODO()
        val start = TODO()
        val response = remoteAccessApi.getJobProgressiveText(name, number, start)
    }

    /**
     * To test RemoteAccessApiAction.getQueue
     */
    @Test
    fun `should handle getQueue`() {
        val response: Queue = remoteAccessApi.getQueue()
    }

    /**
     * To test RemoteAccessApiAction.getQueueItem
     */
    @Test
    fun `should handle getQueueItem`() {
        val number = TODO()
        val response: Queue = remoteAccessApi.getQueueItem(number)
    }

    /**
     * To test RemoteAccessApiAction.getView
     */
    @Test
    fun `should handle getView`() {
        val name = TODO()
        val response: ListView = remoteAccessApi.getView(name)
    }

    /**
     * To test RemoteAccessApiAction.getViewConfig
     */
    @Test
    fun `should handle getViewConfig`() {
        val name = TODO()
        val response: kotlin.String = remoteAccessApi.getViewConfig(name)
    }

    /**
     * To test RemoteAccessApiAction.headJenkins
     */
    @Test
    fun `should handle headJenkins`() {
        val response = remoteAccessApi.headJenkins()
    }

    /**
     * To test RemoteAccessApiAction.postCreateItem
     */
    @Test
    fun `should handle postCreateItem`() {
        val name = TODO()
        val from = TODO()
        val mode = TODO()
        val jenkinsCrumb = TODO()
        val contentType = TODO()
        val body = TODO()
        val response = remoteAccessApi.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body)
    }

    /**
     * To test RemoteAccessApiAction.postCreateView
     */
    @Test
    fun `should handle postCreateView`() {
        val name = TODO()
        val jenkinsCrumb = TODO()
        val contentType = TODO()
        val body = TODO()
        val response = remoteAccessApi.postCreateView(name, jenkinsCrumb, contentType, body)
    }

    /**
     * To test RemoteAccessApiAction.postJobBuild
     */
    @Test
    fun `should handle postJobBuild`() {
        val name = TODO()
        val json = TODO()
        val token = TODO()
        val jenkinsCrumb = TODO()
        val response = remoteAccessApi.postJobBuild(name, json, token, jenkinsCrumb)
    }

    /**
     * To test RemoteAccessApiAction.postJobConfig
     */
    @Test
    fun `should handle postJobConfig`() {
        val name = TODO()
        val body = TODO()
        val jenkinsCrumb = TODO()
        val response = remoteAccessApi.postJobConfig(name, body, jenkinsCrumb)
    }

    /**
     * To test RemoteAccessApiAction.postJobDelete
     */
    @Test
    fun `should handle postJobDelete`() {
        val name = TODO()
        val jenkinsCrumb = TODO()
        val response = remoteAccessApi.postJobDelete(name, jenkinsCrumb)
    }

    /**
     * To test RemoteAccessApiAction.postJobDisable
     */
    @Test
    fun `should handle postJobDisable`() {
        val name = TODO()
        val jenkinsCrumb = TODO()
        val response = remoteAccessApi.postJobDisable(name, jenkinsCrumb)
    }

    /**
     * To test RemoteAccessApiAction.postJobEnable
     */
    @Test
    fun `should handle postJobEnable`() {
        val name = TODO()
        val jenkinsCrumb = TODO()
        val response = remoteAccessApi.postJobEnable(name, jenkinsCrumb)
    }

    /**
     * To test RemoteAccessApiAction.postJobLastBuildStop
     */
    @Test
    fun `should handle postJobLastBuildStop`() {
        val name = TODO()
        val jenkinsCrumb = TODO()
        val response = remoteAccessApi.postJobLastBuildStop(name, jenkinsCrumb)
    }

    /**
     * To test RemoteAccessApiAction.postViewConfig
     */
    @Test
    fun `should handle postViewConfig`() {
        val name = TODO()
        val body = TODO()
        val jenkinsCrumb = TODO()
        val response = remoteAccessApi.postViewConfig(name, body, jenkinsCrumb)
    }
}
