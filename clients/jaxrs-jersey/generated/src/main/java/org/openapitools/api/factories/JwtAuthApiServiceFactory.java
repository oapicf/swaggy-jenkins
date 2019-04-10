package org.openapitools.api.factories;

import org.openapitools.api.JwtAuthApiService;
import org.openapitools.api.impl.JwtAuthApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2019-04-10T03:54:45.282Z[GMT]")
public class JwtAuthApiServiceFactory {
    private final static JwtAuthApiService service = new JwtAuthApiServiceImpl();

    public static JwtAuthApiService getJwtAuthApi() {
        return service;
    }
}
