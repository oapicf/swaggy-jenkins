package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.CauseAction;
import io.swagger.model.FreeStyleBuild;
import io.swagger.model.FreeStyleProject;
import java.util.List;
@Canonical
class QueueLeftItem {

    String propertyClass = null

    List<CauseAction> actions = new ArrayList<CauseAction>()

    Boolean blocked = null

    Boolean buildable = null

    Integer id = null

    Integer inQueueSince = null

    String params = null

    Boolean stuck = null

    FreeStyleProject task = null

    String url = null

    String why = null

    Boolean cancelled = null

    FreeStyleBuild executable = null
  

}

