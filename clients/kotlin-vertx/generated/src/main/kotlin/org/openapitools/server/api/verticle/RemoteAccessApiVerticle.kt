package org.openapitools.server.api.verticle
import io.vertx.core.Vertx
import io.vertx.core.AbstractVerticle
import io.vertx.serviceproxy.ServiceBinder

fun main(){
    Vertx.vertx().deployVerticle(RemoteAccessApiVerticle())
}

class RemoteAccessApiVerticle:AbstractVerticle() {

    override fun start() {
        val instance = (javaClass.classLoader.loadClass("org.openapitools.server.api.verticle.RemoteAccessApiImpl").newInstance() as RemoteAccessApi)
        instance.init(vertx,config())
        ServiceBinder(vertx)
            .setAddress(RemoteAccessApi.address)
            .register(RemoteAccessApi::class.java,instance)
    }
}