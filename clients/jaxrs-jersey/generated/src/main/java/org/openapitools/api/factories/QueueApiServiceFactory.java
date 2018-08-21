package org.openapitools.api.factories;

import org.openapitools.api.QueueApiService;
import org.openapitools.api.impl.QueueApiServiceImpl;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2018-08-21T02:12:27.523Z[GMT]")
public class QueueApiServiceFactory {
    private final static QueueApiService service = new QueueApiServiceImpl();

    public static QueueApiService getQueueApi() {
        return service;
    }
}
