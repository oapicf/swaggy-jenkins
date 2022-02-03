package org.openapitools.api.factories;

import org.openapitools.api.JobApiService;
import org.openapitools.api.impl.JobApiServiceImpl;

public class JobApiServiceFactory {
    private static final JobApiService service = new JobApiServiceImpl();

    public static JobApiService getJobApi() {
        return service;
    }
}
