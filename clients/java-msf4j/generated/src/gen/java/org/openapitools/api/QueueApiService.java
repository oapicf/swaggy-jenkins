package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import org.openapitools.model.Queue;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2025-04-27T08:09:22.488100288Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public abstract class QueueApiService {
    public abstract Response getQueue() throws NotFoundException;
    public abstract Response getQueueItem(String number
 ) throws NotFoundException;
}
