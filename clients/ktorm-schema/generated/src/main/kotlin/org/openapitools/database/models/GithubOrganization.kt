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
 * @param links 
 * @param jenkinsOrganizationPipeline 
 * @param name 
 */
object GithubOrganizations : BaseTable<GithubOrganization>("GithubOrganization") {
    val propertyClass = text("_class") /* null */
    val links = long("_links") /* null */
    val jenkinsOrganizationPipeline = boolean("jenkinsOrganizationPipeline") /* null */
    val name = text("name") /* null */

    /**
     * Create an entity of type GithubOrganization from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = GithubOrganization(
        propertyClass = row[propertyClass]  /* kotlin.String? */,
        links = GithubOrganizationlinkss.createEntity(row, withReferences) /* GithubOrganizationlinks? */,
        jenkinsOrganizationPipeline = row[jenkinsOrganizationPipeline]  /* kotlin.Boolean? */,
        name = row[name]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type GithubOrganization to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = GithubOrganization()
    * database.update(GithubOrganizations, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: GithubOrganization) {
        this.apply {
            set(GithubOrganizations.propertyClass, entity.propertyClass)
            set(GithubOrganizations.links, entity.links)
            set(GithubOrganizations.jenkinsOrganizationPipeline, entity.jenkinsOrganizationPipeline)
            set(GithubOrganizations.name, entity.name)
        }
    }

}


