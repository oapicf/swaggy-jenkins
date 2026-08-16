package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;



import org.openapitools.model.ListView;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.validation.constraints.*;
import javax.validation.Valid;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2026-08-16T01:39:19.365092041Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public interface ViewApiService {
      Response getView(String name,SecurityContext securityContext)
      throws NotFoundException;
      Response getViewConfig(String name,SecurityContext securityContext)
      throws NotFoundException;
      Response postViewConfig(String name,String body,String jenkinsCrumb,SecurityContext securityContext)
      throws NotFoundException;


}
