package io.swagger.api.factories;

import io.swagger.api.BlueApiService;
import io.swagger.api.impl.BlueApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-07-25T10:45:08.057+10:00")
public class BlueApiServiceFactory {

   private final static BlueApiService service = new BlueApiServiceImpl();

   public static BlueApiService getBlueApi()
   {
      return service;
   }
}
