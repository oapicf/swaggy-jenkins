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
import org.openapitools.server.api.model.ComputerSet
import org.openapitools.server.api.model.FreeStyleBuild
import org.openapitools.server.api.model.FreeStyleProject
import org.openapitools.server.api.model.Hudson
import org.openapitools.server.api.model.ListView
import org.openapitools.server.api.model.Queue

class RemoteAccessApiVertxProxyHandler(private val vertx: Vertx, private val service: RemoteAccessApi, topLevel: Boolean, private val timeoutSeconds: Long) : ProxyHandler() {
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
        
                "getComputer" -> {
                    val params = context.params
                    val depth = ApiHandlerUtils.searchIntegerInJson(params,"depth")
                    if(depth == null){
                        throw IllegalArgumentException("depth is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getComputer(depth,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getJenkins" -> {
                }
        
                "getJob" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getJob(name,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getJobConfig" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getJobConfig(name,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getJobLastBuild" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getJobLastBuild(name,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getJobProgressiveText" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    val number = ApiHandlerUtils.searchStringInJson(params,"number")
                    if(number == null){
                        throw IllegalArgumentException("number is required")
                    }
                    val start = ApiHandlerUtils.searchStringInJson(params,"start")
                    if(start == null){
                        throw IllegalArgumentException("start is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getJobProgressiveText(name,number,start,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getQueue" -> {
                }
        
                "getQueueItem" -> {
                    val params = context.params
                    val number = ApiHandlerUtils.searchStringInJson(params,"number")
                    if(number == null){
                        throw IllegalArgumentException("number is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getQueueItem(number,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getView" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getView(name,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "getViewConfig" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.getViewConfig(name,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "headJenkins" -> {
                }
        
                "postCreateItem" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    val from = ApiHandlerUtils.searchStringInJson(params,"from")
                    val mode = ApiHandlerUtils.searchStringInJson(params,"mode")
                    val jenkinsCrumb = ApiHandlerUtils.searchStringInJson(params,"Jenkins-Crumb")
                    val contentType = ApiHandlerUtils.searchStringInJson(params,"Content-Type")
                    val body = ApiHandlerUtils.searchStringInJson(params,"body")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.postCreateItem(name,from,mode,jenkinsCrumb,contentType,body,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "postCreateView" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    val jenkinsCrumb = ApiHandlerUtils.searchStringInJson(params,"Jenkins-Crumb")
                    val contentType = ApiHandlerUtils.searchStringInJson(params,"Content-Type")
                    val body = ApiHandlerUtils.searchStringInJson(params,"body")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.postCreateView(name,jenkinsCrumb,contentType,body,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "postJobBuild" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    val json = ApiHandlerUtils.searchStringInJson(params,"json")
                    if(json == null){
                        throw IllegalArgumentException("json is required")
                    }
                    val token = ApiHandlerUtils.searchStringInJson(params,"token")
                    val jenkinsCrumb = ApiHandlerUtils.searchStringInJson(params,"Jenkins-Crumb")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.postJobBuild(name,json,token,jenkinsCrumb,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "postJobConfig" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    val body = ApiHandlerUtils.searchStringInJson(params,"body")
                    if(body == null){
                        throw IllegalArgumentException("body is required")
                    }
                    val jenkinsCrumb = ApiHandlerUtils.searchStringInJson(params,"Jenkins-Crumb")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.postJobConfig(name,body,jenkinsCrumb,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "postJobDelete" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    val jenkinsCrumb = ApiHandlerUtils.searchStringInJson(params,"Jenkins-Crumb")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.postJobDelete(name,jenkinsCrumb,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "postJobDisable" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    val jenkinsCrumb = ApiHandlerUtils.searchStringInJson(params,"Jenkins-Crumb")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.postJobDisable(name,jenkinsCrumb,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "postJobEnable" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    val jenkinsCrumb = ApiHandlerUtils.searchStringInJson(params,"Jenkins-Crumb")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.postJobEnable(name,jenkinsCrumb,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "postJobLastBuildStop" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    val jenkinsCrumb = ApiHandlerUtils.searchStringInJson(params,"Jenkins-Crumb")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.postJobLastBuildStop(name,jenkinsCrumb,context)
                        val payload = JsonObject(Json.encode(result.payload)).toBuffer()
                        val res = OperationResponse(result.statusCode,result.statusMessage,payload,result.headers)
                        msg.reply(res.toJson())
                    }.invokeOnCompletion{
                        it?.let{ throw it }
                    }
                }
        
                "postViewConfig" -> {
                    val params = context.params
                    val name = ApiHandlerUtils.searchStringInJson(params,"name")
                    if(name == null){
                        throw IllegalArgumentException("name is required")
                    }
                    val body = ApiHandlerUtils.searchStringInJson(params,"body")
                    if(body == null){
                        throw IllegalArgumentException("body is required")
                    }
                    val jenkinsCrumb = ApiHandlerUtils.searchStringInJson(params,"Jenkins-Crumb")
                    GlobalScope.launch(vertx.dispatcher()){
                        val result = service.postViewConfig(name,body,jenkinsCrumb,context)
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
