package org.openapitools.api.factories;

import org.openapitools.api.JobApiService;
import org.openapitools.api.impl.JobApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2018-08-21T02:12:27.523Z[GMT]")
public class JobApiServiceFactory {
    private final static JobApiService service = new JobApiServiceImpl();

    public static JobApiService getJobApi() {
        return service;
    }
}
