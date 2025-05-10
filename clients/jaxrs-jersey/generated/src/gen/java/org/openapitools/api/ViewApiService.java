package org.openapitools.api;

import org.openapitools.api.*;

import org.glassfish.jersey.media.multipart.FormDataBodyPart;

import org.openapitools.model.ListView;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2025-05-10T02:40:27.424588979Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public abstract class ViewApiService {
    public abstract Response getView(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getViewConfig(String name,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postViewConfig(String name,String body,String jenkinsCrumb,SecurityContext securityContext) throws NotFoundException;
}
