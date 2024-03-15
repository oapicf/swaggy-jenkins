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
 * @param fullName 
 * @param name 
 * @param organization 
 * @param numberOfFolders 
 * @param numberOfPipelines 
 */
object PipelineFolderImpls : BaseTable<PipelineFolderImpl>("PipelineFolderImpl") {
    val propertyClass = text("_class") /* null */
    val displayName = text("displayName") /* null */
    val fullName = text("fullName") /* null */
    val name = text("name") /* null */
    val organization = text("organization") /* null */
    val numberOfFolders = int("numberOfFolders") /* null */
    val numberOfPipelines = int("numberOfPipelines") /* null */

    /**
     * Create an entity of type PipelineFolderImpl from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = PipelineFolderImpl(
        propertyClass = row[propertyClass]  /* kotlin.String? */,
        displayName = row[displayName]  /* kotlin.String? */,
        fullName = row[fullName]  /* kotlin.String? */,
        name = row[name]  /* kotlin.String? */,
        organization = row[organization]  /* kotlin.String? */,
        numberOfFolders = row[numberOfFolders]  /* kotlin.Int? */,
        numberOfPipelines = row[numberOfPipelines]  /* kotlin.Int? */
    )

    /**
    * Assign all the columns from the entity of type PipelineFolderImpl to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = PipelineFolderImpl()
    * database.update(PipelineFolderImpls, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: PipelineFolderImpl) {
        this.apply {
            set(PipelineFolderImpls.propertyClass, entity.propertyClass)
            set(PipelineFolderImpls.displayName, entity.displayName)
            set(PipelineFolderImpls.fullName, entity.fullName)
            set(PipelineFolderImpls.name, entity.name)
            set(PipelineFolderImpls.organization, entity.organization)
            set(PipelineFolderImpls.numberOfFolders, entity.numberOfFolders)
            set(PipelineFolderImpls.numberOfPipelines, entity.numberOfPipelines)
        }
    }

}


