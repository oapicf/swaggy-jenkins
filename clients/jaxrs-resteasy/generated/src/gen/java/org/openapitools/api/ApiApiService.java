package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;


import org.openapitools.model.Hudson;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2022-02-09T13:05:36.867957Z[Etc/UTC]")
public interface ApiApiService {
      Response getJenkins(SecurityContext securityContext)
      throws NotFoundException;
      Response headJenkins(SecurityContext securityContext)
      throws NotFoundException;
}
