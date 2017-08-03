package io.swagger.api.factories;

import io.swagger.api.BlueApiService;
import io.swagger.api.impl.BlueApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-08-03T23:34:37.174Z")
public class BlueApiServiceFactory {
    private final static BlueApiService service = new BlueApiServiceImpl();

    public static BlueApiService getBlueApi() {
        return service;
    }
}
