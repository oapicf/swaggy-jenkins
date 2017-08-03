package io.swagger.api.factories;

import io.swagger.api.ApiApiService;
import io.swagger.api.impl.ApiApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-08-03T23:34:37.174Z")
public class ApiApiServiceFactory {
    private final static ApiApiService service = new ApiApiServiceImpl();

    public static ApiApiService getApiApi() {
        return service;
    }
}
