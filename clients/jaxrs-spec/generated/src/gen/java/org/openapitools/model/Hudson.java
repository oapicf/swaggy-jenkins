package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AllView;
import org.openapitools.model.FreeStyleProject;
import org.openapitools.model.HudsonassignedLabels;
import org.openapitools.model.UnlabeledLoadStatistics;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("Hudson")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2024-03-15T14:15:46.626169068Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class Hudson   {
  private @Valid String propertyClass;
  private @Valid List<@Valid HudsonassignedLabels> assignedLabels;
  private @Valid String mode;
  private @Valid String nodeDescription;
  private @Valid String nodeName;
  private @Valid Integer numExecutors;
  private @Valid String description;
  private @Valid List<@Valid FreeStyleProject> jobs;
  private @Valid AllView primaryView;
  private @Valid Boolean quietingDown;
  private @Valid Integer slaveAgentPort;
  private @Valid UnlabeledLoadStatistics unlabeledLoad;
  private @Valid Boolean useCrumbs;
  private @Valid Boolean useSecurity;
  private @Valid List<@Valid AllView> views;

  /**
   **/
  public Hudson propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public Hudson assignedLabels(List<@Valid HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("assignedLabels")
  public List<HudsonassignedLabels> getAssignedLabels() {
    return assignedLabels;
  }

  @JsonProperty("assignedLabels")
  public void setAssignedLabels(List<@Valid HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
  }

  public Hudson addAssignedLabelsItem(HudsonassignedLabels assignedLabelsItem) {
    if (this.assignedLabels == null) {
      this.assignedLabels = new ArrayList<>();
    }

    this.assignedLabels.add(assignedLabelsItem);
    return this;
  }

  public Hudson removeAssignedLabelsItem(HudsonassignedLabels assignedLabelsItem) {
    if (assignedLabelsItem != null && this.assignedLabels != null) {
      this.assignedLabels.remove(assignedLabelsItem);
    }

    return this;
  }
  /**
   **/
  public Hudson mode(String mode) {
    this.mode = mode;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("mode")
  public String getMode() {
    return mode;
  }

  @JsonProperty("mode")
  public void setMode(String mode) {
    this.mode = mode;
  }

  /**
   **/
  public Hudson nodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("nodeDescription")
  public String getNodeDescription() {
    return nodeDescription;
  }

  @JsonProperty("nodeDescription")
  public void setNodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
  }

  /**
   **/
  public Hudson nodeName(String nodeName) {
    this.nodeName = nodeName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("nodeName")
  public String getNodeName() {
    return nodeName;
  }

  @JsonProperty("nodeName")
  public void setNodeName(String nodeName) {
    this.nodeName = nodeName;
  }

  /**
   **/
  public Hudson numExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("numExecutors")
  public Integer getNumExecutors() {
    return numExecutors;
  }

  @JsonProperty("numExecutors")
  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  /**
   **/
  public Hudson description(String description) {
    this.description = description;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  @JsonProperty("description")
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  public Hudson jobs(List<@Valid FreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("jobs")
  public List<FreeStyleProject> getJobs() {
    return jobs;
  }

  @JsonProperty("jobs")
  public void setJobs(List<@Valid FreeStyleProject> jobs) {
    this.jobs = jobs;
  }

  public Hudson addJobsItem(FreeStyleProject jobsItem) {
    if (this.jobs == null) {
      this.jobs = new ArrayList<>();
    }

    this.jobs.add(jobsItem);
    return this;
  }

  public Hudson removeJobsItem(FreeStyleProject jobsItem) {
    if (jobsItem != null && this.jobs != null) {
      this.jobs.remove(jobsItem);
    }

    return this;
  }
  /**
   **/
  public Hudson primaryView(AllView primaryView) {
    this.primaryView = primaryView;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("primaryView")
  public AllView getPrimaryView() {
    return primaryView;
  }

  @JsonProperty("primaryView")
  public void setPrimaryView(AllView primaryView) {
    this.primaryView = primaryView;
  }

  /**
   **/
  public Hudson quietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("quietingDown")
  public Boolean getQuietingDown() {
    return quietingDown;
  }

  @JsonProperty("quietingDown")
  public void setQuietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
  }

  /**
   **/
  public Hudson slaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("slaveAgentPort")
  public Integer getSlaveAgentPort() {
    return slaveAgentPort;
  }

  @JsonProperty("slaveAgentPort")
  public void setSlaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
  }

  /**
   **/
  public Hudson unlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("unlabeledLoad")
  public UnlabeledLoadStatistics getUnlabeledLoad() {
    return unlabeledLoad;
  }

  @JsonProperty("unlabeledLoad")
  public void setUnlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
  }

  /**
   **/
  public Hudson useCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("useCrumbs")
  public Boolean getUseCrumbs() {
    return useCrumbs;
  }

  @JsonProperty("useCrumbs")
  public void setUseCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
  }

  /**
   **/
  public Hudson useSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("useSecurity")
  public Boolean getUseSecurity() {
    return useSecurity;
  }

  @JsonProperty("useSecurity")
  public void setUseSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
  }

  /**
   **/
  public Hudson views(List<@Valid AllView> views) {
    this.views = views;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("views")
  public List<AllView> getViews() {
    return views;
  }

  @JsonProperty("views")
  public void setViews(List<@Valid AllView> views) {
    this.views = views;
  }

  public Hudson addViewsItem(AllView viewsItem) {
    if (this.views == null) {
      this.views = new ArrayList<>();
    }

    this.views.add(viewsItem);
    return this;
  }

  public Hudson removeViewsItem(AllView viewsItem) {
    if (viewsItem != null && this.views != null) {
      this.views.remove(viewsItem);
    }

    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Hudson hudson = (Hudson) o;
    return Objects.equals(this.propertyClass, hudson.propertyClass) &&
        Objects.equals(this.assignedLabels, hudson.assignedLabels) &&
        Objects.equals(this.mode, hudson.mode) &&
        Objects.equals(this.nodeDescription, hudson.nodeDescription) &&
        Objects.equals(this.nodeName, hudson.nodeName) &&
        Objects.equals(this.numExecutors, hudson.numExecutors) &&
        Objects.equals(this.description, hudson.description) &&
        Objects.equals(this.jobs, hudson.jobs) &&
        Objects.equals(this.primaryView, hudson.primaryView) &&
        Objects.equals(this.quietingDown, hudson.quietingDown) &&
        Objects.equals(this.slaveAgentPort, hudson.slaveAgentPort) &&
        Objects.equals(this.unlabeledLoad, hudson.unlabeledLoad) &&
        Objects.equals(this.useCrumbs, hudson.useCrumbs) &&
        Objects.equals(this.useSecurity, hudson.useSecurity) &&
        Objects.equals(this.views, hudson.views);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, assignedLabels, mode, nodeDescription, nodeName, numExecutors, description, jobs, primaryView, quietingDown, slaveAgentPort, unlabeledLoad, useCrumbs, useSecurity, views);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Hudson {\n");
    
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

