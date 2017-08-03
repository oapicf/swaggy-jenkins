package io.swagger.api.factories;

import io.swagger.api.ViewApiService;
import io.swagger.api.impl.ViewApiServiceImpl;

public class ViewApiServiceFactory {
    private final static ViewApiService service = new ViewApiServiceImpl();

    public static ViewApiService getViewApi() {
        return service;
    }
}
