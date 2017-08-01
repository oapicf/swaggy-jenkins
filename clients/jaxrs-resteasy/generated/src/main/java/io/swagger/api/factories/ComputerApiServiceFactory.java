package io.swagger.api.factories;

import io.swagger.api.ComputerApiService;
import io.swagger.api.impl.ComputerApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-07-25T10:45:08.057+10:00")
public class ComputerApiServiceFactory {

   private final static ComputerApiService service = new ComputerApiServiceImpl();

   public static ComputerApiService getComputerApi()
   {
      return service;
   }
}
