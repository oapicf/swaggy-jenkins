package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;



import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.validation.constraints.*;
import javax.validation.Valid;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2024-03-15T14:15:08.491800734Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public interface JwtAuthApiService {
      Response getJsonWebKey(Integer key,SecurityContext securityContext)
      throws NotFoundException;
      Response getJsonWebToken(Integer expiryTimeInMins,Integer maxExpiryTimeInMins,SecurityContext securityContext)
      throws NotFoundException;
}
