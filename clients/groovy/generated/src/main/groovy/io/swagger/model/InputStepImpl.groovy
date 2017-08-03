package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.InputStepImpllinks;
import io.swagger.model.StringParameterDefinition;
import java.util.List;
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

