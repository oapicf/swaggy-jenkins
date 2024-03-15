package org.openapitools.api;

import org.openapitools.api.*;

import org.glassfish.jersey.media.multipart.FormDataBodyPart;

import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2024-03-15T14:14:47.059425590Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public abstract class JobApiService {
    public abstract Response getJob(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getJobConfig(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getJobLastBuild(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getJobProgressiveText(String name,String number, @NotNull String start,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobBuild(String name, @NotNull String json,String token,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobConfig(String name,String body,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobDelete(String name,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobDisable(String name,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobEnable(String name,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobLastBuildStop(String name,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
}
