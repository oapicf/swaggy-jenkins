package org.openapitools.api

import org.openapitools.model.DefaultCrumbIssuer
import org.junit.jupiter.api.Test
import org.springframework.http.ResponseEntity

class CrumbIssuerApiTest {

    private val api: CrumbIssuerApiController = CrumbIssuerApiController()

    /**
     * To test CrumbIssuerApiController.getCrumb
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getCrumbTest() {
        
        val response: ResponseEntity<DefaultCrumbIssuer> = api.getCrumb()

        // TODO: test validations
    }
}
