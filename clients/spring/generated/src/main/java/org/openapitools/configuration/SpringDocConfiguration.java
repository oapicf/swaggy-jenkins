package org.openapitools.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.License;
import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.security.SecurityScheme;

@Configuration
public class SpringDocConfiguration {

    @Bean(name = "org.openapitools.configuration.SpringDocConfiguration.apiInfo")
    OpenAPI apiInfo() {
        return new OpenAPI()
                .info(
                        new Info()
                                .title("Swaggy Jenkins")
                                .description("Jenkins API clients generated from Swagger / Open API specification")
                                .contact(
                                        new Contact()
                                                .name("OpenAPI Clients Factory")
                                                .url("https://github.com/oapicf/swaggy-jenkins")
                                                .email("blah+oapicf@cliffano.com")
                                )
                                .version("3.2.1-pre.0")
                )
                .components(
                        new Components()
                                .addSecuritySchemes("jenkins_auth", new SecurityScheme()
                                        .type(SecurityScheme.Type.HTTP)
                                        .scheme("basic")
                                )
                                .addSecuritySchemes("jwt_auth", new SecurityScheme()
                                        .type(SecurityScheme.Type.APIKEY)
                                        .in(SecurityScheme.In.HEADER)
                                        .name("Authorization")
                                )
                )
        ;
    }
}