package org.openapitools.api

import org.junit.jupiter.api.Test
import org.springframework.http.ResponseEntity

class CreateItemApiTest {

    private val api: CreateItemApiController = CreateItemApiController()

    /**
     * To test CreateItemApiController.postCreateItem
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun postCreateItemTest() {
        val name:kotlin.String = TODO()
        val from:kotlin.String? = TODO()
        val mode:kotlin.String? = TODO()
        val jenkinsCrumb:kotlin.String? = TODO()
        val contentType:kotlin.String? = TODO()
        val body:kotlin.String? = TODO()
        val response: ResponseEntity<Unit> = api.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body)

        // TODO: test validations
    }

}
