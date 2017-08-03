package io.swagger.api.factories;

import io.swagger.api.CreateItemApiService;
import io.swagger.api.impl.CreateItemApiServiceImpl;

public class CreateItemApiServiceFactory {
    private final static CreateItemApiService service = new CreateItemApiServiceImpl();

    public static CreateItemApiService getCreateItemApi() {
        return service;
    }
}
