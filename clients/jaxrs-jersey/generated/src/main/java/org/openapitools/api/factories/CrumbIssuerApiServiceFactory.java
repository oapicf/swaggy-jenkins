package org.openapitools.api.factories;

import org.openapitools.api.CrumbIssuerApiService;
import org.openapitools.api.impl.CrumbIssuerApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2026-08-16T01:39:14.911217398Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class CrumbIssuerApiServiceFactory {
    private static final CrumbIssuerApiService service = new CrumbIssuerApiServiceImpl();

    public static CrumbIssuerApiService getCrumbIssuerApi() {
        return service;
    }
}
