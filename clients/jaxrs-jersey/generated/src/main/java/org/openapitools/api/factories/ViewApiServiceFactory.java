package org.openapitools.api.factories;

import org.openapitools.api.ViewApiService;
import org.openapitools.api.impl.ViewApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2026-10-11T12:05:34.935738716Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class ViewApiServiceFactory {
    private static final ViewApiService service = new ViewApiServiceImpl();

    public static ViewApiService getViewApi() {
        return service;
    }
}
