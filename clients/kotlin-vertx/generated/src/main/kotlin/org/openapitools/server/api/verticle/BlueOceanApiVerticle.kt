package org.openapitools.server.api.verticle
import io.vertx.core.Vertx
import io.vertx.core.AbstractVerticle
import io.vertx.serviceproxy.ServiceBinder

fun main(){
    Vertx.vertx().deployVerticle(BlueOceanApiVerticle())
}

class BlueOceanApiVerticle:AbstractVerticle() {

    override fun start() {
        val instance = (javaClass.classLoader.loadClass("org.openapitools.server.api.verticle.BlueOceanApiImpl").newInstance() as BlueOceanApi)
        instance.init(vertx,config())
        ServiceBinder(vertx)
            .setAddress(BlueOceanApi.address)
            .register(BlueOceanApi::class.java,instance)
    }
}