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

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2026-08-15T12:30:03.915500622Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public interface CreateItemApiService {
      Response postCreateItem(String name,String from,String mode,String jenkinsCrumb,String contentType,String body,SecurityContext securityContext)
      throws NotFoundException;


}
