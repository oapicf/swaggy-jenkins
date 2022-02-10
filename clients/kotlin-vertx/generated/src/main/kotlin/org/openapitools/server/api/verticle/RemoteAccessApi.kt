package org.openapitools.server.api.verticle

import org.openapitools.server.api.model.ComputerSet
import org.openapitools.server.api.model.FreeStyleBuild
import org.openapitools.server.api.model.FreeStyleProject
import org.openapitools.server.api.model.Hudson
import org.openapitools.server.api.model.ListView
import org.openapitools.server.api.model.Queue
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


interface RemoteAccessApi  {
    fun init(vertx:Vertx,config:JsonObject)
    /* getComputer
     *  */
    suspend fun getComputer(depth:kotlin.Int?,context:OperationRequest):Response<ComputerSet>
    /* getJenkins
     *  */
    suspend fun getJenkins(context:OperationRequest):Response<Hudson>
    /* getJob
     *  */
    suspend fun getJob(name:kotlin.String?,context:OperationRequest):Response<FreeStyleProject>
    /* getJobConfig
     *  */
    suspend fun getJobConfig(name:kotlin.String?,context:OperationRequest):Response<kotlin.String>
    /* getJobLastBuild
     *  */
    suspend fun getJobLastBuild(name:kotlin.String?,context:OperationRequest):Response<FreeStyleBuild>
    /* getJobProgressiveText
     *  */
    suspend fun getJobProgressiveText(name:kotlin.String?,number:kotlin.String?,start:kotlin.String?,context:OperationRequest):Response<Void>
    /* getQueue
     *  */
    suspend fun getQueue(context:OperationRequest):Response<Queue>
    /* getQueueItem
     *  */
    suspend fun getQueueItem(number:kotlin.String?,context:OperationRequest):Response<Queue>
    /* getView
     *  */
    suspend fun getView(name:kotlin.String?,context:OperationRequest):Response<ListView>
    /* getViewConfig
     *  */
    suspend fun getViewConfig(name:kotlin.String?,context:OperationRequest):Response<kotlin.String>
    /* headJenkins
     *  */
    suspend fun headJenkins(context:OperationRequest):Response<Void>
    /* postCreateItem
     *  */
    suspend fun postCreateItem(name:kotlin.String?,from:kotlin.String?,mode:kotlin.String?,jenkinsCrumb:kotlin.String?,contentType:kotlin.String?,body:kotlin.String?,context:OperationRequest):Response<Void>
    /* postCreateView
     *  */
    suspend fun postCreateView(name:kotlin.String?,jenkinsCrumb:kotlin.String?,contentType:kotlin.String?,body:kotlin.String?,context:OperationRequest):Response<Void>
    /* postJobBuild
     *  */
    suspend fun postJobBuild(name:kotlin.String?,json:kotlin.String?,token:kotlin.String?,jenkinsCrumb:kotlin.String?,context:OperationRequest):Response<Void>
    /* postJobConfig
     *  */
    suspend fun postJobConfig(name:kotlin.String?,body:kotlin.String?,jenkinsCrumb:kotlin.String?,context:OperationRequest):Response<Void>
    /* postJobDelete
     *  */
    suspend fun postJobDelete(name:kotlin.String?,jenkinsCrumb:kotlin.String?,context:OperationRequest):Response<Void>
    /* postJobDisable
     *  */
    suspend fun postJobDisable(name:kotlin.String?,jenkinsCrumb:kotlin.String?,context:OperationRequest):Response<Void>
    /* postJobEnable
     *  */
    suspend fun postJobEnable(name:kotlin.String?,jenkinsCrumb:kotlin.String?,context:OperationRequest):Response<Void>
    /* postJobLastBuildStop
     *  */
    suspend fun postJobLastBuildStop(name:kotlin.String?,jenkinsCrumb:kotlin.String?,context:OperationRequest):Response<Void>
    /* postViewConfig
     *  */
    suspend fun postViewConfig(name:kotlin.String?,body:kotlin.String?,jenkinsCrumb:kotlin.String?,context:OperationRequest):Response<Void>
    companion object {
        const val address = "RemoteAccessApi-service"
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
            for (m in RemoteAccessApi::class.java.methods) {
                val methodName = m.name
                val op = operations[methodName]
                if (op != null) {
                    val method = op::class.java.getDeclaredMethod("mountRouteToService",String::class.java,String::class.java)
                    method.isAccessible = true
                    method.invoke(op,address,methodName)
                }
            }
            routerFactory.mountServiceInterface(RemoteAccessApi::class.java, address)
            return routerFactory
        }
    }
}
