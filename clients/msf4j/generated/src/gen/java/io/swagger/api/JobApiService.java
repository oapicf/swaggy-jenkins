package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import io.swagger.model.FreeStyleBuild;
import io.swagger.model.FreeStyleProject;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaMSF4JServerCodegen", date = "2017-08-03T23:35:16.576Z")
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
