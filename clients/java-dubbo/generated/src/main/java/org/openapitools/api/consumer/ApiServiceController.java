package org.openapitools.api.consumer;

import org.openapitools.model.Hudson;
import org.openapitools.model.*;
import org.openapitools.api.interfaces.ApiService;
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
@RequestMapping("/api")
public class ApiServiceController {

    @DubboReference
    private ApiService apiService;

    @RequestMapping(method = RequestMethod.GET, value = "/json")
    public Hudson getJenkins(
    ) {
        return apiService.getJenkins();
    }

    @RequestMapping(method = RequestMethod.HEAD, value = "/json")
    public void headJenkins(
    ) {
        apiService.headJenkins();
    }
}
