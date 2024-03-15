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
 * @param actions 
 * @param blocked 
 * @param buildable 
 * @param id 
 * @param inQueueSince 
 * @param params 
 * @param stuck 
 * @param task 
 * @param url 
 * @param why 
 * @param cancelled 
 * @param executable 
 */
object QueueLeftItems : BaseTable<QueueLeftItem>("QueueLeftItem") {
    val propertyClass = text("_class") /* null */
    val blocked = boolean("blocked") /* null */
    val buildable = boolean("buildable") /* null */
    val id = int("id") /* null */
    val inQueueSince = int("inQueueSince") /* null */
    val params = text("params") /* null */
    val stuck = boolean("stuck") /* null */
    val task = long("task") /* null */
    val url = text("url") /* null */
    val why = text("why") /* null */
    val cancelled = boolean("cancelled") /* null */
    val executable = long("executable") /* null */

    /**
     * Create an entity of type QueueLeftItem from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = QueueLeftItem(
        propertyClass = row[propertyClass]  /* kotlin.String? */,
        actions = emptyList() /* kotlin.Array<CauseAction>? */,
        blocked = row[blocked]  /* kotlin.Boolean? */,
        buildable = row[buildable]  /* kotlin.Boolean? */,
        id = row[id]  /* kotlin.Int? */,
        inQueueSince = row[inQueueSince]  /* kotlin.Int? */,
        params = row[params]  /* kotlin.String? */,
        stuck = row[stuck]  /* kotlin.Boolean? */,
        task = FreeStyleProjects.createEntity(row, withReferences) /* FreeStyleProject? */,
        url = row[url]  /* kotlin.String? */,
        why = row[why]  /* kotlin.String? */,
        cancelled = row[cancelled]  /* kotlin.Boolean? */,
        executable = FreeStyleBuilds.createEntity(row, withReferences) /* FreeStyleBuild? */
    )

    /**
    * Assign all the columns from the entity of type QueueLeftItem to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = QueueLeftItem()
    * database.update(QueueLeftItems, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: QueueLeftItem) {
        this.apply {
            set(QueueLeftItems.propertyClass, entity.propertyClass)
            set(QueueLeftItems.blocked, entity.blocked)
            set(QueueLeftItems.buildable, entity.buildable)
            set(QueueLeftItems.id, entity.id)
            set(QueueLeftItems.inQueueSince, entity.inQueueSince)
            set(QueueLeftItems.params, entity.params)
            set(QueueLeftItems.stuck, entity.stuck)
            set(QueueLeftItems.task, entity.task)
            set(QueueLeftItems.url, entity.url)
            set(QueueLeftItems.why, entity.why)
            set(QueueLeftItems.cancelled, entity.cancelled)
            set(QueueLeftItems.executable, entity.executable)
        }
    }

}


object QueueLeftItemCauseAction : BaseTable<Pair<kotlin.Long, kotlin.Long>>("QueueLeftItemCauseAction") {
    val queueLeftItem = long("queueLeftItem")
    val causeAction = long("causeAction")

    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean): Pair<kotlin.Long, kotlin.Long> =
        Pair(row[queueLeftItem] ?: 0, row[causeAction] ?: 0)

    fun AssignmentsBuilder.assignFrom(entity: Pair<kotlin.Long, kotlin.Long>) {
        this.apply {
            set(QueueLeftItemCauseAction.queueLeftItem, entity.first)
            set(QueueLeftItemCauseAction.causeAction, entity.second)
        }
    }

}

