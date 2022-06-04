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
 * @param links 
 * @param defaultBranch 
 * @param description 
 * @param name 
 * @param permissions 
 * @param private 
 * @param fullName 
 */
object GithubRepositorys : BaseTable<GithubRepository>("GithubRepository") {
    val propertyClass = text("_class") /* null */
    val links = long("_links") /* null */
    val defaultBranch = text("defaultBranch") /* null */
    val description = text("description") /* null */
    val name = text("name") /* null */
    val permissions = long("permissions") /* null */
    val private = boolean("private") /* null */
    val fullName = text("fullName") /* null */

    /**
     * Create an entity of type GithubRepository from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = GithubRepository(
        propertyClass = row[propertyClass]  /* kotlin.String? */,
        links = GithubRepositorylinkss.createEntity(row, withReferences) /* GithubRepositorylinks? */,
        defaultBranch = row[defaultBranch]  /* kotlin.String? */,
        description = row[description]  /* kotlin.String? */,
        name = row[name]  /* kotlin.String? */,
        permissions = GithubRepositorypermissionss.createEntity(row, withReferences) /* GithubRepositorypermissions? */,
        private = row[private]  /* kotlin.Boolean? */,
        fullName = row[fullName]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type GithubRepository to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = GithubRepository()
    * database.update(GithubRepositorys, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: GithubRepository) {
        this.apply {
            set(GithubRepositorys.propertyClass, entity.propertyClass)
            set(GithubRepositorys.links, entity.links)
            set(GithubRepositorys.defaultBranch, entity.defaultBranch)
            set(GithubRepositorys.description, entity.description)
            set(GithubRepositorys.name, entity.name)
            set(GithubRepositorys.permissions, entity.permissions)
            set(GithubRepositorys.private, entity.private)
            set(GithubRepositorys.fullName, entity.fullName)
        }
    }

}


