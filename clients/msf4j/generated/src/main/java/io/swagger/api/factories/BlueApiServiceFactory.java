package io.swagger.api.factories;

import io.swagger.api.BlueApiService;
import io.swagger.api.impl.BlueApiServiceImpl;

public class BlueApiServiceFactory {
    private final static BlueApiService service = new BlueApiServiceImpl();

    public static BlueApiService getBlueApi() {
        return service;
    }
}
