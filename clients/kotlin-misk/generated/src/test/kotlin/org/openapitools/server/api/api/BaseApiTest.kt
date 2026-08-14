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
import org.openapitools.server.api.model.DefaultCrumbIssuer

@MiskTest(startService = true)
internal class BaseApiTest {

    @Suppress("unused")
    @MiskTestModule
    private val module = MiskTestModule()

    @Inject private lateinit var baseApi: BaseApiAction

    /**
     * To test BaseApiAction.getCrumb
     */
    @Test
    fun `should handle getCrumb`() {
        val response: DefaultCrumbIssuer = baseApi.getCrumb()
    }
}
