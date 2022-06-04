/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.5.1-pre.0
* Contact: blah@cliffano.com
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
 * @param id 
 * @param result 
 * @param startTime 
 */
object GenericResources : BaseTable<GenericResource>("GenericResource") {
    val propertyClass = text("_class") /* null */
    val displayName = text("displayName") /* null */
    val durationInMillis = int("durationInMillis") /* null */
    val id = text("id") /* null */
    val result = text("result") /* null */
    val startTime = text("startTime") /* null */

    /**
     * Create an entity of type GenericResource from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = GenericResource(
        propertyClass = row[propertyClass]  /* kotlin.String? */,
        displayName = row[displayName]  /* kotlin.String? */,
        durationInMillis = row[durationInMillis]  /* kotlin.Int? */,
        id = row[id]  /* kotlin.String? */,
        result = row[result]  /* kotlin.String? */,
        startTime = row[startTime]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type GenericResource to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = GenericResource()
    * database.update(GenericResources, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: GenericResource) {
        this.apply {
            set(GenericResources.propertyClass, entity.propertyClass)
            set(GenericResources.displayName, entity.displayName)
            set(GenericResources.durationInMillis, entity.durationInMillis)
            set(GenericResources.id, entity.id)
            set(GenericResources.result, entity.result)
            set(GenericResources.startTime, entity.startTime)
        }
    }

}


