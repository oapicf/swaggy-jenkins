package org.openapitools.api.provider;

import org.openapitools.model.*;
import org.openapitools.api.interfaces.CreateViewService;
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
public class CreateViewServiceImpl implements CreateViewService {

    private static final Logger logger = LoggerFactory.getLogger(CreateViewServiceImpl.class);

    @Override
    public void postCreateView(
        String name,
        String jenkinsCrumb,
        String contentType,
        String body
    ) {
        logger.info("Dubbo service method postCreateView called with parameters: name={}, jenkinsCrumb={}, contentType={}, body={}", name, jenkinsCrumb, contentType, body);
        
        // TODO: Implement your business logic here
    }
}
