package org.openapitools.api;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

import java.util.Set;
import java.util.HashSet;

import org.openapitools.api.impl.ApiApiServiceImpl;
import org.openapitools.api.impl.BlueApiServiceImpl;
import org.openapitools.api.impl.ComputerApiServiceImpl;
import org.openapitools.api.impl.CreateItemApiServiceImpl;
import org.openapitools.api.impl.CreateViewApiServiceImpl;
import org.openapitools.api.impl.CrumbIssuerApiServiceImpl;
import org.openapitools.api.impl.JobApiServiceImpl;
import org.openapitools.api.impl.JwtAuthApiServiceImpl;
import org.openapitools.api.impl.QueueApiServiceImpl;
import org.openapitools.api.impl.ViewApiServiceImpl;

@ApplicationPath("")
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
        resources.add(JwtAuthApiServiceImpl.class);
        resources.add(QueueApiServiceImpl.class);
        resources.add(ViewApiServiceImpl.class);

        return resources;
    }




}