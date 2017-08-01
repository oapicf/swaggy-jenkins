package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.HudsonmodelCauseAction;
import io.swagger.model.HudsonscmEmptyChangeLogSet;
import java.util.List;
@Canonical
class HudsonmodelFreeStyleBuild {

    String propertyClass = null

    Integer number = null

    String url = null

    List<HudsonmodelCauseAction> actions = new ArrayList<HudsonmodelCauseAction>()

    Boolean building = null

    String description = null

    String displayName = null

    Integer duration = null

    Integer estimatedDuration = null

    String executor = null

    String fullDisplayName = null

    String id = null

    Boolean keepLog = null

    Integer queueId = null

    String result = null

    Integer timestamp = null

    String builtOn = null

    HudsonscmEmptyChangeLogSet changeSet = null
  

}

