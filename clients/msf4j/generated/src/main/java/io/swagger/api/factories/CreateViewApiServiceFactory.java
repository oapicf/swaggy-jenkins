package io.swagger.api.factories;

import io.swagger.api.CreateViewApiService;
import io.swagger.api.impl.CreateViewApiServiceImpl;

public class CreateViewApiServiceFactory {
    private final static CreateViewApiService service = new CreateViewApiServiceImpl();

    public static CreateViewApiService getCreateViewApi() {
        return service;
    }
}
