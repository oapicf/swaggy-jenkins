package org.openapitools.api.factories;

import org.openapitools.api.JwtAuthApiService;
import org.openapitools.api.impl.JwtAuthApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2022-02-02T10:45:25.136812Z[Etc/UTC]")
public class JwtAuthApiServiceFactory {
    private static final JwtAuthApiService service = new JwtAuthApiServiceImpl();

    public static JwtAuthApiService getJwtAuthApi() {
        return service;
    }
}
