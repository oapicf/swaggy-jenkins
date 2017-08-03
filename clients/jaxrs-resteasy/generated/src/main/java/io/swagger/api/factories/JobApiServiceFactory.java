package io.swagger.api.factories;

import io.swagger.api.JobApiService;
import io.swagger.api.impl.JobApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-08-03T23:34:55.006Z")
public class JobApiServiceFactory {

   private final static JobApiService service = new JobApiServiceImpl();

   public static JobApiService getJobApi()
   {
      return service;
   }
}
