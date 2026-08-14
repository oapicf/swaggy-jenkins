package org.openapitools.api.provider;

import org.openapitools.model.Hudson;
import org.openapitools.model.*;
import org.openapitools.api.interfaces.ApiService;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import org.apache.dubbo.config.annotation.DubboService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

@DubboService
public class ApiServiceImpl implements ApiService {

    private static final Logger logger = LoggerFactory.getLogger(ApiServiceImpl.class);

    @Override
    public Hudson getJenkins(
    ) {
        logger.info("Dubbo service method getJenkins called with parameters: ");
        
        // TODO: Implement your business logic here
        // Replace this with actual implementation
        return null;
    }

    @Override
    public void headJenkins(
    ) {
        logger.info("Dubbo service method headJenkins called with parameters: ");
        
        // TODO: Implement your business logic here
    }
}
