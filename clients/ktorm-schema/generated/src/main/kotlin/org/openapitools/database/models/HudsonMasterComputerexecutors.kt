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
 * @param currentExecutable 
 * @param idle 
 * @param likelyStuck 
 * @param number 
 * @param progress 
 * @param propertyClass 
 */
object HudsonMasterComputerexecutorss : BaseTable<HudsonMasterComputerexecutors>("HudsonMasterComputerexecutors") {
    val currentExecutable = long("currentExecutable") /* null */
    val idle = boolean("idle") /* null */
    val likelyStuck = boolean("likelyStuck") /* null */
    val number = int("number") /* null */
    val progress = int("progress") /* null */
    val propertyClass = text("_class") /* null */

    /**
     * Create an entity of type HudsonMasterComputerexecutors from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = HudsonMasterComputerexecutors(
        currentExecutable = FreeStyleBuilds.createEntity(row, withReferences) /* FreeStyleBuild? */,
        idle = row[idle]  /* kotlin.Boolean? */,
        likelyStuck = row[likelyStuck]  /* kotlin.Boolean? */,
        number = row[number]  /* kotlin.Int? */,
        progress = row[progress]  /* kotlin.Int? */,
        propertyClass = row[propertyClass]  /* kotlin.String? */
    )

    /**
    * Assign all the columns from the entity of type HudsonMasterComputerexecutors to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = HudsonMasterComputerexecutors()
    * database.update(HudsonMasterComputerexecutorss, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: HudsonMasterComputerexecutors) {
        this.apply {
            set(HudsonMasterComputerexecutorss.currentExecutable, entity.currentExecutable)
            set(HudsonMasterComputerexecutorss.idle, entity.idle)
            set(HudsonMasterComputerexecutorss.likelyStuck, entity.likelyStuck)
            set(HudsonMasterComputerexecutorss.number, entity.number)
            set(HudsonMasterComputerexecutorss.progress, entity.progress)
            set(HudsonMasterComputerexecutorss.propertyClass, entity.propertyClass)
        }
    }

}


