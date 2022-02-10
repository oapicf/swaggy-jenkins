package org.openapitools.api.factories;

import org.openapitools.api.BlueApiService;
import org.openapitools.api.impl.BlueApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2022-02-10T09:47:07.448540Z[Etc/UTC]")
public class BlueApiServiceFactory {
    private static final BlueApiService service = new BlueApiServiceImpl();

    public static BlueApiService getBlueApi() {
        return service;
    }
}
