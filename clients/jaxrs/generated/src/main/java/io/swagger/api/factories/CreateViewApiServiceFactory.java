package io.swagger.api.factories;

import io.swagger.api.CreateViewApiService;
import io.swagger.api.impl.CreateViewApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-07-25T10:45:00.143+10:00")
public class CreateViewApiServiceFactory {
    private final static CreateViewApiService service = new CreateViewApiServiceImpl();

    public static CreateViewApiService getCreateViewApi() {
        return service;
    }
}
