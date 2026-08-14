package org.openapitools.api.interfaces;

import org.openapitools.model.Queue;
import org.openapitools.model.*;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public interface QueueService {

    /**
     * 
     * Retrieve queue details
     *
     * @return Queue
     */
    Queue getQueue(
    );

    /**
     * 
     * Retrieve queued item details
     *
     * @param number Queue number (required)
     * @return Queue
     */
    Queue getQueueItem(
        String number
    );
}
