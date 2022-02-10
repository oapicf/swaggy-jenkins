package org.openapitools.api

import org.openapitools.model.ListView
import org.junit.jupiter.api.Test
import org.springframework.http.ResponseEntity

class ViewApiTest {

    private val api: ViewApiController = ViewApiController()

    /**
     * To test ViewApiController.getView
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getViewTest() {
        val name:kotlin.String = TODO()
        val response: ResponseEntity<ListView> = api.getView(name)

        // TODO: test validations
    }

    /**
     * To test ViewApiController.getViewConfig
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getViewConfigTest() {
        val name:kotlin.String = TODO()
        val response: ResponseEntity<kotlin.String> = api.getViewConfig(name)

        // TODO: test validations
    }

    /**
     * To test ViewApiController.postViewConfig
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun postViewConfigTest() {
        val name:kotlin.String = TODO()
        val body:kotlin.String = TODO()
        val jenkinsCrumb:kotlin.String? = TODO()
        val response: ResponseEntity<Unit> = api.postViewConfig(name, body, jenkinsCrumb)

        // TODO: test validations
    }

}
