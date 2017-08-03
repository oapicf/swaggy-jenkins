package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.PipelineRunNodeedges;
import java.util.List;
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

