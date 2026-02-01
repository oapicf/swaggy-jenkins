package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;


import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2026-02-01T01:24:06.543745401Z[Etc/UTC]", comments = "Generator version: 7.18.0")
public abstract class CreateViewApiService {
    public abstract Response postCreateView(String name
 ,String jenkinsCrumb
 ,String contentType
 ,String body
 ) throws NotFoundException;
}
