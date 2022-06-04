package org.openapitools.api

import org.openapitools.model.Queue
import org.junit.jupiter.api.Test
import org.springframework.http.ResponseEntity

class QueueApiTest {

    private val api: QueueApiController = QueueApiController()

    /**
     * To test QueueApiController.getQueue
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getQueueTest() {
        val response: ResponseEntity<Queue> = api.getQueue()

        // TODO: test validations
    }

    /**
     * To test QueueApiController.getQueueItem
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    fun getQueueItemTest() {
        val number: kotlin.String = TODO()
        val response: ResponseEntity<Queue> = api.getQueueItem(number)

        // TODO: test validations
    }
}
