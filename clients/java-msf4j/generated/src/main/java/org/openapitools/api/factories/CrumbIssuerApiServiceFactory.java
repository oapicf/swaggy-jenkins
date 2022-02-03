package org.openapitools.api.factories;

import org.openapitools.api.CrumbIssuerApiService;
import org.openapitools.api.impl.CrumbIssuerApiServiceImpl;

public class CrumbIssuerApiServiceFactory {
    private static final CrumbIssuerApiService service = new CrumbIssuerApiServiceImpl();

    public static CrumbIssuerApiService getCrumbIssuerApi() {
        return service;
    }
}
