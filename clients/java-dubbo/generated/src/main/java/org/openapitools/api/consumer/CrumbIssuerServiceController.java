package org.openapitools.api.consumer;

import org.openapitools.model.DefaultCrumbIssuer;
import org.openapitools.model.*;
import org.openapitools.api.interfaces.CrumbIssuerService;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

@RestController
@RequestMapping("/crumbIssuer")
public class CrumbIssuerServiceController {

    @DubboReference
    private CrumbIssuerService crumbIssuerService;

    @RequestMapping(method = RequestMethod.GET, value = "/api/json")
    public DefaultCrumbIssuer getCrumb(
    ) {
        return crumbIssuerService.getCrumb();
    }
}
