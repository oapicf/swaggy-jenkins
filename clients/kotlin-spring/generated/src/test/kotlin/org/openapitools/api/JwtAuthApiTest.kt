package org.openapitools.api

import org.junit.jupiter.api.Test
import org.springframework.http.ResponseEntity

class JwtAuthApiTest {

    private val api: JwtAuthApiController = JwtAuthApiController()

    /**
     * To test JwtAuthApiController.getJsonWebKey
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getJsonWebKeyTest() {
        val key: kotlin.Int = TODO()
        
        val response: ResponseEntity<kotlin.String> = api.getJsonWebKey(key)

        // TODO: test validations
    }

    /**
     * To test JwtAuthApiController.getJsonWebToken
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getJsonWebTokenTest() {
        val expiryTimeInMins: kotlin.Int? = TODO()
        val maxExpiryTimeInMins: kotlin.Int? = TODO()
        
        val response: ResponseEntity<kotlin.String> = api.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)

        // TODO: test validations
    }
}
