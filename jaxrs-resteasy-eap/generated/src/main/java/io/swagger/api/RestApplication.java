package io.swagger.api;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

import java.util.Set;
import java.util.HashSet;

import io.swagger.api.impl.ApiApiServiceImpl;
import io.swagger.api.impl.BlueApiServiceImpl;
import io.swagger.api.impl.ComputerApiServiceImpl;
import io.swagger.api.impl.CreateItemApiServiceImpl;
import io.swagger.api.impl.CreateViewApiServiceImpl;
import io.swagger.api.impl.CrumbIssuerApiServiceImpl;
import io.swagger.api.impl.JobApiServiceImpl;
import io.swagger.api.impl.QueueApiServiceImpl;
import io.swagger.api.impl.ViewApiServiceImpl;

@ApplicationPath("/")
public class RestApplication extends Application {


    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new HashSet<Class<?>>();
        resources.add(ApiApiServiceImpl.class);
        resources.add(BlueApiServiceImpl.class);
        resources.add(ComputerApiServiceImpl.class);
        resources.add(CreateItemApiServiceImpl.class);
        resources.add(CreateViewApiServiceImpl.class);
        resources.add(CrumbIssuerApiServiceImpl.class);
        resources.add(JobApiServiceImpl.class);
        resources.add(QueueApiServiceImpl.class);
        resources.add(ViewApiServiceImpl.class);

        return resources;
    }




}