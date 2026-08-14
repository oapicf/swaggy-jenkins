package org.openapitools.api.interfaces;

import org.openapitools.model.Hudson;
import org.openapitools.model.*;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public interface ApiService {

    /**
     * 
     * Retrieve Jenkins details
     *
     * @return Hudson
     */
    Hudson getJenkins(
    );

    /**
     * 
     * Retrieve Jenkins headers
     *
     * @return void
     */
    void headJenkins(
    );
}
