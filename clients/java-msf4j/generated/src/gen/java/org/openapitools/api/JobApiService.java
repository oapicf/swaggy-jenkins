package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2018-08-21T02:11:56.740Z[GMT]")
public abstract class JobApiService {
    public abstract Response getJob(String name
 ) throws NotFoundException;
    public abstract Response getJobConfig(String name
 ) throws NotFoundException;
    public abstract Response getJobLastBuild(String name
 ) throws NotFoundException;
    public abstract Response getJobProgressiveText(String name
 ,String number
 ,String start
 ) throws NotFoundException;
    public abstract Response postJobBuild(String name
 ,String json
 ,String token
 ,String jenkinsCrumb
 ) throws NotFoundException;
    public abstract Response postJobConfig(String name
 ,String body
 ,String jenkinsCrumb
 ) throws NotFoundException;
    public abstract Response postJobDelete(String name
 ,String jenkinsCrumb
 ) throws NotFoundException;
    public abstract Response postJobDisable(String name
 ,String jenkinsCrumb
 ) throws NotFoundException;
    public abstract Response postJobEnable(String name
 ,String jenkinsCrumb
 ) throws NotFoundException;
    public abstract Response postJobLastBuildStop(String name
 ,String jenkinsCrumb
 ) throws NotFoundException;
}
