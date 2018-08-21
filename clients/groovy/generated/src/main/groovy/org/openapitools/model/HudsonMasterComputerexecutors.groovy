package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.FreeStyleBuild;

@Canonical
class HudsonMasterComputerexecutors {
    FreeStyleBuild currentExecutable = null

    Boolean idle = null

    Boolean likelyStuck = null

    Integer number = null

    Integer progress = null

    String propertyClass = null

}
