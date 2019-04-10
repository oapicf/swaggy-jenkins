package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;


import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2019-04-10T03:54:40.179Z[GMT]")
public interface JwtAuthApiService {
      public Response getJsonWebKey(Integer key, SecurityContext securityContext);
      public Response getJsonWebToken(Integer expiryTimeInMins, Integer maxExpiryTimeInMins, SecurityContext securityContext);
}
