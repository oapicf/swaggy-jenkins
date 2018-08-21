package org.openapitools.api.factories;

import org.openapitools.api.BlueApiService;
import org.openapitools.api.impl.BlueApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2018-08-21T02:12:27.523Z[GMT]")
public class BlueApiServiceFactory {
    private final static BlueApiService service = new BlueApiServiceImpl();

    public static BlueApiService getBlueApi() {
        return service;
    }
}
