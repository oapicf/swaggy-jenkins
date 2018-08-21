package org.openapitools.api.factories;

import org.openapitools.api.ApiApiService;
import org.openapitools.api.impl.ApiApiServiceImpl;

public class ApiApiServiceFactory {
    private final static ApiApiService service = new ApiApiServiceImpl();

    public static ApiApiService getApiApi() {
        return service;
    }
}
