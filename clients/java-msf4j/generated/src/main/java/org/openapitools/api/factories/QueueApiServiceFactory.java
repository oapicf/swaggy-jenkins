package org.openapitools.api.factories;

import org.openapitools.api.QueueApiService;
import org.openapitools.api.impl.QueueApiServiceImpl;

public class QueueApiServiceFactory {
    private final static QueueApiService service = new QueueApiServiceImpl();

    public static QueueApiService getQueueApi() {
        return service;
    }
}
