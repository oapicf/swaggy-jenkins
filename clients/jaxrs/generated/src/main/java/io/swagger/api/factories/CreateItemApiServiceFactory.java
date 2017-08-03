package io.swagger.api.factories;

import io.swagger.api.CreateItemApiService;
import io.swagger.api.impl.CreateItemApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-08-03T23:34:37.174Z")
public class CreateItemApiServiceFactory {
    private final static CreateItemApiService service = new CreateItemApiServiceImpl();

    public static CreateItemApiService getCreateItemApi() {
        return service;
    }
}
