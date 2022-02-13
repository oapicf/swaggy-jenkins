package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;


import org.openapitools.model.ListView;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2022-02-13T02:21:30.640855Z[Etc/UTC]")
public interface ViewApiService {
      Response getView(String name,SecurityContext securityContext)
      throws NotFoundException;
      Response getViewConfig(String name,SecurityContext securityContext)
      throws NotFoundException;
      Response postViewConfig(String name,String body,String jenkinsCrumb,SecurityContext securityContext)
      throws NotFoundException;
}
