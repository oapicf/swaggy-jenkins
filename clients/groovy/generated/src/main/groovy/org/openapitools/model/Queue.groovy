package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.QueueBlockedItem;

@Canonical
class Queue {
    String propertyClass = null

    List<QueueBlockedItem> items = new ArrayList<QueueBlockedItem>()

}
