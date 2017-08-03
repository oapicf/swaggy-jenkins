package io.swagger.api.factories;

import io.swagger.api.QueueApiService;
import io.swagger.api.impl.QueueApiServiceImpl;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-08-03T23:34:55.006Z")
public class QueueApiServiceFactory {

   private final static QueueApiService service = new QueueApiServiceImpl();

   public static QueueApiService getQueueApi()
   {
      return service;
   }
}
