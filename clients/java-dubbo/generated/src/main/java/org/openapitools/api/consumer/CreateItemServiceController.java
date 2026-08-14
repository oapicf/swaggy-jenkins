package org.openapitools.api.consumer;

import org.openapitools.model.*;
import org.openapitools.api.interfaces.CreateItemService;
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
@RequestMapping("/createItem")
public class CreateItemServiceController {

    @DubboReference
    private CreateItemService createItemService;

    @RequestMapping(method = RequestMethod.POST, value = "/")
    public void postCreateItem(
        @RequestParam(name = "name") String name,
        @RequestParam(name = "from") String from,
        @RequestParam(name = "mode") String mode,
        @RequestParam(name = "jenkinsCrumb") String jenkinsCrumb,
        @RequestParam(name = "contentType") String contentType,
        @RequestParam(name = "body") String body
    ) {
        createItemService.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body);
    }
}
