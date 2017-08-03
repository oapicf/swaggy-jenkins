package io.swagger.api.factories;

import io.swagger.api.JobApiService;
import io.swagger.api.impl.JobApiServiceImpl;

public class JobApiServiceFactory {
    private final static JobApiService service = new JobApiServiceImpl();

    public static JobApiService getJobApi() {
        return service;
    }
}
