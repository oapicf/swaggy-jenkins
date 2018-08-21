package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.InputStepImpllinks;
import org.openapitools.model.StringParameterDefinition;

@Canonical
class InputStepImpl {
    String propertyClass = null

    InputStepImpllinks links = null

    String id = null

    String message = null

    String ok = null

    List<StringParameterDefinition> parameters = new ArrayList<StringParameterDefinition>()

    String submitter = null

}
