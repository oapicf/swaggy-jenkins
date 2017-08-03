package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.QueueBlockedItem;
import java.util.List;
@Canonical
class Queue {

    String propertyClass = null

    List<QueueBlockedItem> items = new ArrayList<QueueBlockedItem>()
  

}

