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
 * @param shortDescription 
 * @param userId 
 * @param userName 
 */
object CauseUserIdCauses : BaseTable<CauseUserIdCause>("CauseUserIdCause") {
    val propertyClass = text("_class") /* null */
    val shortDescription = text("shortDescription") /* null */
    val userId = text("userId") /* null */
    val userName = text("userName") /* null */

    /**
     * Create an entity of type CauseUserIdCause from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = CauseUserIdCause(
        propertyClass = row[propertyClass]  /* kotlin.String? */,
        shortDescription = row[shortDescription]  /* kotlin.String? */,
        userId = row[userId]  /* kotlin.String? */,
        userName = row[userName]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type CauseUserIdCause to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = CauseUserIdCause()
    * database.update(CauseUserIdCauses, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: CauseUserIdCause) {
        this.apply {
            set(CauseUserIdCauses.propertyClass, entity.propertyClass)
            set(CauseUserIdCauses.shortDescription, entity.shortDescription)
            set(CauseUserIdCauses.userId, entity.userId)
            set(CauseUserIdCauses.userName, entity.userName)
        }
    }

}


