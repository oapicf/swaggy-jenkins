package org.openapitools.api.consumer;

import org.openapitools.model.*;
import org.openapitools.api.interfaces.CreateViewService;
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
@RequestMapping("/createView")
public class CreateViewServiceController {

    @DubboReference
    private CreateViewService createViewService;

    @RequestMapping(method = RequestMethod.POST, value = "/")
    public void postCreateView(
        @RequestParam(name = "name") String name,
        @RequestParam(name = "jenkinsCrumb") String jenkinsCrumb,
        @RequestParam(name = "contentType") String contentType,
        @RequestParam(name = "body") String body
    ) {
        createViewService.postCreateView(name, jenkinsCrumb, contentType, body);
    }
}
