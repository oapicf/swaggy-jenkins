package io.swagger.api.factories;

import io.swagger.api.ComputerApiService;
import io.swagger.api.impl.ComputerApiServiceImpl;

public class ComputerApiServiceFactory {
    private final static ComputerApiService service = new ComputerApiServiceImpl();

    public static ComputerApiService getComputerApi() {
        return service;
    }
}
