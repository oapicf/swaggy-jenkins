package org.openapitools.api.factories;

import org.openapitools.api.ViewApiService;
import org.openapitools.api.impl.ViewApiServiceImpl;

public class ViewApiServiceFactory {
    private static final ViewApiService service = new ViewApiServiceImpl();

    public static ViewApiService getViewApi() {
        return service;
    }
}
