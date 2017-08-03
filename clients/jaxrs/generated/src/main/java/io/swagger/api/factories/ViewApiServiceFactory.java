package io.swagger.api.factories;

import io.swagger.api.ViewApiService;
import io.swagger.api.impl.ViewApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-08-03T23:34:37.174Z")
public class ViewApiServiceFactory {
    private final static ViewApiService service = new ViewApiServiceImpl();

    public static ViewApiService getViewApi() {
        return service;
    }
}
