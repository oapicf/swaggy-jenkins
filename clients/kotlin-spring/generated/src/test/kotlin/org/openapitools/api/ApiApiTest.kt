package org.openapitools.api

import org.openapitools.model.Hudson
import org.junit.jupiter.api.Test
import org.springframework.http.ResponseEntity

class ApiApiTest {

    private val api: ApiApiController = ApiApiController()

    /**
     * To test ApiApiController.getJenkins
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getJenkinsTest() {
        val response: ResponseEntity<Hudson> = api.getJenkins()

        // TODO: test validations
    }

    /**
     * To test ApiApiController.headJenkins
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun headJenkinsTest() {
        val response: ResponseEntity<Unit> = api.headJenkins()

        // TODO: test validations
    }

}
