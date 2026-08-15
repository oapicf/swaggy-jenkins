package org.openapitools.api;

import org.openapitools.api.*;

import org.glassfish.jersey.media.multipart.FormDataBodyPart;

import org.openapitools.model.Queue;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2026-08-15T02:28:22.149338174Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public abstract class QueueApiService {
    public abstract Response getQueue(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getQueueItem(String number,SecurityContext securityContext) throws NotFoundException;
}
