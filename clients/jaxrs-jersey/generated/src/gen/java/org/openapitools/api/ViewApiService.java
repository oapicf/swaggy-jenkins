package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import org.openapitools.model.ListView;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2019-04-10T13:18:53.975Z[GMT]")
public abstract class ViewApiService {
    public abstract Response getView(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getViewConfig(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postViewConfig(String name,String body,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
}
