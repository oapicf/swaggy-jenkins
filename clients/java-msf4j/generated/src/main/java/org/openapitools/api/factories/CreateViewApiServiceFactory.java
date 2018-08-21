package org.openapitools.api.factories;

import org.openapitools.api.CreateViewApiService;
import org.openapitools.api.impl.CreateViewApiServiceImpl;

public class CreateViewApiServiceFactory {
    private final static CreateViewApiService service = new CreateViewApiServiceImpl();

    public static CreateViewApiService getCreateViewApi() {
        return service;
    }
}
