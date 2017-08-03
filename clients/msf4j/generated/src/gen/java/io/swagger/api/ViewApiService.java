package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import io.swagger.model.ListView;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaMSF4JServerCodegen", date = "2017-08-03T23:35:16.576Z")
public abstract class ViewApiService {
    public abstract Response getView(String name
 ) throws NotFoundException;
    public abstract Response getViewConfig(String name
 ) throws NotFoundException;
    public abstract Response postViewConfig(String name
 ,String body
 ,String jenkinsCrumb
 ) throws NotFoundException;
}
