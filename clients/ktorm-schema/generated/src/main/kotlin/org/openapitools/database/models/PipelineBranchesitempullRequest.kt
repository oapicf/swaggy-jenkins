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
 * @param links 
 * @param author 
 * @param id 
 * @param title 
 * @param url 
 * @param propertyClass 
 */
object PipelineBranchesitempullRequests : BaseTable<PipelineBranchesitempullRequest>("PipelineBranchesitempullRequest") {
    val links = long("_links") /* null */
    val author = text("author") /* null */
    val id = text("id") /* null */
    val title = text("title") /* null */
    val url = text("url") /* null */
    val propertyClass = text("_class") /* null */

    /**
     * Create an entity of type PipelineBranchesitempullRequest from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = PipelineBranchesitempullRequest(
        links = PipelineBranchesitempullRequestlinkss.createEntity(row, withReferences) /* PipelineBranchesitempullRequestlinks? */,
        author = row[author]  /* kotlin.String? */,
        id = row[id]  /* kotlin.String? */,
        title = row[title]  /* kotlin.String? */,
        url = row[url]  /* kotlin.String? */,
        propertyClass = row[propertyClass]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type PipelineBranchesitempullRequest to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = PipelineBranchesitempullRequest()
    * database.update(PipelineBranchesitempullRequests, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: PipelineBranchesitempullRequest) {
        this.apply {
            set(PipelineBranchesitempullRequests.links, entity.links)
            set(PipelineBranchesitempullRequests.author, entity.author)
            set(PipelineBranchesitempullRequests.id, entity.id)
            set(PipelineBranchesitempullRequests.title, entity.title)
            set(PipelineBranchesitempullRequests.url, entity.url)
            set(PipelineBranchesitempullRequests.propertyClass, entity.propertyClass)
        }
    }

}


