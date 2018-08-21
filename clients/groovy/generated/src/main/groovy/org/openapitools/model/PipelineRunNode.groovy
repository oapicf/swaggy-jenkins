package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.PipelineRunNodeedges;

@Canonical
class PipelineRunNode {
    String propertyClass = null

    String displayName = null

    Integer durationInMillis = null

    List<PipelineRunNodeedges> edges = new ArrayList<PipelineRunNodeedges>()

    String id = null

    String result = null

    String startTime = null

    String state = null

}
