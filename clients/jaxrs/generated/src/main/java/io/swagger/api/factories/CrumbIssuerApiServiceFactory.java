package io.swagger.api.factories;

import io.swagger.api.CrumbIssuerApiService;
import io.swagger.api.impl.CrumbIssuerApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-08-03T23:34:37.174Z")
public class CrumbIssuerApiServiceFactory {
    private final static CrumbIssuerApiService service = new CrumbIssuerApiServiceImpl();

    public static CrumbIssuerApiService getCrumbIssuerApi() {
        return service;
    }
}
