package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;



import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2022-06-04T08:09:04.819692Z[Etc/UTC]")
public interface JwtAuthApiService {
      Response getJsonWebKey(Integer key,SecurityContext securityContext)
      throws NotFoundException;
      Response getJsonWebToken(Integer expiryTimeInMins,Integer maxExpiryTimeInMins,SecurityContext securityContext)
      throws NotFoundException;
}
