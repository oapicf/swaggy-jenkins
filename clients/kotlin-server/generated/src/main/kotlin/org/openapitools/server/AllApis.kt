package org.openapitools.server

import io.ktor.server.routing.*
import org.openapitools.server.apis.BaseApi
import org.openapitools.server.apis.BlueOceanApi
import org.openapitools.server.apis.RemoteAccessApi



fun Route.AllApis() {
    BaseApi()
    BlueOceanApi()
    RemoteAccessApi()
}
