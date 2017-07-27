package io.swagger.model;

import io.swagger.model.HudsonmodelFreeStyleBuild;
import io.swagger.model.HudsonmodelFreeStyleProjectactions;
import io.swagger.model.HudsonmodelFreeStyleProjecthealthReport;
import io.swagger.model.HudsonscmNullSCM;
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

public class HudsonmodelFreeStyleProject  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private String name = null;
  @ApiModelProperty(value = "")
  private String url = null;
  @ApiModelProperty(value = "")
  private String color = null;
  @ApiModelProperty(value = "")
  private List<HudsonmodelFreeStyleProjectactions> actions = new ArrayList<HudsonmodelFreeStyleProjectactions>();
  @ApiModelProperty(value = "")
  private String description = null;
  @ApiModelProperty(value = "")
  private String displayName = null;
  @ApiModelProperty(value = "")
  private String displayNameOrNull = null;
  @ApiModelProperty(value = "")
  private String fullDisplayName = null;
  @ApiModelProperty(value = "")
  private String fullName = null;
  @ApiModelProperty(value = "")
  private Boolean buildable = null;
  @ApiModelProperty(value = "")
  private List<HudsonmodelFreeStyleBuild> builds = new ArrayList<HudsonmodelFreeStyleBuild>();
  @ApiModelProperty(value = "")
  private HudsonmodelFreeStyleBuild firstBuild = null;
  @ApiModelProperty(value = "")
  private List<HudsonmodelFreeStyleProjecthealthReport> healthReport = new ArrayList<HudsonmodelFreeStyleProjecthealthReport>();
  @ApiModelProperty(value = "")
  private Boolean inQueue = null;
  @ApiModelProperty(value = "")
  private Boolean keepDependencies = null;
  @ApiModelProperty(value = "")
  private HudsonmodelFreeStyleBuild lastBuild = null;
  @ApiModelProperty(value = "")
  private HudsonmodelFreeStyleBuild lastCompletedBuild = null;
  @ApiModelProperty(value = "")
  private String lastFailedBuild = null;
  @ApiModelProperty(value = "")
  private HudsonmodelFreeStyleBuild lastStableBuild = null;
  @ApiModelProperty(value = "")
  private HudsonmodelFreeStyleBuild lastSuccessfulBuild = null;
  @ApiModelProperty(value = "")
  private String lastUnstableBuild = null;
  @ApiModelProperty(value = "")
  private String lastUnsuccessfulBuild = null;
  @ApiModelProperty(value = "")
  private Integer nextBuildNumber = null;
  @ApiModelProperty(value = "")
  private String queueItem = null;
  @ApiModelProperty(value = "")
  private Boolean concurrentBuild = null;
  @ApiModelProperty(value = "")
  private HudsonscmNullSCM scm = null;

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

  public HudsonmodelFreeStyleProject propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get name
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public HudsonmodelFreeStyleProject name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get url
   * @return url
  **/
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public HudsonmodelFreeStyleProject url(String url) {
    this.url = url;
    return this;
  }

 /**
   * Get color
   * @return color
  **/
  public String getColor() {
    return color;
  }

  public void setColor(String color) {
    this.color = color;
  }

  public HudsonmodelFreeStyleProject color(String color) {
    this.color = color;
    return this;
  }

 /**
   * Get actions
   * @return actions
  **/
  public List<HudsonmodelFreeStyleProjectactions> getActions() {
    return actions;
  }

  public void setActions(List<HudsonmodelFreeStyleProjectactions> actions) {
    this.actions = actions;
  }

  public HudsonmodelFreeStyleProject actions(List<HudsonmodelFreeStyleProjectactions> actions) {
    this.actions = actions;
    return this;
  }

  public HudsonmodelFreeStyleProject addActionsItem(HudsonmodelFreeStyleProjectactions actionsItem) {
    this.actions.add(actionsItem);
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

  public HudsonmodelFreeStyleProject description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get displayName
   * @return displayName
  **/
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public HudsonmodelFreeStyleProject displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
   * Get displayNameOrNull
   * @return displayNameOrNull
  **/
  public String getDisplayNameOrNull() {
    return displayNameOrNull;
  }

  public void setDisplayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
  }

  public HudsonmodelFreeStyleProject displayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
    return this;
  }

 /**
   * Get fullDisplayName
   * @return fullDisplayName
  **/
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public HudsonmodelFreeStyleProject fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

 /**
   * Get fullName
   * @return fullName
  **/
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public HudsonmodelFreeStyleProject fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

 /**
   * Get buildable
   * @return buildable
  **/
  public Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  public HudsonmodelFreeStyleProject buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

 /**
   * Get builds
   * @return builds
  **/
  public List<HudsonmodelFreeStyleBuild> getBuilds() {
    return builds;
  }

  public void setBuilds(List<HudsonmodelFreeStyleBuild> builds) {
    this.builds = builds;
  }

  public HudsonmodelFreeStyleProject builds(List<HudsonmodelFreeStyleBuild> builds) {
    this.builds = builds;
    return this;
  }

  public HudsonmodelFreeStyleProject addBuildsItem(HudsonmodelFreeStyleBuild buildsItem) {
    this.builds.add(buildsItem);
    return this;
  }

 /**
   * Get firstBuild
   * @return firstBuild
  **/
  public HudsonmodelFreeStyleBuild getFirstBuild() {
    return firstBuild;
  }

  public void setFirstBuild(HudsonmodelFreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

  public HudsonmodelFreeStyleProject firstBuild(HudsonmodelFreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
    return this;
  }

 /**
   * Get healthReport
   * @return healthReport
  **/
  public List<HudsonmodelFreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }

  public void setHealthReport(List<HudsonmodelFreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
  }

  public HudsonmodelFreeStyleProject healthReport(List<HudsonmodelFreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
    return this;
  }

  public HudsonmodelFreeStyleProject addHealthReportItem(HudsonmodelFreeStyleProjecthealthReport healthReportItem) {
    this.healthReport.add(healthReportItem);
    return this;
  }

 /**
   * Get inQueue
   * @return inQueue
  **/
  public Boolean getInQueue() {
    return inQueue;
  }

  public void setInQueue(Boolean inQueue) {
    this.inQueue = inQueue;
  }

  public HudsonmodelFreeStyleProject inQueue(Boolean inQueue) {
    this.inQueue = inQueue;
    return this;
  }

 /**
   * Get keepDependencies
   * @return keepDependencies
  **/
  public Boolean getKeepDependencies() {
    return keepDependencies;
  }

  public void setKeepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
  }

  public HudsonmodelFreeStyleProject keepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
    return this;
  }

 /**
   * Get lastBuild
   * @return lastBuild
  **/
  public HudsonmodelFreeStyleBuild getLastBuild() {
    return lastBuild;
  }

  public void setLastBuild(HudsonmodelFreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

  public HudsonmodelFreeStyleProject lastBuild(HudsonmodelFreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
    return this;
  }

 /**
   * Get lastCompletedBuild
   * @return lastCompletedBuild
  **/
  public HudsonmodelFreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }

  public void setLastCompletedBuild(HudsonmodelFreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
  }

  public HudsonmodelFreeStyleProject lastCompletedBuild(HudsonmodelFreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
    return this;
  }

 /**
   * Get lastFailedBuild
   * @return lastFailedBuild
  **/
  public String getLastFailedBuild() {
    return lastFailedBuild;
  }

  public void setLastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
  }

  public HudsonmodelFreeStyleProject lastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
    return this;
  }

 /**
   * Get lastStableBuild
   * @return lastStableBuild
  **/
  public HudsonmodelFreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }

  public void setLastStableBuild(HudsonmodelFreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

  public HudsonmodelFreeStyleProject lastStableBuild(HudsonmodelFreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
    return this;
  }

 /**
   * Get lastSuccessfulBuild
   * @return lastSuccessfulBuild
  **/
  public HudsonmodelFreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }

  public void setLastSuccessfulBuild(HudsonmodelFreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
  }

  public HudsonmodelFreeStyleProject lastSuccessfulBuild(HudsonmodelFreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
    return this;
  }

 /**
   * Get lastUnstableBuild
   * @return lastUnstableBuild
  **/
  public String getLastUnstableBuild() {
    return lastUnstableBuild;
  }

  public void setLastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
  }

  public HudsonmodelFreeStyleProject lastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
    return this;
  }

 /**
   * Get lastUnsuccessfulBuild
   * @return lastUnsuccessfulBuild
  **/
  public String getLastUnsuccessfulBuild() {
    return lastUnsuccessfulBuild;
  }

  public void setLastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
  }

  public HudsonmodelFreeStyleProject lastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
    return this;
  }

 /**
   * Get nextBuildNumber
   * @return nextBuildNumber
  **/
  public Integer getNextBuildNumber() {
    return nextBuildNumber;
  }

  public void setNextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
  }

  public HudsonmodelFreeStyleProject nextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
    return this;
  }

 /**
   * Get queueItem
   * @return queueItem
  **/
  public String getQueueItem() {
    return queueItem;
  }

  public void setQueueItem(String queueItem) {
    this.queueItem = queueItem;
  }

  public HudsonmodelFreeStyleProject queueItem(String queueItem) {
    this.queueItem = queueItem;
    return this;
  }

 /**
   * Get concurrentBuild
   * @return concurrentBuild
  **/
  public Boolean getConcurrentBuild() {
    return concurrentBuild;
  }

  public void setConcurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
  }

  public HudsonmodelFreeStyleProject concurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
    return this;
  }

 /**
   * Get scm
   * @return scm
  **/
  public HudsonscmNullSCM getScm() {
    return scm;
  }

  public void setScm(HudsonscmNullSCM scm) {
    this.scm = scm;
  }

  public HudsonmodelFreeStyleProject scm(HudsonscmNullSCM scm) {
    this.scm = scm;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelFreeStyleProject {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    color: ").append(toIndentedString(color)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    displayNameOrNull: ").append(toIndentedString(displayNameOrNull)).append("\n");
    sb.append("    fullDisplayName: ").append(toIndentedString(fullDisplayName)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
    sb.append("    buildable: ").append(toIndentedString(buildable)).append("\n");
    sb.append("    builds: ").append(toIndentedString(builds)).append("\n");
    sb.append("    firstBuild: ").append(toIndentedString(firstBuild)).append("\n");
    sb.append("    healthReport: ").append(toIndentedString(healthReport)).append("\n");
    sb.append("    inQueue: ").append(toIndentedString(inQueue)).append("\n");
    sb.append("    keepDependencies: ").append(toIndentedString(keepDependencies)).append("\n");
    sb.append("    lastBuild: ").append(toIndentedString(lastBuild)).append("\n");
    sb.append("    lastCompletedBuild: ").append(toIndentedString(lastCompletedBuild)).append("\n");
    sb.append("    lastFailedBuild: ").append(toIndentedString(lastFailedBuild)).append("\n");
    sb.append("    lastStableBuild: ").append(toIndentedString(lastStableBuild)).append("\n");
    sb.append("    lastSuccessfulBuild: ").append(toIndentedString(lastSuccessfulBuild)).append("\n");
    sb.append("    lastUnstableBuild: ").append(toIndentedString(lastUnstableBuild)).append("\n");
    sb.append("    lastUnsuccessfulBuild: ").append(toIndentedString(lastUnsuccessfulBuild)).append("\n");
    sb.append("    nextBuildNumber: ").append(toIndentedString(nextBuildNumber)).append("\n");
    sb.append("    queueItem: ").append(toIndentedString(queueItem)).append("\n");
    sb.append("    concurrentBuild: ").append(toIndentedString(concurrentBuild)).append("\n");
    sb.append("    scm: ").append(toIndentedString(scm)).append("\n");
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

