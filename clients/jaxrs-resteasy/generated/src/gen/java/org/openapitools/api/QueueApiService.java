package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;


import org.openapitools.model.Queue;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2018-08-21T02:12:32.019Z[GMT]")
public interface QueueApiService {
      Response getQueue(SecurityContext securityContext)
      throws NotFoundException;
      Response getQueueItem(String number,SecurityContext securityContext)
      throws NotFoundException;
}
