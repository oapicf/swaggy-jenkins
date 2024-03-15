package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import org.openapitools.model.ListView;

import java.util.List;

import java.io.InputStream;

import javax.validation.constraints.*;
import javax.validation.Valid;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2024-03-15T14:14:28.646664125Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public interface ViewApiService {
      public Response getView(String name, SecurityContext securityContext);
      public Response getViewConfig(String name, SecurityContext securityContext);
      public Response postViewConfig(String name, String body, String jenkinsCrumb, SecurityContext securityContext);
}
