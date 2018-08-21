package org.openapitools.api.factories;

import org.openapitools.api.CreateViewApiService;
import org.openapitools.api.impl.CreateViewApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2018-08-21T02:12:27.523Z[GMT]")
public class CreateViewApiServiceFactory {
    private final static CreateViewApiService service = new CreateViewApiServiceImpl();

    public static CreateViewApiService getCreateViewApi() {
        return service;
    }
}
