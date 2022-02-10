package org.openapitools.server.api.verticle
import io.vertx.core.Vertx
import io.vertx.core.AbstractVerticle
import io.vertx.serviceproxy.ServiceBinder

fun main(){
    Vertx.vertx().deployVerticle(BaseApiVerticle())
}

class BaseApiVerticle:AbstractVerticle() {

    override fun start() {
        val instance = (javaClass.classLoader.loadClass("org.openapitools.server.api.verticle.BaseApiImpl").newInstance() as BaseApi)
        instance.init(vertx,config())
        ServiceBinder(vertx)
            .setAddress(BaseApi.address)
            .register(BaseApi::class.java,instance)
    }
}