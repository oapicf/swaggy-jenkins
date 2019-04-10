package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.AllView;
import com.prokarma.pkmst.model.FreeStyleProject;
import com.prokarma.pkmst.model.HudsonassignedLabels;
import com.prokarma.pkmst.model.UnlabeledLoadStatistics;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * Hudson
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2019-04-10T13:18:21.348Z[GMT]")

public class Hudson   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("assignedLabels")
  
  private List<HudsonassignedLabels> assignedLabels = null;

  @JsonProperty("mode")
  private String mode = null;

  @JsonProperty("nodeDescription")
  private String nodeDescription = null;

  @JsonProperty("nodeName")
  private String nodeName = null;

  @JsonProperty("numExecutors")
  private Integer numExecutors = null;

  @JsonProperty("description")
  private String description = null;

  @JsonProperty("jobs")
  
  private List<FreeStyleProject> jobs = null;

  @JsonProperty("primaryView")
  private AllView primaryView = null;

  @JsonProperty("quietingDown")
  private Boolean quietingDown = null;

  @JsonProperty("slaveAgentPort")
  private Integer slaveAgentPort = null;

  @JsonProperty("unlabeledLoad")
  private UnlabeledLoadStatistics unlabeledLoad = null;

  @JsonProperty("useCrumbs")
  private Boolean useCrumbs = null;

  @JsonProperty("useSecurity")
  private Boolean useSecurity = null;

  @JsonProperty("views")
  
  private List<AllView> views = null;

  public Hudson propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public Hudson assignedLabels(List<HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
    return this;
  }

  public Hudson addAssignedLabelsItem(HudsonassignedLabels assignedLabelsItem) {
    if (this.assignedLabels == null) {
      this.assignedLabels = new ArrayList<>();
    }
    this.assignedLabels.add(assignedLabelsItem);
    return this;
  }

   /**
   * Get assignedLabels
   * @return assignedLabels
  **/
  @ApiModelProperty(value = "")
  public List<HudsonassignedLabels> getAssignedLabels() {
    return assignedLabels;
  }

  public void setAssignedLabels(List<HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
  }

  public Hudson mode(String mode) {
    this.mode = mode;
    return this;
  }

   /**
   * Get mode
   * @return mode
  **/
  @ApiModelProperty(value = "")
  public String getMode() {
    return mode;
  }

  public void setMode(String mode) {
    this.mode = mode;
  }

  public Hudson nodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
    return this;
  }

   /**
   * Get nodeDescription
   * @return nodeDescription
  **/
  @ApiModelProperty(value = "")
  public String getNodeDescription() {
    return nodeDescription;
  }

  public void setNodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
  }

  public Hudson nodeName(String nodeName) {
    this.nodeName = nodeName;
    return this;
  }

   /**
   * Get nodeName
   * @return nodeName
  **/
  @ApiModelProperty(value = "")
  public String getNodeName() {
    return nodeName;
  }

  public void setNodeName(String nodeName) {
    this.nodeName = nodeName;
  }

  public Hudson numExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

   /**
   * Get numExecutors
   * @return numExecutors
  **/
  @ApiModelProperty(value = "")
  public Integer getNumExecutors() {
    return numExecutors;
  }

  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  public Hudson description(String description) {
    this.description = description;
    return this;
  }

   /**
   * Get description
   * @return description
  **/
  @ApiModelProperty(value = "")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Hudson jobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  public Hudson addJobsItem(FreeStyleProject jobsItem) {
    if (this.jobs == null) {
      this.jobs = new ArrayList<>();
    }
    this.jobs.add(jobsItem);
    return this;
  }

   /**
   * Get jobs
   * @return jobs
  **/
  @ApiModelProperty(value = "")
  public List<FreeStyleProject> getJobs() {
    return jobs;
  }

  public void setJobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
  }

  public Hudson primaryView(AllView primaryView) {
    this.primaryView = primaryView;
    return this;
  }

   /**
   * Get primaryView
   * @return primaryView
  **/
  @ApiModelProperty(value = "")
  public AllView getPrimaryView() {
    return primaryView;
  }

  public void setPrimaryView(AllView primaryView) {
    this.primaryView = primaryView;
  }

  public Hudson quietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
    return this;
  }

   /**
   * Get quietingDown
   * @return quietingDown
  **/
  @ApiModelProperty(value = "")
  public Boolean getQuietingDown() {
    return quietingDown;
  }

  public void setQuietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
  }

  public Hudson slaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
    return this;
  }

   /**
   * Get slaveAgentPort
   * @return slaveAgentPort
  **/
  @ApiModelProperty(value = "")
  public Integer getSlaveAgentPort() {
    return slaveAgentPort;
  }

  public void setSlaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
  }

  public Hudson unlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
    return this;
  }

   /**
   * Get unlabeledLoad
   * @return unlabeledLoad
  **/
  @ApiModelProperty(value = "")
  public UnlabeledLoadStatistics getUnlabeledLoad() {
    return unlabeledLoad;
  }

  public void setUnlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
  }

  public Hudson useCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
    return this;
  }

   /**
   * Get useCrumbs
   * @return useCrumbs
  **/
  @ApiModelProperty(value = "")
  public Boolean getUseCrumbs() {
    return useCrumbs;
  }

  public void setUseCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
  }

  public Hudson useSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
    return this;
  }

   /**
   * Get useSecurity
   * @return useSecurity
  **/
  @ApiModelProperty(value = "")
  public Boolean getUseSecurity() {
    return useSecurity;
  }

  public void setUseSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
  }

  public Hudson views(List<AllView> views) {
    this.views = views;
    return this;
  }

  public Hudson addViewsItem(AllView viewsItem) {
    if (this.views == null) {
      this.views = new ArrayList<>();
    }
    this.views.add(viewsItem);
    return this;
  }

   /**
   * Get views
   * @return views
  **/
  @ApiModelProperty(value = "")
  public List<AllView> getViews() {
    return views;
  }

  public void setViews(List<AllView> views) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

