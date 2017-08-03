package io.swagger.model;

import io.swagger.model.AllView;
import io.swagger.model.FreeStyleProject;
import io.swagger.model.HudsonassignedLabels;
import io.swagger.model.UnlabeledLoadStatistics;
import java.util.ArrayList;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class Hudson  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private List<HudsonassignedLabels> assignedLabels = new ArrayList<HudsonassignedLabels>();
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
  private List<FreeStyleProject> jobs = new ArrayList<FreeStyleProject>();
  @ApiModelProperty(value = "")
  private AllView primaryView = null;
  @ApiModelProperty(value = "")
  private Boolean quietingDown = null;
  @ApiModelProperty(value = "")
  private Integer slaveAgentPort = null;
  @ApiModelProperty(value = "")
  private UnlabeledLoadStatistics unlabeledLoad = null;
  @ApiModelProperty(value = "")
  private Boolean useCrumbs = null;
  @ApiModelProperty(value = "")
  private Boolean useSecurity = null;
  @ApiModelProperty(value = "")
  private List<AllView> views = new ArrayList<AllView>();

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

  public Hudson propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get assignedLabels
   * @return assignedLabels
  **/
  public List<HudsonassignedLabels> getAssignedLabels() {
    return assignedLabels;
  }

  public void setAssignedLabels(List<HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
  }

  public Hudson assignedLabels(List<HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
    return this;
  }

  public Hudson addAssignedLabelsItem(HudsonassignedLabels assignedLabelsItem) {
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

  public Hudson mode(String mode) {
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

  public Hudson nodeDescription(String nodeDescription) {
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

  public Hudson nodeName(String nodeName) {
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

  public Hudson numExecutors(Integer numExecutors) {
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

  public Hudson description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get jobs
   * @return jobs
  **/
  public List<FreeStyleProject> getJobs() {
    return jobs;
  }

  public void setJobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
  }

  public Hudson jobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  public Hudson addJobsItem(FreeStyleProject jobsItem) {
    this.jobs.add(jobsItem);
    return this;
  }

 /**
   * Get primaryView
   * @return primaryView
  **/
  public AllView getPrimaryView() {
    return primaryView;
  }

  public void setPrimaryView(AllView primaryView) {
    this.primaryView = primaryView;
  }

  public Hudson primaryView(AllView primaryView) {
    this.primaryView = primaryView;
    return this;
  }

 /**
   * Get quietingDown
   * @return quietingDown
  **/
  public Boolean isQuietingDown() {
    return quietingDown;
  }

  public void setQuietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
  }

  public Hudson quietingDown(Boolean quietingDown) {
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

  public Hudson slaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
    return this;
  }

 /**
   * Get unlabeledLoad
   * @return unlabeledLoad
  **/
  public UnlabeledLoadStatistics getUnlabeledLoad() {
    return unlabeledLoad;
  }

  public void setUnlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
  }

  public Hudson unlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
    return this;
  }

 /**
   * Get useCrumbs
   * @return useCrumbs
  **/
  public Boolean isUseCrumbs() {
    return useCrumbs;
  }

  public void setUseCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
  }

  public Hudson useCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
    return this;
  }

 /**
   * Get useSecurity
   * @return useSecurity
  **/
  public Boolean isUseSecurity() {
    return useSecurity;
  }

  public void setUseSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
  }

  public Hudson useSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
    return this;
  }

 /**
   * Get views
   * @return views
  **/
  public List<AllView> getViews() {
    return views;
  }

  public void setViews(List<AllView> views) {
    this.views = views;
  }

  public Hudson views(List<AllView> views) {
    this.views = views;
    return this;
  }

  public Hudson addViewsItem(AllView viewsItem) {
    this.views.add(viewsItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

