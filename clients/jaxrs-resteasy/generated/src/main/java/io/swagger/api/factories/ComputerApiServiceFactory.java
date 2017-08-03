package io.swagger.api.factories;

import io.swagger.api.ComputerApiService;
import io.swagger.api.impl.ComputerApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-08-03T23:34:55.006Z")
public class ComputerApiServiceFactory {

   private final static ComputerApiService service = new ComputerApiServiceImpl();

   public static ComputerApiService getComputerApi()
   {
      return service;
   }
}
