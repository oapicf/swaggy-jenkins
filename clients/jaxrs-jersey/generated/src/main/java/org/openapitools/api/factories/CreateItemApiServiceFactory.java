package org.openapitools.api.factories;

import org.openapitools.api.CreateItemApiService;
import org.openapitools.api.impl.CreateItemApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2022-06-04T08:09:01.059653Z[Etc/UTC]")
public class CreateItemApiServiceFactory {
    private static final CreateItemApiService service = new CreateItemApiServiceImpl();

    public static CreateItemApiService getCreateItemApi() {
        return service;
    }
}
