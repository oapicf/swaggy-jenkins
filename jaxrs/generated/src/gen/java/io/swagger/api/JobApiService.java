package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import io.swagger.model.HudsonmodelFreeStyleBuild;
import io.swagger.model.HudsonmodelFreeStyleProject;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-07-25T10:45:00.143+10:00")
public abstract class JobApiService {
    public abstract Response getJob(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getJobConfig(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getJobLastBuild(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getJobProgressiveText(String name,String number, @NotNull String start,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobBuild(String name, @NotNull String json, String token,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobConfig(String name,String body,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobDelete(String name,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobDisable(String name,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobEnable(String name,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postJobLastBuildStop(String name,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
}
