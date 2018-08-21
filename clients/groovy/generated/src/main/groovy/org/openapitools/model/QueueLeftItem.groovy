package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;

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
