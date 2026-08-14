package org.openapitools.api.consumer;

import org.openapitools.model.ListView;
import org.openapitools.model.*;
import org.openapitools.api.interfaces.ViewService;
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
@RequestMapping("/view")
public class ViewServiceController {

    @DubboReference
    private ViewService viewService;

    @RequestMapping(method = RequestMethod.GET, value = "/{name}/api/json")
    public ListView getView(
        @RequestParam(name = "name") String name
    ) {
        return viewService.getView(name);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/{name}/config.xml")
    public String getViewConfig(
        @RequestParam(name = "name") String name
    ) {
        return viewService.getViewConfig(name);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/{name}/config.xml")
    public void postViewConfig(
        @RequestParam(name = "name") String name,
        @RequestParam(name = "body") String body,
        @RequestParam(name = "jenkinsCrumb") String jenkinsCrumb
    ) {
        viewService.postViewConfig(name, body, jenkinsCrumb);
    }
}
