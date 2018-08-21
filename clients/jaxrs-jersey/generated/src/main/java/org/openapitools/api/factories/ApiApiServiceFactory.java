package org.openapitools.api.factories;

import org.openapitools.api.ApiApiService;
import org.openapitools.api.impl.ApiApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2018-08-21T02:12:27.523Z[GMT]")
public class ApiApiServiceFactory {
    private final static ApiApiService service = new ApiApiServiceImpl();

    public static ApiApiService getApiApi() {
        return service;
    }
}
