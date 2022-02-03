package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;


import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2022-02-02T10:45:17.573327Z[Etc/UTC]")
public interface JwtAuthApiService {
      public Response getJsonWebKey(Integer key, SecurityContext securityContext);
      public Response getJsonWebToken(Integer expiryTimeInMins, Integer maxExpiryTimeInMins, SecurityContext securityContext);
}
