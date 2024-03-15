package org.openapitools

import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

import io.swagger.v3.oas.models.OpenAPI
import io.swagger.v3.oas.models.info.Info
import io.swagger.v3.oas.models.info.Contact
import io.swagger.v3.oas.models.info.License
import io.swagger.v3.oas.models.Components
import io.swagger.v3.oas.models.security.SecurityScheme

@jakarta.annotation.Generated(value = ["org.openapitools.codegen.languages.KotlinSpringServerCodegen"])
@Configuration
class SpringDocConfiguration {

    @Bean
    fun apiInfo(): OpenAPI {
        return OpenAPI()
            .info(
                Info()
                    .title("Swaggy Jenkins")
                    .description("Jenkins API clients generated from Swagger / Open API specification")
                    .contact(
                        Contact()
                            .name("Cliffano Subagio")
                            .url("http://github.com/oapicf/swaggy-jenkins")
                            .email("blah@cliffano.com")
                    )
                    .version("1.5.1-pre.0")
            )
            .components(
                Components()
                    .addSecuritySchemes("jenkins_auth", SecurityScheme()
                        .type(SecurityScheme.Type.HTTP)
                        .scheme("basic")
                    )
                    .addSecuritySchemes("jwt_auth", SecurityScheme()
                        .type(SecurityScheme.Type.APIKEY)
                        .`in`(SecurityScheme.In.HEADER)
                        .name("Authorization")
                    )
            )
    }
}
