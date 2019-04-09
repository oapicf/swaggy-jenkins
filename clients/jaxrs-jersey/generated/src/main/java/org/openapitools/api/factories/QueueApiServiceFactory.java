package org.openapitools.api.factories;

import org.openapitools.api.QueueApiService;
import org.openapitools.api.impl.QueueApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2019-04-09T15:08:58.477Z[GMT]")
public class QueueApiServiceFactory {
    private final static QueueApiService service = new QueueApiServiceImpl();

    public static QueueApiService getQueueApi() {
        return service;
    }
}
