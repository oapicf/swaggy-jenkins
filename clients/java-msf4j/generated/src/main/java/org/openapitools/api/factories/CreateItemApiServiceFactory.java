package org.openapitools.api.factories;

import org.openapitools.api.CreateItemApiService;
import org.openapitools.api.impl.CreateItemApiServiceImpl;

public class CreateItemApiServiceFactory {
    private static final CreateItemApiService service = new CreateItemApiServiceImpl();

    public static CreateItemApiService getCreateItemApi() {
        return service;
    }
}
