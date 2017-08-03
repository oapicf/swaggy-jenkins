package io.swagger.api.factories;

import io.swagger.api.CrumbIssuerApiService;
import io.swagger.api.impl.CrumbIssuerApiServiceImpl;

public class CrumbIssuerApiServiceFactory {
    private final static CrumbIssuerApiService service = new CrumbIssuerApiServiceImpl();

    public static CrumbIssuerApiService getCrumbIssuerApi() {
        return service;
    }
}
