package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.BranchImpllinks;
import io.swagger.model.BranchImplpermissions;
import io.swagger.model.PipelineRunImpl;
import io.swagger.model.StringParameterDefinition;
import java.util.List;
@Canonical
class BranchImpl {

    String propertyClass = null

    String displayName = null

    Integer estimatedDurationInMillis = null

    String fullDisplayName = null

    String fullName = null

    String name = null

    String organization = null

    List<StringParameterDefinition> parameters = new ArrayList<StringParameterDefinition>()

    BranchImplpermissions permissions = null

    Integer weatherScore = null

    String pullRequest = null

    BranchImpllinks links = null

    PipelineRunImpl latestRun = null
  

}

