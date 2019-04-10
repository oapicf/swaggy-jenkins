package org.openapitools.api.factories;

import org.openapitools.api.JobApiService;
import org.openapitools.api.impl.JobApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2019-04-10T03:54:45.282Z[GMT]")
public class JobApiServiceFactory {
    private final static JobApiService service = new JobApiServiceImpl();

    public static JobApiService getJobApi() {
        return service;
    }
}
