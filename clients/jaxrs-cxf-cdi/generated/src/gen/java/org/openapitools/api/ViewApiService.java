package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import org.openapitools.model.ListView;

import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2022-02-13T02:20:37.065080Z[Etc/UTC]")
public interface ViewApiService {
      public Response getView(String name, SecurityContext securityContext);
      public Response getViewConfig(String name, SecurityContext securityContext);
      public Response postViewConfig(String name, String body, String jenkinsCrumb, SecurityContext securityContext);
}
