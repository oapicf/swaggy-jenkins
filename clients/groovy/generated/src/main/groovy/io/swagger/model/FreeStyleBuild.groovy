package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.CauseAction;
import io.swagger.model.EmptyChangeLogSet;
import java.util.List;
@Canonical
class FreeStyleBuild {

    String propertyClass = null

    Integer number = null

    String url = null

    List<CauseAction> actions = new ArrayList<CauseAction>()

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

    EmptyChangeLogSet changeSet = null
  

}

