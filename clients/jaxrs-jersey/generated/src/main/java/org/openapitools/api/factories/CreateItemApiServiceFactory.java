package org.openapitools.api.factories;

import org.openapitools.api.CreateItemApiService;
import org.openapitools.api.impl.CreateItemApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2018-08-21T02:12:27.523Z[GMT]")
public class CreateItemApiServiceFactory {
    private final static CreateItemApiService service = new CreateItemApiServiceImpl();

    public static CreateItemApiService getCreateItemApi() {
        return service;
    }
}
