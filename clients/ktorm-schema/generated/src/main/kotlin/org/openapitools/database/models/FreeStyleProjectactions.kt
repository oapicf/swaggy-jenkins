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
 */
object FreeStyleProjectactionss : BaseTable<FreeStyleProjectactions>("FreeStyleProjectactions") {
    val propertyClass = text("_class") /* null */

    /**
     * Create an entity of type FreeStyleProjectactions from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = FreeStyleProjectactions(
        propertyClass = row[propertyClass]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type FreeStyleProjectactions to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = FreeStyleProjectactions()
    * database.update(FreeStyleProjectactionss, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: FreeStyleProjectactions) {
        this.apply {
            set(FreeStyleProjectactionss.propertyClass, entity.propertyClass)
        }
    }

}


