package org.openapitools.api.factories;

import org.openapitools.api.ComputerApiService;
import org.openapitools.api.impl.ComputerApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2026-08-15T12:29:58.536782281Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class ComputerApiServiceFactory {
    private static final ComputerApiService service = new ComputerApiServiceImpl();

    public static ComputerApiService getComputerApi() {
        return service;
    }
}
