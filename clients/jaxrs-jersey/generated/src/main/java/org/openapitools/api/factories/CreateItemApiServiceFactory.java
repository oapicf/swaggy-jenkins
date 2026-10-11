package org.openapitools.api.factories;

import org.openapitools.api.CreateItemApiService;
import org.openapitools.api.impl.CreateItemApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2026-10-11T12:05:34.935738716Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class CreateItemApiServiceFactory {
    private static final CreateItemApiService service = new CreateItemApiServiceImpl();

    public static CreateItemApiService getCreateItemApi() {
        return service;
    }
}
