package org.openapitools.api.interfaces;

import org.openapitools.model.ListView;
import org.openapitools.model.*;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public interface ViewService {

    /**
     * 
     * Retrieve view details
     *
     * @param name Name of the view (required)
     * @return ListView
     */
    ListView getView(
        String name
    );

    /**
     * 
     * Retrieve view configuration
     *
     * @param name Name of the view (required)
     * @return String
     */
    String getViewConfig(
        String name
    );

    /**
     * 
     * Update view configuration
     *
     * @param name Name of the view (required)
     * @param body View configuration in config.xml format (required)
     * @param jenkinsCrumb CSRF protection token (optional)
     * @return void
     */
    void postViewConfig(
        String name,
        String body,
        String jenkinsCrumb
    );
}
