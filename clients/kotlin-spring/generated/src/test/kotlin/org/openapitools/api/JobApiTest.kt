package org.openapitools.api

import org.openapitools.model.FreeStyleBuild
import org.openapitools.model.FreeStyleProject
import org.junit.jupiter.api.Test
import org.springframework.http.ResponseEntity

class JobApiTest {

    private val api: JobApiController = JobApiController()

    /**
     * To test JobApiController.getJob
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getJobTest() {
        val name: kotlin.String = TODO()
        
        val response: ResponseEntity<FreeStyleProject> = api.getJob(name)

        // TODO: test validations
    }

    /**
     * To test JobApiController.getJobConfig
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getJobConfigTest() {
        val name: kotlin.String = TODO()
        
        val response: ResponseEntity<kotlin.String> = api.getJobConfig(name)

        // TODO: test validations
    }

    /**
     * To test JobApiController.getJobLastBuild
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getJobLastBuildTest() {
        val name: kotlin.String = TODO()
        
        val response: ResponseEntity<FreeStyleBuild> = api.getJobLastBuild(name)

        // TODO: test validations
    }

    /**
     * To test JobApiController.getJobProgressiveText
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getJobProgressiveTextTest() {
        val name: kotlin.String = TODO()
        val number: kotlin.String = TODO()
        val start: kotlin.String = TODO()
        
        val response: ResponseEntity<Unit> = api.getJobProgressiveText(name, number, start)

        // TODO: test validations
    }

    /**
     * To test JobApiController.postJobBuild
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun postJobBuildTest() {
        val name: kotlin.String = TODO()
        val json: kotlin.String = TODO()
        val token: kotlin.String? = TODO()
        val jenkinsCrumb: kotlin.String? = TODO()
        
        val response: ResponseEntity<Unit> = api.postJobBuild(name, json, token, jenkinsCrumb)

        // TODO: test validations
    }

    /**
     * To test JobApiController.postJobConfig
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun postJobConfigTest() {
        val name: kotlin.String = TODO()
        val body: kotlin.String = TODO()
        val jenkinsCrumb: kotlin.String? = TODO()
        
        val response: ResponseEntity<Unit> = api.postJobConfig(name, body, jenkinsCrumb)

        // TODO: test validations
    }

    /**
     * To test JobApiController.postJobDelete
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun postJobDeleteTest() {
        val name: kotlin.String = TODO()
        val jenkinsCrumb: kotlin.String? = TODO()
        
        val response: ResponseEntity<Unit> = api.postJobDelete(name, jenkinsCrumb)

        // TODO: test validations
    }

    /**
     * To test JobApiController.postJobDisable
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun postJobDisableTest() {
        val name: kotlin.String = TODO()
        val jenkinsCrumb: kotlin.String? = TODO()
        
        val response: ResponseEntity<Unit> = api.postJobDisable(name, jenkinsCrumb)

        // TODO: test validations
    }

    /**
     * To test JobApiController.postJobEnable
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun postJobEnableTest() {
        val name: kotlin.String = TODO()
        val jenkinsCrumb: kotlin.String? = TODO()
        
        val response: ResponseEntity<Unit> = api.postJobEnable(name, jenkinsCrumb)

        // TODO: test validations
    }

    /**
     * To test JobApiController.postJobLastBuildStop
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun postJobLastBuildStopTest() {
        val name: kotlin.String = TODO()
        val jenkinsCrumb: kotlin.String? = TODO()
        
        val response: ResponseEntity<Unit> = api.postJobLastBuildStop(name, jenkinsCrumb)

        // TODO: test validations
    }
}
