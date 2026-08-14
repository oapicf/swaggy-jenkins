package org.openapitools.api.consumer;

import org.openapitools.model.Queue;
import org.openapitools.model.*;
import org.openapitools.api.interfaces.QueueService;
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
@RequestMapping("/queue")
public class QueueServiceController {

    @DubboReference
    private QueueService queueService;

    @RequestMapping(method = RequestMethod.GET, value = "/api/json")
    public Queue getQueue(
    ) {
        return queueService.getQueue();
    }

    @RequestMapping(method = RequestMethod.GET, value = "/item/{number}/api/json")
    public Queue getQueueItem(
        @RequestParam(name = "number") String number
    ) {
        return queueService.getQueueItem(number);
    }
}
