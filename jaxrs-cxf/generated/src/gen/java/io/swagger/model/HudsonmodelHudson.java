package io.swagger.model;

import io.swagger.model.HudsonmodelAllView;
import io.swagger.model.HudsonmodelFreeStyleProject;
import io.swagger.model.HudsonmodelHudsonassignedLabels;
import io.swagger.model.JenkinsmodelUnlabeledLoadStatistics;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class HudsonmodelHudson  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private List<HudsonmodelHudsonassignedLabels> assignedLabels = new ArrayList<HudsonmodelHudsonassignedLabels>();
  @ApiModelProperty(value = "")
  private String mode = null;
  @ApiModelProperty(value = "")
  private String nodeDescription = null;
  @ApiModelProperty(value = "")
  private String nodeName = null;
  @ApiModelProperty(value = "")
  private Integer numExecutors = null;
  @ApiModelProperty(value = "")
  private String description = null;
  @ApiModelProperty(value = "")
  private List<HudsonmodelFreeStyleProject> jobs = new ArrayList<HudsonmodelFreeStyleProject>();
  @ApiModelProperty(value = "")
  private HudsonmodelAllView primaryView = null;
  @ApiModelProperty(value = "")
  private Boolean quietingDown = null;
  @ApiModelProperty(value = "")
  private Integer slaveAgentPort = null;
  @ApiModelProperty(value = "")
  private JenkinsmodelUnlabeledLoadStatistics unlabeledLoad = null;
  @ApiModelProperty(value = "")
  private Boolean useCrumbs = null;
  @ApiModelProperty(value = "")
  private Boolean useSecurity = null;
  @ApiModelProperty(value = "")
  private List<HudsonmodelAllView> views = new ArrayList<HudsonmodelAllView>();

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public HudsonmodelHudson propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get assignedLabels
   * @return assignedLabels
  **/
  public List<HudsonmodelHudsonassignedLabels> getAssignedLabels() {
    return assignedLabels;
  }

  public void setAssignedLabels(List<HudsonmodelHudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
  }

  public HudsonmodelHudson assignedLabels(List<HudsonmodelHudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
    return this;
  }

  public HudsonmodelHudson addAssignedLabelsItem(HudsonmodelHudsonassignedLabels assignedLabelsItem) {
    this.assignedLabels.add(assignedLabelsItem);
    return this;
  }

 /**
   * Get mode
   * @return mode
  **/
  public String getMode() {
    return mode;
  }

  public void setMode(String mode) {
    this.mode = mode;
  }

  public HudsonmodelHudson mode(String mode) {
    this.mode = mode;
    return this;
  }

 /**
   * Get nodeDescription
   * @return nodeDescription
  **/
  public String getNodeDescription() {
    return nodeDescription;
  }

  public void setNodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
  }

  public HudsonmodelHudson nodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
    return this;
  }

 /**
   * Get nodeName
   * @return nodeName
  **/
  public String getNodeName() {
    return nodeName;
  }

  public void setNodeName(String nodeName) {
    this.nodeName = nodeName;
  }

  public HudsonmodelHudson nodeName(String nodeName) {
    this.nodeName = nodeName;
    return this;
  }

 /**
   * Get numExecutors
   * @return numExecutors
  **/
  public Integer getNumExecutors() {
    return numExecutors;
  }

  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  public HudsonmodelHudson numExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

 /**
   * Get description
   * @return description
  **/
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public HudsonmodelHudson description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get jobs
   * @return jobs
  **/
  public List<HudsonmodelFreeStyleProject> getJobs() {
    return jobs;
  }

  public void setJobs(List<HudsonmodelFreeStyleProject> jobs) {
    this.jobs = jobs;
  }

  public HudsonmodelHudson jobs(List<HudsonmodelFreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  public HudsonmodelHudson addJobsItem(HudsonmodelFreeStyleProject jobsItem) {
    this.jobs.add(jobsItem);
    return this;
  }

 /**
   * Get primaryView
   * @return primaryView
  **/
  public HudsonmodelAllView getPrimaryView() {
    return primaryView;
  }

  public void setPrimaryView(HudsonmodelAllView primaryView) {
    this.primaryView = primaryView;
  }

  public HudsonmodelHudson primaryView(HudsonmodelAllView primaryView) {
    this.primaryView = primaryView;
    return this;
  }

 /**
   * Get quietingDown
   * @return quietingDown
  **/
  public Boolean getQuietingDown() {
    return quietingDown;
  }

  public void setQuietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
  }

  public HudsonmodelHudson quietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
    return this;
  }

 /**
   * Get slaveAgentPort
   * @return slaveAgentPort
  **/
  public Integer getSlaveAgentPort() {
    return slaveAgentPort;
  }

  public void setSlaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
  }

  public HudsonmodelHudson slaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
    return this;
  }

 /**
   * Get unlabeledLoad
   * @return unlabeledLoad
  **/
  public JenkinsmodelUnlabeledLoadStatistics getUnlabeledLoad() {
    return unlabeledLoad;
  }

  public void setUnlabeledLoad(JenkinsmodelUnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
  }

  public HudsonmodelHudson unlabeledLoad(JenkinsmodelUnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
    return this;
  }

 /**
   * Get useCrumbs
   * @return useCrumbs
  **/
  public Boolean getUseCrumbs() {
    return useCrumbs;
  }

  public void setUseCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
  }

  public HudsonmodelHudson useCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
    return this;
  }

 /**
   * Get useSecurity
   * @return useSecurity
  **/
  public Boolean getUseSecurity() {
    return useSecurity;
  }

  public void setUseSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
  }

  public HudsonmodelHudson useSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
    return this;
  }

 /**
   * Get views
   * @return views
  **/
  public List<HudsonmodelAllView> getViews() {
    return views;
  }

  public void setViews(List<HudsonmodelAllView> views) {
    this.views = views;
  }

  public HudsonmodelHudson views(List<HudsonmodelAllView> views) {
    this.views = views;
    return this;
  }

  public HudsonmodelHudson addViewsItem(HudsonmodelAllView viewsItem) {
    this.views.add(viewsItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

