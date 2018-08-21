package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.StringParameterValue;

@Canonical
class StringParameterDefinition {
    String propertyClass = null

    StringParameterValue defaultParameterValue = null

    String description = null

    String name = null

    String type = null

}
