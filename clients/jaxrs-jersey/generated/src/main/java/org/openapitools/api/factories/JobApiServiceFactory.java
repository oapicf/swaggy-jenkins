package org.openapitools.api.factories;

import org.openapitools.api.JobApiService;
import org.openapitools.api.impl.JobApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2026-10-11T12:05:34.935738716Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class JobApiServiceFactory {
    private static final JobApiService service = new JobApiServiceImpl();

    public static JobApiService getJobApi() {
        return service;
    }
}
