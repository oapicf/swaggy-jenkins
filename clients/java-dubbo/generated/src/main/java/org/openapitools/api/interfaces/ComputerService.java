package org.openapitools.api.interfaces;

import org.openapitools.model.ComputerSet;
import org.openapitools.model.*;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public interface ComputerService {

    /**
     * 
     * Retrieve computer details
     *
     * @param depth Recursion depth in response model (required)
     * @return ComputerSet
     */
    ComputerSet getComputer(
        Integer depth
    );
}
