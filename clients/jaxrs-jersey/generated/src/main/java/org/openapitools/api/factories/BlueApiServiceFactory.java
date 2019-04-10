package org.openapitools.api.factories;

import org.openapitools.api.BlueApiService;
import org.openapitools.api.impl.BlueApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2019-04-10T03:54:45.282Z[GMT]")
public class BlueApiServiceFactory {
    private final static BlueApiService service = new BlueApiServiceImpl();

    public static BlueApiService getBlueApi() {
        return service;
    }
}
