package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.EmptyChangeLogSet;

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
