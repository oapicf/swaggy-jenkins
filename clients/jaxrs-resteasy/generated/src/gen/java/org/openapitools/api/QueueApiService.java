package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;



import org.openapitools.model.Queue;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.validation.constraints.*;
import javax.validation.Valid;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2026-02-01T01:24:31.058567730Z[Etc/UTC]", comments = "Generator version: 7.18.0")
public interface QueueApiService {
      Response getQueue(SecurityContext securityContext)
      throws NotFoundException;
      Response getQueueItem(String number,SecurityContext securityContext)
      throws NotFoundException;


}
