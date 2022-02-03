package org.openapitools.api.factories;

import org.openapitools.api.JwtAuthApiService;
import org.openapitools.api.impl.JwtAuthApiServiceImpl;

public class JwtAuthApiServiceFactory {
    private static final JwtAuthApiService service = new JwtAuthApiServiceImpl();

    public static JwtAuthApiService getJwtAuthApi() {
        return service;
    }
}
