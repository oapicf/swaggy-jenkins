package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AllView;
import org.openapitools.model.FreeStyleProject;
import org.openapitools.model.HudsonassignedLabels;
import org.openapitools.model.UnlabeledLoadStatistics;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Hudson  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid HudsonassignedLabels> assignedLabels;

  @ApiModelProperty(value = "")
  private String mode;

  @ApiModelProperty(value = "")
  private String nodeDescription;

  @ApiModelProperty(value = "")
  private String nodeName;

  @ApiModelProperty(value = "")
  private Integer numExecutors;

  @ApiModelProperty(value = "")
  private String description;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid FreeStyleProject> jobs;

  @ApiModelProperty(value = "")
  @Valid
  private AllView primaryView;

  @ApiModelProperty(value = "")
  private Boolean quietingDown;

  @ApiModelProperty(value = "")
  private Integer slaveAgentPort;

  @ApiModelProperty(value = "")
  @Valid
  private UnlabeledLoadStatistics unlabeledLoad;

  @ApiModelProperty(value = "")
  private Boolean useCrumbs;

  @ApiModelProperty(value = "")
  private Boolean useSecurity;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid AllView> views;
 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public Hudson propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get assignedLabels
  * @return assignedLabels
  */
  @JsonProperty("assignedLabels")
  public List<@Valid HudsonassignedLabels> getAssignedLabels() {
    return assignedLabels;
  }

  /**
   * Sets the <code>assignedLabels</code> property.
   */
 public void setAssignedLabels(List<@Valid HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
  }

  /**
   * Sets the <code>assignedLabels</code> property.
   */
  public Hudson assignedLabels(List<@Valid HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
    return this;
  }

  /**
   * Adds a new item to the <code>assignedLabels</code> list.
   */
  public Hudson addAssignedLabelsItem(HudsonassignedLabels assignedLabelsItem) {
    this.assignedLabels.add(assignedLabelsItem);
    return this;
  }

 /**
  * Get mode
  * @return mode
  */
  @JsonProperty("mode")
  public String getMode() {
    return mode;
  }

  /**
   * Sets the <code>mode</code> property.
   */
 public void setMode(String mode) {
    this.mode = mode;
  }

  /**
   * Sets the <code>mode</code> property.
   */
  public Hudson mode(String mode) {
    this.mode = mode;
    return this;
  }

 /**
  * Get nodeDescription
  * @return nodeDescription
  */
  @JsonProperty("nodeDescription")
  public String getNodeDescription() {
    return nodeDescription;
  }

  /**
   * Sets the <code>nodeDescription</code> property.
   */
 public void setNodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
  }

  /**
   * Sets the <code>nodeDescription</code> property.
   */
  public Hudson nodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
    return this;
  }

 /**
  * Get nodeName
  * @return nodeName
  */
  @JsonProperty("nodeName")
  public String getNodeName() {
    return nodeName;
  }

  /**
   * Sets the <code>nodeName</code> property.
   */
 public void setNodeName(String nodeName) {
    this.nodeName = nodeName;
  }

  /**
   * Sets the <code>nodeName</code> property.
   */
  public Hudson nodeName(String nodeName) {
    this.nodeName = nodeName;
    return this;
  }

 /**
  * Get numExecutors
  * @return numExecutors
  */
  @JsonProperty("numExecutors")
  public Integer getNumExecutors() {
    return numExecutors;
  }

  /**
   * Sets the <code>numExecutors</code> property.
   */
 public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  /**
   * Sets the <code>numExecutors</code> property.
   */
  public Hudson numExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

 /**
  * Get description
  * @return description
  */
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  /**
   * Sets the <code>description</code> property.
   */
 public void setDescription(String description) {
    this.description = description;
  }

  /**
   * Sets the <code>description</code> property.
   */
  public Hudson description(String description) {
    this.description = description;
    return this;
  }

 /**
  * Get jobs
  * @return jobs
  */
  @JsonProperty("jobs")
  public List<@Valid FreeStyleProject> getJobs() {
    return jobs;
  }

  /**
   * Sets the <code>jobs</code> property.
   */
 public void setJobs(List<@Valid FreeStyleProject> jobs) {
    this.jobs = jobs;
  }

  /**
   * Sets the <code>jobs</code> property.
   */
  public Hudson jobs(List<@Valid FreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  /**
   * Adds a new item to the <code>jobs</code> list.
   */
  public Hudson addJobsItem(FreeStyleProject jobsItem) {
    this.jobs.add(jobsItem);
    return this;
  }

 /**
  * Get primaryView
  * @return primaryView
  */
  @JsonProperty("primaryView")
  public AllView getPrimaryView() {
    return primaryView;
  }

  /**
   * Sets the <code>primaryView</code> property.
   */
 public void setPrimaryView(AllView primaryView) {
    this.primaryView = primaryView;
  }

  /**
   * Sets the <code>primaryView</code> property.
   */
  public Hudson primaryView(AllView primaryView) {
    this.primaryView = primaryView;
    return this;
  }

 /**
  * Get quietingDown
  * @return quietingDown
  */
  @JsonProperty("quietingDown")
  public Boolean getQuietingDown() {
    return quietingDown;
  }

  /**
   * Sets the <code>quietingDown</code> property.
   */
 public void setQuietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
  }

  /**
   * Sets the <code>quietingDown</code> property.
   */
  public Hudson quietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
    return this;
  }

 /**
  * Get slaveAgentPort
  * @return slaveAgentPort
  */
  @JsonProperty("slaveAgentPort")
  public Integer getSlaveAgentPort() {
    return slaveAgentPort;
  }

  /**
   * Sets the <code>slaveAgentPort</code> property.
   */
 public void setSlaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
  }

  /**
   * Sets the <code>slaveAgentPort</code> property.
   */
  public Hudson slaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
    return this;
  }

 /**
  * Get unlabeledLoad
  * @return unlabeledLoad
  */
  @JsonProperty("unlabeledLoad")
  public UnlabeledLoadStatistics getUnlabeledLoad() {
    return unlabeledLoad;
  }

  /**
   * Sets the <code>unlabeledLoad</code> property.
   */
 public void setUnlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
  }

  /**
   * Sets the <code>unlabeledLoad</code> property.
   */
  public Hudson unlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
    return this;
  }

 /**
  * Get useCrumbs
  * @return useCrumbs
  */
  @JsonProperty("useCrumbs")
  public Boolean getUseCrumbs() {
    return useCrumbs;
  }

  /**
   * Sets the <code>useCrumbs</code> property.
   */
 public void setUseCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
  }

  /**
   * Sets the <code>useCrumbs</code> property.
   */
  public Hudson useCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
    return this;
  }

 /**
  * Get useSecurity
  * @return useSecurity
  */
  @JsonProperty("useSecurity")
  public Boolean getUseSecurity() {
    return useSecurity;
  }

  /**
   * Sets the <code>useSecurity</code> property.
   */
 public void setUseSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
  }

  /**
   * Sets the <code>useSecurity</code> property.
   */
  public Hudson useSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
    return this;
  }

 /**
  * Get views
  * @return views
  */
  @JsonProperty("views")
  public List<@Valid AllView> getViews() {
    return views;
  }

  /**
   * Sets the <code>views</code> property.
   */
 public void setViews(List<@Valid AllView> views) {
    this.views = views;
  }

  /**
   * Sets the <code>views</code> property.
   */
  public Hudson views(List<@Valid AllView> views) {
    this.views = views;
    return this;
  }

  /**
   * Adds a new item to the <code>views</code> list.
   */
  public Hudson addViewsItem(AllView viewsItem) {
    this.views.add(viewsItem);
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

