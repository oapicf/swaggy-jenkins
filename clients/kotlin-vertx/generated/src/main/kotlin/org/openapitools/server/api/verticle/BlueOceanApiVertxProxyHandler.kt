package org.openapitools.server.api.verticle

import io.vertx.core.Vertx
import io.vertx.core.eventbus.Message
import io.vertx.core.json.JsonObject
import io.vertx.ext.web.api.OperationRequest
import io.vertx.ext.web.api.OperationResponse
import io.vertx.ext.web.api.generator.ApiHandlerUtils
import io.vertx.serviceproxy.ProxyHandler
import io.vertx.serviceproxy.ServiceException
import io.vertx.serviceproxy.ServiceExceptionMessageCodec
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import io.vertx.kotlin.coroutines.dispatcher
import io.vertx.core.json.Json
import io.vertx.core.json.JsonArray
import com.google.gson.reflect.TypeToken
import com.google.gson.Gson
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

class BlueOceanApiVertxProxyHandler(private val vertx: Vertx, private val service: BlueOceanApi, topLevel: Boolean, private val timeoutSeconds: Long) : ProxyHandler() {
    private val timerID: Long
    private var lastAccessed: Long = 0
    init {
        try {
            this.vertx.eventBus().registerDefaultCodec(ServiceException::class.java,
            ServiceExceptionMessageCodec())
        } catch (ex: IllegalStateException) {}

        if (timeoutSeconds != (-1).toLong() && !topLevel) {
            var period = timeoutSeconds * 1000 / 2
            if (period > 10000) {
                period = 10000
            }
            this.timerID = vertx.setPeriodic(period) { this.checkTimedOut(it) }
        } else {
            this.timerID = -1
        }
        accessed()
    }
    private fun checkTimedOut(id: Long) {
        val now = System.nanoTime()
        if (now - lastAccessed > timeoutSeconds * 1000000000) {
            close()
        }
    }

    override fun close() {
        if (timerID != (-1).toLong()) {
            vertx.cancelTimer(timerID)
        }
        super.close()
    }

