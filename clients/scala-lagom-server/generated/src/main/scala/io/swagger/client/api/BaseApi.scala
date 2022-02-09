/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package io.swagger.client.api

import akka.{Done, NotUsed}
import com.lightbend.lagom.scaladsl.api.transport.Method
import com.lightbend.lagom.scaladsl.api.{Service, ServiceCall}
import play.api.libs.json._
import com.lightbend.lagom.scaladsl.api.deser.PathParamSerializer

import io.swagger.client.model.DefaultCrumbIssuer

trait BaseApi extends Service {


  final override def descriptor = {
    import Service._
    named("BaseApi").withCalls(
      restCall(Method.GET, "/crumbIssuer/api/json", getCrumb _)
    ).withAutoAcl(true)
  }


  /**
    * 
    * Retrieve CSRF protection token
    * 
    * @return DefaultCrumbIssuer
    */
  def getCrumb(): ServiceCall[NotUsed ,DefaultCrumbIssuer]
  

  }
