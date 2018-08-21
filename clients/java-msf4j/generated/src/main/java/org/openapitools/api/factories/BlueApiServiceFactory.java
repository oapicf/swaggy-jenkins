package org.openapitools.api.factories;

import org.openapitools.api.BlueApiService;
import org.openapitools.api.impl.BlueApiServiceImpl;

public class BlueApiServiceFactory {
    private final static BlueApiService service = new BlueApiServiceImpl();

    public static BlueApiService getBlueApi() {
        return service;
    }
}
