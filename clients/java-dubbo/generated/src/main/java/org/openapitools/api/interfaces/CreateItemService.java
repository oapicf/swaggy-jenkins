package org.openapitools.api.interfaces;

import org.openapitools.model.*;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public interface CreateItemService {

    /**
     * 
     * Create a new job using job configuration, or copied from an existing job
     *
     * @param name Name of the new job (required)
     * @param from Existing job to copy from (optional)
     * @param mode Set to &#39;copy&#39; for copying an existing job (optional)
     * @param jenkinsCrumb CSRF protection token (optional)
     * @param contentType Content type header application/xml (optional)
     * @param body Job configuration in config.xml format (optional)
     * @return void
     */
    void postCreateItem(
        String name,
        String from,
        String mode,
        String jenkinsCrumb,
        String contentType,
        String body
    );
}
