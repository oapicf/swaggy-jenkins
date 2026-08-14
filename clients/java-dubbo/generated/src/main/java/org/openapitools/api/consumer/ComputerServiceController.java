package org.openapitools.api.consumer;

import org.openapitools.model.ComputerSet;
import org.openapitools.model.*;
import org.openapitools.api.interfaces.ComputerService;
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
@RequestMapping("/computer")
public class ComputerServiceController {

    @DubboReference
    private ComputerService computerService;

    @RequestMapping(method = RequestMethod.GET, value = "/api/json")
    public ComputerSet getComputer(
        @RequestParam(name = "depth") Integer depth
    ) {
        return computerService.getComputer(depth);
    }
}
