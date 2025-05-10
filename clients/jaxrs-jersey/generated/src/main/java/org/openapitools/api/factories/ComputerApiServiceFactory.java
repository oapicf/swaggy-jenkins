package org.openapitools.api.factories;

import org.openapitools.api.ComputerApiService;
import org.openapitools.api.impl.ComputerApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2025-05-10T02:40:27.424588979Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class ComputerApiServiceFactory {
    private static final ComputerApiService service = new ComputerApiServiceImpl();

    public static ComputerApiService getComputerApi() {
        return service;
    }
}
