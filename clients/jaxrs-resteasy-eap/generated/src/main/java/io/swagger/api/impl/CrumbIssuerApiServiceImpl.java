package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;


import io.swagger.model.DefaultCrumbIssuer;

import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyEapServerCodegen", date = "2017-08-03T23:34:59.445Z")
public class CrumbIssuerApiServiceImpl implements CrumbIssuerApi {
      public Response getCrumb(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
}
