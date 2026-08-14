package org.openapitools.api.interfaces;

import org.openapitools.model.*;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public interface CreateViewService {

    /**
     * 
     * Create a new view using view configuration
     *
     * @param name Name of the new view (required)
     * @param jenkinsCrumb CSRF protection token (optional)
     * @param contentType Content type header application/xml (optional)
     * @param body View configuration in config.xml format (optional)
     * @return void
     */
    void postCreateView(
        String name,
        String jenkinsCrumb,
        String contentType,
        String body
    );
}
