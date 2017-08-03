package io.swagger.api.factories;

import io.swagger.api.CreateViewApiService;
import io.swagger.api.impl.CreateViewApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-08-03T23:34:37.174Z")
public class CreateViewApiServiceFactory {
    private final static CreateViewApiService service = new CreateViewApiServiceImpl();

    public static CreateViewApiService getCreateViewApi() {
        return service;
    }
}
