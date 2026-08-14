package org.openapitools.api.provider;

import org.openapitools.model.*;
import org.openapitools.api.interfaces.CreateItemService;
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
public class CreateItemServiceImpl implements CreateItemService {

    private static final Logger logger = LoggerFactory.getLogger(CreateItemServiceImpl.class);

    @Override
    public void postCreateItem(
        String name,
        String from,
        String mode,
        String jenkinsCrumb,
        String contentType,
        String body
    ) {
        logger.info("Dubbo service method postCreateItem called with parameters: name={}, from={}, mode={}, jenkinsCrumb={}, contentType={}, body={}", name, from, mode, jenkinsCrumb, contentType, body);
        
        // TODO: Implement your business logic here
    }
}
