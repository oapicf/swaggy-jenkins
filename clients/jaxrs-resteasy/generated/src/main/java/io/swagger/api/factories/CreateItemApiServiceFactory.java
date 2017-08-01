package io.swagger.api.factories;

import io.swagger.api.CreateItemApiService;
import io.swagger.api.impl.CreateItemApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-07-25T10:45:08.057+10:00")
public class CreateItemApiServiceFactory {

   private final static CreateItemApiService service = new CreateItemApiServiceImpl();

   public static CreateItemApiService getCreateItemApi()
   {
      return service;
   }
}
