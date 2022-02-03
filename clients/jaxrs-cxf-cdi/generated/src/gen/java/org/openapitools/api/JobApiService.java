package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;

import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2022-02-02T10:45:17.573327Z[Etc/UTC]")
public interface JobApiService {
      public Response getJob(String name, SecurityContext securityContext);
      public Response getJobConfig(String name, SecurityContext securityContext);
      public Response getJobLastBuild(String name, SecurityContext securityContext);
      public Response getJobProgressiveText(String name, String number, String start, SecurityContext securityContext);
      public Response postJobBuild(String name, String json, String token, String jenkinsCrumb, SecurityContext securityContext);
      public Response postJobConfig(String name, String body, String jenkinsCrumb, SecurityContext securityContext);
      public Response postJobDelete(String name, String jenkinsCrumb, SecurityContext securityContext);
      public Response postJobDisable(String name, String jenkinsCrumb, SecurityContext securityContext);
      public Response postJobEnable(String name, String jenkinsCrumb, SecurityContext securityContext);
      public Response postJobLastBuildStop(String name, String jenkinsCrumb, SecurityContext securityContext);
}
