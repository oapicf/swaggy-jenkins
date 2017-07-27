package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HudsonmodelCauseAction;
import io.swagger.model.HudsonmodelFreeStyleBuild;
import io.swagger.model.HudsonmodelFreeStyleProject;
import java.util.List;
@Canonical
class HudsonmodelQueueLeftItem {

    String propertyClass = null

    List<HudsonmodelCauseAction> actions = new ArrayList<HudsonmodelCauseAction>()

    Boolean blocked = null

    Boolean buildable = null

    Integer id = null

    Integer inQueueSince = null

    String params = null

    Boolean stuck = null

    HudsonmodelFreeStyleProject task = null

    String url = null

    String why = null

    Boolean cancelled = null

    HudsonmodelFreeStyleBuild executable = null
  

}

