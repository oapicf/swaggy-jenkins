package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.AllView;
import org.openapitools.model.FreeStyleProject;
import org.openapitools.model.HudsonassignedLabels;
import org.openapitools.model.UnlabeledLoadStatistics;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2022-06-04T08:08:14.272389Z[Etc/UTC]")
public class Hudson   {
  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("assignedLabels")
  private List<HudsonassignedLabels> assignedLabels = null;

  @JsonProperty("mode")
  private String mode;

  @JsonProperty("nodeDescription")
  private String nodeDescription;

  @JsonProperty("nodeName")
  private String nodeName;

  @JsonProperty("numExecutors")
  private Integer numExecutors;

  @JsonProperty("description")
  private String description;

  @JsonProperty("jobs")
  private List<FreeStyleProject> jobs = null;

  @JsonProperty("primaryView")
  private AllView primaryView;

  @JsonProperty("quietingDown")
  private Boolean quietingDown;

  @JsonProperty("slaveAgentPort")
  private Integer slaveAgentPort;

  @JsonProperty("unlabeledLoad")
  private UnlabeledLoadStatistics unlabeledLoad;

  @JsonProperty("useCrumbs")
  private Boolean useCrumbs;

  @JsonProperty("useSecurity")
  private Boolean useSecurity;

  @JsonProperty("views")
  private List<AllView> views = null;

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
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public Hudson assignedLabels(List<HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("assignedLabels")
  public List<HudsonassignedLabels> getAssignedLabels() {
    return assignedLabels;
  }
  public void setAssignedLabels(List<HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
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
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  public Hudson jobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("jobs")
  public List<FreeStyleProject> getJobs() {
    return jobs;
  }
  public void setJobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
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
  public void setUseSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
  }

  /**
   **/
  public Hudson views(List<AllView> views) {
    this.views = views;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("views")
  public List<AllView> getViews() {
    return views;
  }
  public void setViews(List<AllView> views) {
    this.views = views;
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
    return Objects.equals(propertyClass, hudson.propertyClass) &&
        Objects.equals(assignedLabels, hudson.assignedLabels) &&
        Objects.equals(mode, hudson.mode) &&
        Objects.equals(nodeDescription, hudson.nodeDescription) &&
        Objects.equals(nodeName, hudson.nodeName) &&
        Objects.equals(numExecutors, hudson.numExecutors) &&
        Objects.equals(description, hudson.description) &&
        Objects.equals(jobs, hudson.jobs) &&
        Objects.equals(primaryView, hudson.primaryView) &&
        Objects.equals(quietingDown, hudson.quietingDown) &&
        Objects.equals(slaveAgentPort, hudson.slaveAgentPort) &&
        Objects.equals(unlabeledLoad, hudson.unlabeledLoad) &&
        Objects.equals(useCrumbs, hudson.useCrumbs) &&
        Objects.equals(useSecurity, hudson.useSecurity) &&
        Objects.equals(views, hudson.views);
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

