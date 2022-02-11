package org.openapitools

import api._
import play.api.inject.{Binding, Module => PlayModule}
import play.api.{Configuration, Environment}

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-11T12:54:41.523230Z[Etc/UTC]")
class Module extends PlayModule {
  override def bindings(environment: Environment, configuration: Configuration): Seq[Binding[_]] = Seq(
    bind[BaseApi].to[BaseApiImpl],
    bind[BlueOceanApi].to[BlueOceanApiImpl],
    bind[RemoteAccessApi].to[RemoteAccessApiImpl]
  )
}
