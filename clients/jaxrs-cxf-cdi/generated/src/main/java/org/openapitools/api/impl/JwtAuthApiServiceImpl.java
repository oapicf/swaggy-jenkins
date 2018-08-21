package org.openapitools.api.impl;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;


import java.util.List;

import java.io.InputStream;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@RequestScoped
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2018-08-21T02:12:22.737Z[GMT]")
public class JwtAuthApiServiceImpl implements JwtAuthApiService {
      @Override
      public Response getJsonWebKey(Integer key, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getJsonWebToken(Integer expiryTimeInMins, Integer maxExpiryTimeInMins, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
}
