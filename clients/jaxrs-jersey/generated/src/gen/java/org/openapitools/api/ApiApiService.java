package org.openapitools.api;

import org.openapitools.api.*;

import org.glassfish.jersey.media.multipart.FormDataBodyPart;

import org.openapitools.model.Hudson;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2026-11-01T13:20:58.384357833Z[Etc/UTC]", comments = "Generator version: 7.26.0")
public abstract class ApiApiService {
    public abstract Response getJenkins(SecurityContext securityContext) throws NotFoundException;
    public abstract Response headJenkins(SecurityContext securityContext) throws NotFoundException;
}
