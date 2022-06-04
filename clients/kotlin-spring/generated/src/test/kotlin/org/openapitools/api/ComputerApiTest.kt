package org.openapitools.api

import org.openapitools.model.ComputerSet
import org.junit.jupiter.api.Test
import org.springframework.http.ResponseEntity

class ComputerApiTest {

    private val api: ComputerApiController = ComputerApiController()

    /**
     * To test ComputerApiController.getComputer
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getComputerTest() {
        val depth: kotlin.Int = TODO()
        val response: ResponseEntity<ComputerSet> = api.getComputer(depth)

        // TODO: test validations
    }
}
