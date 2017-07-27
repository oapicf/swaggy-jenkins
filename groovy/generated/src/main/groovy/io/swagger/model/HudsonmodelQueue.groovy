package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HudsonmodelQueueBlockedItem;
import java.util.List;
@Canonical
class HudsonmodelQueue {

    String propertyClass = null

    List<HudsonmodelQueueBlockedItem> items = new ArrayList<HudsonmodelQueueBlockedItem>()
  

}

