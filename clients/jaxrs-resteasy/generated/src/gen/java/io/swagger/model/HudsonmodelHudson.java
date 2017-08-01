package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.HudsonmodelAllView;
import io.swagger.model.HudsonmodelFreeStyleProject;
import io.swagger.model.HudsonmodelHudsonassignedLabels;
import io.swagger.model.JenkinsmodelUnlabeledLoadStatistics;
import java.util.List;
import javax.validation.constraints.*;
import io.swagger.annotations.*;


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-07-25T10:45:08.057+10:00")
public class HudsonmodelHudson   {
  
  private String propertyClass = null;
  private List<HudsonmodelHudsonassignedLabels> assignedLabels = new ArrayList<HudsonmodelHudsonassignedLabels>();
  private String mode = null;
  private String nodeDescription = null;
  private String nodeName = null;
  private Integer numExecutors = null;
  private String description = null;
  private List<HudsonmodelFreeStyleProject> jobs = new ArrayList<HudsonmodelFreeStyleProject>();
  private HudsonmodelAllView primaryView = null;
  private Boolean quietingDown = null;
  private Integer slaveAgentPort = null;
  private JenkinsmodelUnlabeledLoadStatistics unlabeledLoad = null;
  private Boolean useCrumbs = null;
  private Boolean useSecurity = null;
  private List<HudsonmodelAllView> views = new ArrayList<HudsonmodelAllView>();

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("assignedLabels")
  public List<HudsonmodelHudsonassignedLabels> getAssignedLabels() {
    return assignedLabels;
  }
  public void setAssignedLabels(List<HudsonmodelHudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("mode")
  public String getMode() {
    return mode;
  }
  public void setMode(String mode) {
    this.mode = mode;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("nodeDescription")
  public String getNodeDescription() {
    return nodeDescription;
  }
  public void setNodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("nodeName")
  public String getNodeName() {
    return nodeName;
  }
  public void setNodeName(String nodeName) {
    this.nodeName = nodeName;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("numExecutors")
  public Integer getNumExecutors() {
    return numExecutors;
  }
  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("jobs")
  public List<HudsonmodelFreeStyleProject> getJobs() {
    return jobs;
  }
  public void setJobs(List<HudsonmodelFreeStyleProject> jobs) {
    this.jobs = jobs;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("primaryView")
  public HudsonmodelAllView getPrimaryView() {
    return primaryView;
  }
  public void setPrimaryView(HudsonmodelAllView primaryView) {
    this.primaryView = primaryView;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("quietingDown")
  public Boolean getQuietingDown() {
    return quietingDown;
  }
  public void setQuietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("slaveAgentPort")
  public Integer getSlaveAgentPort() {
    return slaveAgentPort;
  }
  public void setSlaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("unlabeledLoad")
  public JenkinsmodelUnlabeledLoadStatistics getUnlabeledLoad() {
    return unlabeledLoad;
  }
  public void setUnlabeledLoad(JenkinsmodelUnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("useCrumbs")
  public Boolean getUseCrumbs() {
    return useCrumbs;
  }
  public void setUseCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("useSecurity")
  public Boolean getUseSecurity() {
    return useSecurity;
  }
  public void setUseSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("views")
  public List<HudsonmodelAllView> getViews() {
    return views;
  }
  public void setViews(List<HudsonmodelAllView> views) {
    this.views = views;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonmodelHudson hudsonmodelHudson = (HudsonmodelHudson) o;
    return Objects.equals(propertyClass, hudsonmodelHudson.propertyClass) &&
        Objects.equals(assignedLabels, hudsonmodelHudson.assignedLabels) &&
        Objects.equals(mode, hudsonmodelHudson.mode) &&
        Objects.equals(nodeDescription, hudsonmodelHudson.nodeDescription) &&
        Objects.equals(nodeName, hudsonmodelHudson.nodeName) &&
        Objects.equals(numExecutors, hudsonmodelHudson.numExecutors) &&
        Objects.equals(description, hudsonmodelHudson.description) &&
        Objects.equals(jobs, hudsonmodelHudson.jobs) &&
        Objects.equals(primaryView, hudsonmodelHudson.primaryView) &&
        Objects.equals(quietingDown, hudsonmodelHudson.quietingDown) &&
        Objects.equals(slaveAgentPort, hudsonmodelHudson.slaveAgentPort) &&
        Objects.equals(unlabeledLoad, hudsonmodelHudson.unlabeledLoad) &&
        Objects.equals(useCrumbs, hudsonmodelHudson.useCrumbs) &&
        Objects.equals(useSecurity, hudsonmodelHudson.useSecurity) &&
        Objects.equals(views, hudsonmodelHudson.views);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, assignedLabels, mode, nodeDescription, nodeName, numExecutors, description, jobs, primaryView, quietingDown, slaveAgentPort, unlabeledLoad, useCrumbs, useSecurity, views);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelHudson {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    assignedLabels: ").append(toIndentedString(assignedLabels)).append("\n");
    sb.append("    mode: ").append(toIndentedString(mode)).append("\n");
    sb.append("    nodeDescription: ").append(toIndentedString(nodeDescription)).append("\n");
    sb.append("    nodeName: ").append(toIndentedString(nodeName)).append("\n");
    sb.append("    numExecutors: ").append(toIndentedString(numExecutors)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    jobs: ").append(toIndentedString(jobs)).append("\n");
    sb.append("    primaryView: ").append(toIndentedString(primaryView)).append("\n");
    sb.append("    quietingDown: ").append(toIndentedString(quietingDown)).append("\n");
    sb.append("    slaveAgentPort: ").append(toIndentedString(slaveAgentPort)).append("\n");
    sb.append("    unlabeledLoad: ").append(toIndentedString(unlabeledLoad)).append("\n");
    sb.append("    useCrumbs: ").append(toIndentedString(useCrumbs)).append("\n");
    sb.append("    useSecurity: ").append(toIndentedString(useSecurity)).append("\n");
    sb.append("    views: ").append(toIndentedString(views)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

