/**
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech) (7.4.0).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.api;

import org.apache.camel.builder.RouteBuilder;
import org.springframework.stereotype.Component;
import org.apache.camel.model.rest.RestBindingMode;

@Component
public class RestConfiguration extends RouteBuilder {
    @Override
    public void configure() throws Exception {
        restConfiguration()
            .scheme("http")
            .host("localhost")
            .component("servlet")
            .bindingMode(RestBindingMode.auto)
            .clientRequestValidation(false)
            .apiProperty("api.title", "Swaggy Jenkins")
            .apiProperty("api.version", "2.0.1-pre.0");
    }
}
