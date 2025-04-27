package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.QueueBlockedItem;

@Canonical
class Queue {
    
    String propertyClass
    
    List<QueueBlockedItem> items = new ArrayList<>()
}
