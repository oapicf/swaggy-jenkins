package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;



import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-08-03T23:34:55.006Z")
public abstract class CreateItemApiService {
      public abstract Response postCreateItem(String name,String from,String mode,String body,String jenkinsCrumb,String contentType,SecurityContext securityContext)
      throws NotFoundException;
}
