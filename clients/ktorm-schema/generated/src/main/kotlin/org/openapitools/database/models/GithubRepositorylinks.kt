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
 * @param self 
 * @param propertyClass 
 */
object GithubRepositorylinkss : BaseTable<GithubRepositorylinks>("GithubRepositorylinks") {
    val self = long("self") /* null */
    val propertyClass = text("_class") /* null */

    /**
     * Create an entity of type GithubRepositorylinks from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = GithubRepositorylinks(
        self = Links.createEntity(row, withReferences) /* Link? */,
        propertyClass = row[propertyClass]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type GithubRepositorylinks to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = GithubRepositorylinks()
    * database.update(GithubRepositorylinkss, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: GithubRepositorylinks) {
        this.apply {
            set(GithubRepositorylinkss.self, entity.self)
            set(GithubRepositorylinkss.propertyClass, entity.propertyClass)
        }
    }

}


