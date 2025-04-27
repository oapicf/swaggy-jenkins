package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.vertxweb.server.model.AllView;
import org.openapitools.vertxweb.server.model.FreeStyleProject;
import org.openapitools.vertxweb.server.model.HudsonassignedLabels;
import org.openapitools.vertxweb.server.model.UnlabeledLoadStatistics;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class Hudson   {
  
  private String propertyClass;
  private List<HudsonassignedLabels> assignedLabels = new ArrayList<>();
  private String mode;
  private String nodeDescription;
  private String nodeName;
  private Integer numExecutors;
  private String description;
  private List<FreeStyleProject> jobs = new ArrayList<>();
  private AllView primaryView;
  private Boolean quietingDown;
  private Integer slaveAgentPort;
  private UnlabeledLoadStatistics unlabeledLoad;
  private Boolean useCrumbs;
  private Boolean useSecurity;
  private List<AllView> views = new ArrayList<>();

  public Hudson () {

  }

  public Hudson (String propertyClass, List<HudsonassignedLabels> assignedLabels, String mode, String nodeDescription, String nodeName, Integer numExecutors, String description, List<FreeStyleProject> jobs, AllView primaryView, Boolean quietingDown, Integer slaveAgentPort, UnlabeledLoadStatistics unlabeledLoad, Boolean useCrumbs, Boolean useSecurity, List<AllView> views) {
    this.propertyClass = propertyClass;
    this.assignedLabels = assignedLabels;
    this.mode = mode;
    this.nodeDescription = nodeDescription;
    this.nodeName = nodeName;
    this.numExecutors = numExecutors;
    this.description = description;
    this.jobs = jobs;
    this.primaryView = primaryView;
    this.quietingDown = quietingDown;
    this.slaveAgentPort = slaveAgentPort;
    this.unlabeledLoad = unlabeledLoad;
    this.useCrumbs = useCrumbs;
    this.useSecurity = useSecurity;
    this.views = views;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("assignedLabels")
  public List<HudsonassignedLabels> getAssignedLabels() {
    return assignedLabels;
  }
  public void setAssignedLabels(List<HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
  }

    
  @JsonProperty("mode")
  public String getMode() {
    return mode;
  }
  public void setMode(String mode) {
    this.mode = mode;
  }

    
  @JsonProperty("nodeDescription")
  public String getNodeDescription() {
    return nodeDescription;
  }
  public void setNodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
  }

    
  @JsonProperty("nodeName")
  public String getNodeName() {
    return nodeName;
  }
  public void setNodeName(String nodeName) {
    this.nodeName = nodeName;
  }

    
  @JsonProperty("numExecutors")
  public Integer getNumExecutors() {
    return numExecutors;
  }
  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

    
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

    
  @JsonProperty("jobs")
  public List<FreeStyleProject> getJobs() {
    return jobs;
  }
  public void setJobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
  }

    
  @JsonProperty("primaryView")
  public AllView getPrimaryView() {
    return primaryView;
  }
  public void setPrimaryView(AllView primaryView) {
    this.primaryView = primaryView;
  }

    
  @JsonProperty("quietingDown")
  public Boolean getQuietingDown() {
    return quietingDown;
  }
  public void setQuietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
  }

    
  @JsonProperty("slaveAgentPort")
  public Integer getSlaveAgentPort() {
    return slaveAgentPort;
  }
  public void setSlaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
  }

    
  @JsonProperty("unlabeledLoad")
  public UnlabeledLoadStatistics getUnlabeledLoad() {
    return unlabeledLoad;
  }
  public void setUnlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
  }

    
  @JsonProperty("useCrumbs")
  public Boolean getUseCrumbs() {
    return useCrumbs;
  }
  public void setUseCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
  }

    
  @JsonProperty("useSecurity")
  public Boolean getUseSecurity() {
    return useSecurity;
  }
  public void setUseSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
  }

    
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
