package io.swagger.api.factories;

import io.swagger.api.ApiApiService;
import io.swagger.api.impl.ApiApiServiceImpl;

public class ApiApiServiceFactory {
    private final static ApiApiService service = new ApiApiServiceImpl();

    public static ApiApiService getApiApi() {
        return service;
    }
}
