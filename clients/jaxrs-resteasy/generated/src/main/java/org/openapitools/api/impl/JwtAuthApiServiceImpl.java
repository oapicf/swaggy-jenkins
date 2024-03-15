package org.openapitools.api.impl;

import org.openapitools.api.*;
import org.openapitools.model.*;



import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.validation.constraints.*;
import javax.validation.Valid;
import javax.enterprise.context.RequestScoped;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@RequestScoped
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2024-03-15T14:15:08.491800734Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class JwtAuthApiServiceImpl implements JwtAuthApiService {
      public Response getJsonWebKey(Integer key,SecurityContext securityContext)
      throws NotFoundException {
      // do some magic!
      return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
  }
      public Response getJsonWebToken(Integer expiryTimeInMins,Integer maxExpiryTimeInMins,SecurityContext securityContext)
      throws NotFoundException {
      // do some magic!
      return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
  }
}
