package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.InputStepImpl;
import org.openapitools.model.PipelineStepImpllinks;

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
