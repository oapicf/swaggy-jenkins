package org.openapitools.api.interfaces;

import org.openapitools.model.DefaultCrumbIssuer;
import org.openapitools.model.*;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public interface CrumbIssuerService {

    /**
     * 
     * Retrieve CSRF protection token
     *
     * @return DefaultCrumbIssuer
     */
    DefaultCrumbIssuer getCrumb(
    );
}
