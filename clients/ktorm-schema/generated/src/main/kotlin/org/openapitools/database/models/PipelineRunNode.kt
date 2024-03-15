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
 * @param displayName 
 * @param durationInMillis 
 * @param edges 
 * @param id 
 * @param result 
 * @param startTime 
 * @param state 
 */
object PipelineRunNodes : BaseTable<PipelineRunNode>("PipelineRunNode") {
    val propertyClass = text("_class") /* null */
    val displayName = text("displayName") /* null */
    val durationInMillis = int("durationInMillis") /* null */
    val id = text("id") /* null */
    val result = text("result") /* null */
    val startTime = text("startTime") /* null */
    val state = text("state") /* null */

    /**
     * Create an entity of type PipelineRunNode from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = PipelineRunNode(
        propertyClass = row[propertyClass]  /* kotlin.String? */,
        displayName = row[displayName]  /* kotlin.String? */,
        durationInMillis = row[durationInMillis]  /* kotlin.Int? */,
        edges = emptyList() /* kotlin.Array<PipelineRunNodeedges>? */,
        id = row[id]  /* kotlin.String? */,
        result = row[result]  /* kotlin.String? */,
        startTime = row[startTime]  /* kotlin.String? */,
        state = row[state]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type PipelineRunNode to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = PipelineRunNode()
    * database.update(PipelineRunNodes, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: PipelineRunNode) {
        this.apply {
            set(PipelineRunNodes.propertyClass, entity.propertyClass)
            set(PipelineRunNodes.displayName, entity.displayName)
            set(PipelineRunNodes.durationInMillis, entity.durationInMillis)
            set(PipelineRunNodes.id, entity.id)
            set(PipelineRunNodes.result, entity.result)
            set(PipelineRunNodes.startTime, entity.startTime)
            set(PipelineRunNodes.state, entity.state)
        }
    }

}


object PipelineRunNodePipelineRunNodeedges : BaseTable<Pair<kotlin.Long, kotlin.Long>>("PipelineRunNodePipelineRunNodeedges") {
    val pipelineRunNode = long("pipelineRunNode")
    val pipelineRunNodeedges = long("pipelineRunNodeedges")

    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean): Pair<kotlin.Long, kotlin.Long> =
        Pair(row[pipelineRunNode] ?: 0, row[pipelineRunNodeedges] ?: 0)

    fun AssignmentsBuilder.assignFrom(entity: Pair<kotlin.Long, kotlin.Long>) {
        this.apply {
            set(PipelineRunNodePipelineRunNodeedges.pipelineRunNode, entity.first)
            set(PipelineRunNodePipelineRunNodeedges.pipelineRunNodeedges, entity.second)
        }
    }

}

