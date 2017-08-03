package io.swagger.api.factories;

import io.swagger.api.QueueApiService;
import io.swagger.api.impl.QueueApiServiceImpl;

public class QueueApiServiceFactory {
    private final static QueueApiService service = new QueueApiServiceImpl();

    public static QueueApiService getQueueApi() {
        return service;
    }
}
