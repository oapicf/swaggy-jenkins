package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.BranchImpllinks;
import org.openapitools.model.BranchImplpermissions;
import org.openapitools.model.PipelineRunImpl;
import org.openapitools.model.StringParameterDefinition;

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
