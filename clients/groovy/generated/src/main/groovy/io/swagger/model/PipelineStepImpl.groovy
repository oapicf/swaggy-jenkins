package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.InputStepImpl;
import io.swagger.model.PipelineStepImpllinks;
@Canonical
class PipelineStepImpl {

    String propertyClass = null

    PipelineStepImpllinks links = null

    String displayName = null

    Integer durationInMillis = null

    String id = null

    InputStepImpl input = null

    String result = null

    String startTime = null

    String state = null
  

}

