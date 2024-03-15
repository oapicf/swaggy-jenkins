/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 2.0.1-pre.0
* Contact: blah+oapicf@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.database.models

import org.ktorm.dsl.*
import org.ktorm.schema.*
import org.ktorm.database.Database
import .*


/**
 * 
 * @param propertyClass 
 * @param items 
 */
object Queues : BaseTable<Queue>("Queue") {
    val propertyClass = text("_class") /* null */

    /**
     * Create an entity of type Queue from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = Queue(
        propertyClass = row[propertyClass]  /* kotlin.String? */,
        items = emptyList() /* kotlin.Array<QueueBlockedItem>? */
    )

    /**
    * Assign all the columns from the entity of type Queue to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = Queue()
    * database.update(Queues, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: Queue) {
        this.apply {
            set(Queues.propertyClass, entity.propertyClass)
        }
    }

}


object QueueQueueBlockedItem : BaseTable<Pair<kotlin.Long, kotlin.Long>>("QueueQueueBlockedItem") {
    val queue = long("queue")
    val queueBlockedItem = long("queueBlockedItem")

    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean): Pair<kotlin.Long, kotlin.Long> =
        Pair(row[queue] ?: 0, row[queueBlockedItem] ?: 0)

    fun AssignmentsBuilder.assignFrom(entity: Pair<kotlin.Long, kotlin.Long>) {
        this.apply {
            set(QueueQueueBlockedItem.queue, entity.first)
            set(QueueQueueBlockedItem.queueBlockedItem, entity.second)
        }
    }

}

