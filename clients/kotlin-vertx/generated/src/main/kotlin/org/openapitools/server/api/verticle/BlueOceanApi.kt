package org.openapitools.server.api.verticle

import org.openapitools.server.api.model.BranchImpl
import org.openapitools.server.api.model.FavoriteImpl
import org.openapitools.server.api.model.GithubOrganization
import org.openapitools.server.api.model.GithubScm
import org.openapitools.server.api.model.MultibranchPipeline
import org.openapitools.server.api.model.Organisation
import org.openapitools.server.api.model.Pipeline
import org.openapitools.server.api.model.PipelineActivity
import org.openapitools.server.api.model.PipelineFolderImpl
import org.openapitools.server.api.model.PipelineImpl
import org.openapitools.server.api.model.PipelineRun
import org.openapitools.server.api.model.PipelineRunNode
import org.openapitools.server.api.model.PipelineStepImpl
import org.openapitools.server.api.model.QueueItemImpl
import org.openapitools.server.api.model.User
import io.vertx.core.Vertx
import io.vertx.core.json.JsonObject
import io.vertx.core.json.JsonArray
import com.github.wooyme.openapi.Response
import io.vertx.ext.web.api.OperationRequest
import io.vertx.kotlin.ext.web.api.contract.openapi3.OpenAPI3RouterFactory
import io.vertx.serviceproxy.ServiceBinder
import io.vertx.ext.web.handler.CookieHandler
import io.vertx.ext.web.handler.SessionHandler
import io.vertx.ext.web.sstore.LocalSessionStore
import java.util.List
import java.util.Map


