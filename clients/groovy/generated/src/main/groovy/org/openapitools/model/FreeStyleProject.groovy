package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProjectactions;
import org.openapitools.model.FreeStyleProjecthealthReport;
import org.openapitools.model.NullSCM;

@Canonical
class FreeStyleProject {
    
    String propertyClass
    
    String name
    
    String url
    
    String color
    
    List<FreeStyleProjectactions> actions = new ArrayList<>()
    
    String description
    
    String displayName
    
    String displayNameOrNull
    
    String fullDisplayName
    
    String fullName
    
    Boolean buildable
    
    List<FreeStyleBuild> builds = new ArrayList<>()
    
    FreeStyleBuild firstBuild
    
    List<FreeStyleProjecthealthReport> healthReport = new ArrayList<>()
    
    Boolean inQueue
    
    Boolean keepDependencies
    
    FreeStyleBuild lastBuild
    
    FreeStyleBuild lastCompletedBuild
    
    String lastFailedBuild
    
    FreeStyleBuild lastStableBuild
    
    FreeStyleBuild lastSuccessfulBuild
    
    String lastUnstableBuild
    
    String lastUnsuccessfulBuild
    
    Integer nextBuildNumber
    
    String queueItem
    
    Boolean concurrentBuild
    
    NullSCM scm
}
