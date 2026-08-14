package org.openapitools.server.api.api

import misk.inject.KAbstractModule
import misk.web.WebActionModule
import jakarta.inject.Singleton
import org.openapitools.server.api.api.BaseApiAction
import org.openapitools.server.api.api.BlueOceanApiAction
import org.openapitools.server.api.api.RemoteAccessApiAction

@Singleton
class OpenApiModule : KAbstractModule() {
    override fun configure() {
        install(WebActionModule.create<BaseApiAction>())
        install(WebActionModule.create<BlueOceanApiAction>())
        install(WebActionModule.create<RemoteAccessApiAction>())
    }
}