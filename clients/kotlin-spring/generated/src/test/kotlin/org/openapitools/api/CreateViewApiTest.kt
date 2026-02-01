package org.openapitools.api

import org.junit.jupiter.api.Test
import org.springframework.http.ResponseEntity

class CreateViewApiTest {

    private val api: CreateViewApiController = CreateViewApiController()

    /**
     * To test CreateViewApiController.postCreateView
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun postCreateViewTest() {
        val name: kotlin.String = TODO()
        val jenkinsCrumb: kotlin.String? = TODO()
        val contentType: kotlin.String? = TODO()
        val body: kotlin.String? = TODO()
        
        val response: ResponseEntity<Unit> = api.postCreateView(name, jenkinsCrumb, contentType, body)

        // TODO: test validations
    }
}
