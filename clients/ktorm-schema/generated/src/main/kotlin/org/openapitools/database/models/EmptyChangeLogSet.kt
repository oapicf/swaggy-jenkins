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
 * @param kind 
 */
object EmptyChangeLogSets : BaseTable<EmptyChangeLogSet>("EmptyChangeLogSet") {
    val propertyClass = text("_class") /* null */
    val kind = text("kind") /* null */

    /**
     * Create an entity of type EmptyChangeLogSet from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = EmptyChangeLogSet(
        propertyClass = row[propertyClass]  /* kotlin.String? */,
        kind = row[kind]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type EmptyChangeLogSet to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = EmptyChangeLogSet()
    * database.update(EmptyChangeLogSets, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: EmptyChangeLogSet) {
        this.apply {
            set(EmptyChangeLogSets.propertyClass, entity.propertyClass)
            set(EmptyChangeLogSets.kind, entity.kind)
        }
    }

}


