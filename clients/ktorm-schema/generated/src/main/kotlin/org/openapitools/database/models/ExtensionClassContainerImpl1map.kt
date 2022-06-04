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
 * @param ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl 
 * @param ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl 
 * @param propertyClass 
 */
object ExtensionClassContainerImpl1maps : BaseTable<ExtensionClassContainerImpl1map>("ExtensionClassContainerImpl1map") {
    val ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = long("iojenkinsblueoceanserviceembeddedrestPipelineImpl") /* null */
    val ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = long("iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl") /* null */
    val propertyClass = text("_class") /* null */

    /**
     * Create an entity of type ExtensionClassContainerImpl1map from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = ExtensionClassContainerImpl1map(
        ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = ExtensionClassImpls.createEntity(row, withReferences) /* ExtensionClassImpl? */,
        ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = ExtensionClassImpls.createEntity(row, withReferences) /* ExtensionClassImpl? */,
        propertyClass = row[propertyClass]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type ExtensionClassContainerImpl1map to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = ExtensionClassContainerImpl1map()
    * database.update(ExtensionClassContainerImpl1maps, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: ExtensionClassContainerImpl1map) {
        this.apply {
            set(ExtensionClassContainerImpl1maps.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, entity.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl)
            set(ExtensionClassContainerImpl1maps.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, entity.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl)
            set(ExtensionClassContainerImpl1maps.propertyClass, entity.propertyClass)
        }
    }

}


