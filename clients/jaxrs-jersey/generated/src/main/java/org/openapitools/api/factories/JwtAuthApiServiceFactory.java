package org.openapitools.api.factories;

import org.openapitools.api.JwtAuthApiService;
import org.openapitools.api.impl.JwtAuthApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2018-08-21T02:12:27.523Z[GMT]")
public class JwtAuthApiServiceFactory {
    private final static JwtAuthApiService service = new JwtAuthApiServiceImpl();

    public static JwtAuthApiService getJwtAuthApi() {
        return service;
    }
}
