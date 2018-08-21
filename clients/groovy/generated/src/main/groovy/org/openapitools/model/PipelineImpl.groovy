package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.PipelineImpllinks;

@Canonical
class PipelineImpl {
    String propertyClass = null

    String displayName = null

    Integer estimatedDurationInMillis = null

    String fullName = null

    String latestRun = null

    String name = null

    String organization = null

    Integer weatherScore = null

    PipelineImpllinks links = null

}