interface BlueOceanApi  {
    fun init(vertx:Vertx,config:JsonObject)
    /* deletePipelineQueueItem
     *  */
    suspend fun deletePipelineQueueItem(organization:kotlin.String?,pipeline:kotlin.String?,queue:kotlin.String?,context:OperationRequest):Response<Void>
    /* getAuthenticatedUser
     *  */
    suspend fun getAuthenticatedUser(organization:kotlin.String?,context:OperationRequest):Response<User>
    /* getClasses
     *  */
    suspend fun getClasses(propertyClass:kotlin.String?,context:OperationRequest):Response<kotlin.String>
    /* getJsonWebKey
     *  */
    suspend fun getJsonWebKey(key:kotlin.Int?,context:OperationRequest):Response<kotlin.String>
    /* getJsonWebToken
     *  */
    suspend fun getJsonWebToken(expiryTimeInMins:kotlin.Int?,maxExpiryTimeInMins:kotlin.Int?,context:OperationRequest):Response<kotlin.String>
    /* getOrganisation
     *  */
    suspend fun getOrganisation(organization:kotlin.String?,context:OperationRequest):Response<Organisation>
    /* getOrganisations
     *  */
    suspend fun getOrganisations(context:OperationRequest):Response<kotlin.Array<Organisation>>
    /* getPipeline
     *  */
    suspend fun getPipeline(organization:kotlin.String?,pipeline:kotlin.String?,context:OperationRequest):Response<Pipeline>
    /* getPipelineActivities
     *  */
    suspend fun getPipelineActivities(organization:kotlin.String?,pipeline:kotlin.String?,context:OperationRequest):Response<kotlin.Array<PipelineActivity>>
    /* getPipelineBranch
     *  */
    suspend fun getPipelineBranch(organization:kotlin.String?,pipeline:kotlin.String?,branch:kotlin.String?,context:OperationRequest):Response<BranchImpl>
    /* getPipelineBranchRun
     *  */
    suspend fun getPipelineBranchRun(organization:kotlin.String?,pipeline:kotlin.String?,branch:kotlin.String?,run:kotlin.String?,context:OperationRequest):Response<PipelineRun>
    /* getPipelineBranches
     *  */
    suspend fun getPipelineBranches(organization:kotlin.String?,pipeline:kotlin.String?,context:OperationRequest):Response<MultibranchPipeline>
    /* getPipelineFolder
     *  */
    suspend fun getPipelineFolder(organization:kotlin.String?,folder:kotlin.String?,context:OperationRequest):Response<PipelineFolderImpl>
    /* getPipelineFolderPipeline
     *  */
    suspend fun getPipelineFolderPipeline(organization:kotlin.String?,pipeline:kotlin.String?,folder:kotlin.String?,context:OperationRequest):Response<PipelineImpl>
    /* getPipelineQueue
     *  */
    suspend fun getPipelineQueue(organization:kotlin.String?,pipeline:kotlin.String?,context:OperationRequest):Response<kotlin.Array<QueueItemImpl>>
    /* getPipelineRun
     *  */
    suspend fun getPipelineRun(organization:kotlin.String?,pipeline:kotlin.String?,run:kotlin.String?,context:OperationRequest):Response<PipelineRun>
    /* getPipelineRunLog
     *  */
    suspend fun getPipelineRunLog(organization:kotlin.String?,pipeline:kotlin.String?,run:kotlin.String?,start:kotlin.Int?,download:kotlin.Boolean?,context:OperationRequest):Response<kotlin.String>
    /* getPipelineRunNode
     *  */
    suspend fun getPipelineRunNode(organization:kotlin.String?,pipeline:kotlin.String?,run:kotlin.String?,node:kotlin.String?,context:OperationRequest):Response<PipelineRunNode>
    /* getPipelineRunNodeStep
     *  */
    suspend fun getPipelineRunNodeStep(organization:kotlin.String?,pipeline:kotlin.String?,run:kotlin.String?,node:kotlin.String?,step:kotlin.String?,context:OperationRequest):Response<PipelineStepImpl>
    /* getPipelineRunNodeStepLog
     *  */
    suspend fun getPipelineRunNodeStepLog(organization:kotlin.String?,pipeline:kotlin.String?,run:kotlin.String?,node:kotlin.String?,step:kotlin.String?,context:OperationRequest):Response<kotlin.String>
    /* getPipelineRunNodeSteps
     *  */
    suspend fun getPipelineRunNodeSteps(organization:kotlin.String?,pipeline:kotlin.String?,run:kotlin.String?,node:kotlin.String?,context:OperationRequest):Response<kotlin.Array<PipelineStepImpl>>
    /* getPipelineRunNodes
     *  */
    suspend fun getPipelineRunNodes(organization:kotlin.String?,pipeline:kotlin.String?,run:kotlin.String?,context:OperationRequest):Response<kotlin.Array<PipelineRunNode>>
    /* getPipelineRuns
     *  */
    suspend fun getPipelineRuns(organization:kotlin.String?,pipeline:kotlin.String?,context:OperationRequest):Response<kotlin.Array<PipelineRun>>
    /* getPipelines
     *  */
    suspend fun getPipelines(organization:kotlin.String?,context:OperationRequest):Response<kotlin.Array<Pipeline>>
    /* getSCM
     *  */
    suspend fun getSCM(organization:kotlin.String?,scm:kotlin.String?,context:OperationRequest):Response<GithubScm>
    /* getSCMOrganisationRepositories
     *  */
    suspend fun getSCMOrganisationRepositories(organization:kotlin.String?,scm:kotlin.String?,scmOrganisation:kotlin.String?,credentialId:kotlin.String?,pageSize:kotlin.Int?,pageNumber:kotlin.Int?,context:OperationRequest):Response<kotlin.Array<GithubOrganization>>
    /* getSCMOrganisationRepository
     *  */
    suspend fun getSCMOrganisationRepository(organization:kotlin.String?,scm:kotlin.String?,scmOrganisation:kotlin.String?,repository:kotlin.String?,credentialId:kotlin.String?,context:OperationRequest):Response<kotlin.Array<GithubOrganization>>
    /* getSCMOrganisations
     *  */
    suspend fun getSCMOrganisations(organization:kotlin.String?,scm:kotlin.String?,credentialId:kotlin.String?,context:OperationRequest):Response<kotlin.Array<GithubOrganization>>
    /* getUser
     *  */
    suspend fun getUser(organization:kotlin.String?,user:kotlin.String?,context:OperationRequest):Response<User>
    /* getUserFavorites
     *  */
    suspend fun getUserFavorites(user:kotlin.String?,context:OperationRequest):Response<kotlin.Array<FavoriteImpl>>
    /* getUsers
     *  */
    suspend fun getUsers(organization:kotlin.String?,context:OperationRequest):Response<User>
    /* postPipelineRun
     *  */
    suspend fun postPipelineRun(organization:kotlin.String?,pipeline:kotlin.String?,run:kotlin.String?,context:OperationRequest):Response<QueueItemImpl>
    /* postPipelineRuns
     *  */
    suspend fun postPipelineRuns(organization:kotlin.String?,pipeline:kotlin.String?,context:OperationRequest):Response<QueueItemImpl>
    /* putPipelineFavorite
     *  */
    suspend fun putPipelineFavorite(organization:kotlin.String?,pipeline:kotlin.String?,body:kotlin.Boolean?,context:OperationRequest):Response<FavoriteImpl>
    /* putPipelineRun
     *  */
    suspend fun putPipelineRun(organization:kotlin.String?,pipeline:kotlin.String?,run:kotlin.String?,blocking:kotlin.String?,timeOutInSecs:kotlin.Int?,context:OperationRequest):Response<PipelineRun>
    /* search
     *  */
    suspend fun search(q:kotlin.String?,context:OperationRequest):Response<kotlin.String>
    /* searchClasses
     *  */
    suspend fun searchClasses(q:kotlin.String?,context:OperationRequest):Response<kotlin.String>
    companion object {
        const val address = "BlueOceanApi-service"
        suspend fun createRouterFactory(vertx: Vertx,path:String): io.vertx.ext.web.api.contract.openapi3.OpenAPI3RouterFactory {
            val routerFactory = OpenAPI3RouterFactory.createAwait(vertx,path)
            routerFactory.addGlobalHandler(CookieHandler.create())
            routerFactory.addGlobalHandler(SessionHandler.create(LocalSessionStore.create(vertx)))
            routerFactory.setExtraOperationContextPayloadMapper{
                JsonObject().put("files",JsonArray(it.fileUploads().map { it.uploadedFileName() }))
            }
            val opf = routerFactory::class.java.getDeclaredField("operations")
            opf.isAccessible = true
            val operations = opf.get(routerFactory) as Map<String, Any>
            for (m in BlueOceanApi::class.java.methods) {
                val methodName = m.name
                val op = operations[methodName]
                if (op != null) {
                    val method = op::class.java.getDeclaredMethod("mountRouteToService",String::class.java,String::class.java)
                    method.isAccessible = true
                    method.invoke(op,address,methodName)
                }
            }
            routerFactory.mountServiceInterface(BlueOceanApi::class.java, address)
            return routerFactory
        }
    }
}