    private fun accessed() {
        this.lastAccessed = System.nanoTime()
    }
    override fun handle(msg: Message<JsonObject>) {
        try {
            val json = msg.body()
            val action = msg.headers().get("action") ?: throw IllegalStateException("action not specified")
            accessed()
            val contextSerialized = json.getJsonObject("context") ?: throw IllegalStateException("Received action $action without OperationRequest \"context\"")
            val context = OperationRequest(contextSerialized)
            when (action) {
        
                "deletePipelineQueueItem" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val queue = ApiHandlerUtils.searchStringInJson(params,"queue")
                    if(queue == null){
                        throw IllegalArgumentException("queue is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.deletePipelineQueueItem(organization,pipeline,queue,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getAuthenticatedUser" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getAuthenticatedUser(organization,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getClasses" -> {
                    val params = context.params
                    val propertyClass = ApiHandlerUtils.searchStringInJson(params,"class")
                    if(propertyClass == null){
                        throw IllegalArgumentException("propertyClass is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getClasses(propertyClass,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getJsonWebKey" -> {
                    val params = context.params
                    val key = ApiHandlerUtils.searchIntegerInJson(params,"key")
                    if(key == null){
                        throw IllegalArgumentException("key is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getJsonWebKey(key,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getJsonWebToken" -> {
                    val params = context.params
                    val expiryTimeInMins = ApiHandlerUtils.searchIntegerInJson(params,"expiryTimeInMins")
                    val maxExpiryTimeInMins = ApiHandlerUtils.searchIntegerInJson(params,"maxExpiryTimeInMins")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getJsonWebToken(expiryTimeInMins,maxExpiryTimeInMins,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getOrganisation" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getOrganisation(organization,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getOrganisations" -> {
                }
        
                "getPipeline" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipeline(organization,pipeline,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineActivities" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineActivities(organization,pipeline,context)
                        val payload = JsonArray(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineBranch" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val branch = ApiHandlerUtils.searchStringInJson(params,"branch")
                    if(branch == null){
                        throw IllegalArgumentException("branch is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineBranch(organization,pipeline,branch,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineBranchRun" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val branch = ApiHandlerUtils.searchStringInJson(params,"branch")
                    if(branch == null){
                        throw IllegalArgumentException("branch is required")
                    }
                    val run = ApiHandlerUtils.searchStringInJson(params,"run")
                    if(run == null){
                        throw IllegalArgumentException("run is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineBranchRun(organization,pipeline,branch,run,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineBranches" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineBranches(organization,pipeline,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineFolder" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val folder = ApiHandlerUtils.searchStringInJson(params,"folder")
                    if(folder == null){
                        throw IllegalArgumentException("folder is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineFolder(organization,folder,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineFolderPipeline" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val folder = ApiHandlerUtils.searchStringInJson(params,"folder")
                    if(folder == null){
                        throw IllegalArgumentException("folder is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineFolderPipeline(organization,pipeline,folder,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineQueue" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineQueue(organization,pipeline,context)
                        val payload = JsonArray(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineRun" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val run = ApiHandlerUtils.searchStringInJson(params,"run")
                    if(run == null){
                        throw IllegalArgumentException("run is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineRun(organization,pipeline,run,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineRunLog" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val run = ApiHandlerUtils.searchStringInJson(params,"run")
                    if(run == null){
                        throw IllegalArgumentException("run is required")
                    }
                    val start = ApiHandlerUtils.searchIntegerInJson(params,"start")
                    val download = ApiHandlerUtils.searchStringInJson(params,"download")?.toBoolean()
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineRunLog(organization,pipeline,run,start,download,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineRunNode" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val run = ApiHandlerUtils.searchStringInJson(params,"run")
                    if(run == null){
                        throw IllegalArgumentException("run is required")
                    }
                    val node = ApiHandlerUtils.searchStringInJson(params,"node")
                    if(node == null){
                        throw IllegalArgumentException("node is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineRunNode(organization,pipeline,run,node,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineRunNodeStep" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val run = ApiHandlerUtils.searchStringInJson(params,"run")
                    if(run == null){
                        throw IllegalArgumentException("run is required")
                    }
                    val node = ApiHandlerUtils.searchStringInJson(params,"node")
                    if(node == null){
                        throw IllegalArgumentException("node is required")
                    }
                    val step = ApiHandlerUtils.searchStringInJson(params,"step")
                    if(step == null){
                        throw IllegalArgumentException("step is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineRunNodeStep(organization,pipeline,run,node,step,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineRunNodeStepLog" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val run = ApiHandlerUtils.searchStringInJson(params,"run")
                    if(run == null){
                        throw IllegalArgumentException("run is required")
                    }
                    val node = ApiHandlerUtils.searchStringInJson(params,"node")
                    if(node == null){
                        throw IllegalArgumentException("node is required")
                    }
                    val step = ApiHandlerUtils.searchStringInJson(params,"step")
                    if(step == null){
                        throw IllegalArgumentException("step is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineRunNodeStepLog(organization,pipeline,run,node,step,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineRunNodeSteps" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val run = ApiHandlerUtils.searchStringInJson(params,"run")
                    if(run == null){
                        throw IllegalArgumentException("run is required")
                    }
                    val node = ApiHandlerUtils.searchStringInJson(params,"node")
                    if(node == null){
                        throw IllegalArgumentException("node is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineRunNodeSteps(organization,pipeline,run,node,context)
                        val payload = JsonArray(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineRunNodes" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val run = ApiHandlerUtils.searchStringInJson(params,"run")
                    if(run == null){
                        throw IllegalArgumentException("run is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineRunNodes(organization,pipeline,run,context)
                        val payload = JsonArray(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelineRuns" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelineRuns(organization,pipeline,context)
                        val payload = JsonArray(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getPipelines" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getPipelines(organization,context)
                        val payload = JsonArray(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getSCM" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val scm = ApiHandlerUtils.searchStringInJson(params,"scm")
                    if(scm == null){
                        throw IllegalArgumentException("scm is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getSCM(organization,scm,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getSCMOrganisationRepositories" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val scm = ApiHandlerUtils.searchStringInJson(params,"scm")
                    if(scm == null){
                        throw IllegalArgumentException("scm is required")
                    }
                    val scmOrganisation = ApiHandlerUtils.searchStringInJson(params,"scmOrganisation")
                    if(scmOrganisation == null){
                        throw IllegalArgumentException("scmOrganisation is required")
                    }
                    val credentialId = ApiHandlerUtils.searchStringInJson(params,"credentialId")
                    val pageSize = ApiHandlerUtils.searchIntegerInJson(params,"pageSize")
                    val pageNumber = ApiHandlerUtils.searchIntegerInJson(params,"pageNumber")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getSCMOrganisationRepositories(organization,scm,scmOrganisation,credentialId,pageSize,pageNumber,context)
                        val payload = JsonArray(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getSCMOrganisationRepository" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val scm = ApiHandlerUtils.searchStringInJson(params,"scm")
                    if(scm == null){
                        throw IllegalArgumentException("scm is required")
                    }
                    val scmOrganisation = ApiHandlerUtils.searchStringInJson(params,"scmOrganisation")
                    if(scmOrganisation == null){
                        throw IllegalArgumentException("scmOrganisation is required")
                    }
                    val repository = ApiHandlerUtils.searchStringInJson(params,"repository")
                    if(repository == null){
                        throw IllegalArgumentException("repository is required")
                    }
                    val credentialId = ApiHandlerUtils.searchStringInJson(params,"credentialId")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getSCMOrganisationRepository(organization,scm,scmOrganisation,repository,credentialId,context)
                        val payload = JsonArray(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getSCMOrganisations" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val scm = ApiHandlerUtils.searchStringInJson(params,"scm")
                    if(scm == null){
                        throw IllegalArgumentException("scm is required")
                    }
                    val credentialId = ApiHandlerUtils.searchStringInJson(params,"credentialId")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getSCMOrganisations(organization,scm,credentialId,context)
                        val payload = JsonArray(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getUser" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val user = ApiHandlerUtils.searchStringInJson(params,"user")
                    if(user == null){
                        throw IllegalArgumentException("user is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getUser(organization,user,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getUserFavorites" -> {
                    val params = context.params
                    val user = ApiHandlerUtils.searchStringInJson(params,"user")
                    if(user == null){
                        throw IllegalArgumentException("user is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getUserFavorites(user,context)
                        val payload = JsonArray(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getUsers" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getUsers(organization,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "postPipelineRun" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val run = ApiHandlerUtils.searchStringInJson(params,"run")
                    if(run == null){
                        throw IllegalArgumentException("run is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.postPipelineRun(organization,pipeline,run,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "postPipelineRuns" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.postPipelineRuns(organization,pipeline,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "putPipelineFavorite" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val body = ApiHandlerUtils.searchStringInJson(params,"body")?.toBoolean()
                    if(body == null){
                        throw IllegalArgumentException("body is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.putPipelineFavorite(organization,pipeline,body,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "putPipelineRun" -> {
                    val params = context.params
                    val organization = ApiHandlerUtils.searchStringInJson(params,"organization")
                    if(organization == null){
                        throw IllegalArgumentException("organization is required")
                    }
                    val pipeline = ApiHandlerUtils.searchStringInJson(params,"pipeline")
                    if(pipeline == null){
                        throw IllegalArgumentException("pipeline is required")
                    }
                    val run = ApiHandlerUtils.searchStringInJson(params,"run")
                    if(run == null){
                        throw IllegalArgumentException("run is required")
                    }
                    val blocking = ApiHandlerUtils.searchStringInJson(params,"blocking")
                    val timeOutInSecs = ApiHandlerUtils.searchIntegerInJson(params,"timeOutInSecs")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.putPipelineRun(organization,pipeline,run,blocking,timeOutInSecs,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "search" -> {
                    val params = context.params
                    val q = ApiHandlerUtils.searchStringInJson(params,"q")
                    if(q == null){
                        throw IllegalArgumentException("q is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.search(q,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "searchClasses" -> {
                    val params = context.params
                    val q = ApiHandlerUtils.searchStringInJson(params,"q")
                    if(q == null){
                        throw IllegalArgumentException("q is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.searchClasses(q,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
            }
        }catch (t: Throwable) {
            msg.reply(ServiceException(500, t.message))
            throw t
        }
    }
}
