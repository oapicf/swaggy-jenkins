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
 * @param admin 
 * @param push 
 * @param pull 
 * @param propertyClass 
 */
object GithubRepositorypermissionss : BaseTable<GithubRepositorypermissions>("GithubRepositorypermissions") {
    val admin = boolean("admin") /* null */
    val push = boolean("push") /* null */
    val pull = boolean("pull") /* null */
    val propertyClass = text("_class") /* null */

    /**
     * Create an entity of type GithubRepositorypermissions from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = GithubRepositorypermissions(
        admin = row[admin]  /* kotlin.Boolean? */,
        push = row[push]  /* kotlin.Boolean? */,
        pull = row[pull]  /* kotlin.Boolean? */,
        propertyClass = row[propertyClass]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type GithubRepositorypermissions to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = GithubRepositorypermissions()
    * database.update(GithubRepositorypermissionss, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: GithubRepositorypermissions) {
        this.apply {
            set(GithubRepositorypermissionss.admin, entity.admin)
            set(GithubRepositorypermissionss.push, entity.push)
            set(GithubRepositorypermissionss.pull, entity.pull)
            set(GithubRepositorypermissionss.propertyClass, entity.propertyClass)
        }
    }

}


