package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProjectactions;
import org.openapitools.model.FreeStyleProjecthealthReport;
import org.openapitools.model.NullSCM;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class FreeStyleProject  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String name;

  @ApiModelProperty(value = "")
  private String url;

  @ApiModelProperty(value = "")
  private String color;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid FreeStyleProjectactions> actions;

  @ApiModelProperty(value = "")
  private String description;

  @ApiModelProperty(value = "")
  private String displayName;

  @ApiModelProperty(value = "")
  private String displayNameOrNull;

  @ApiModelProperty(value = "")
  private String fullDisplayName;

  @ApiModelProperty(value = "")
  private String fullName;

  @ApiModelProperty(value = "")
  private Boolean buildable;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid FreeStyleBuild> builds;

  @ApiModelProperty(value = "")
  @Valid
  private FreeStyleBuild firstBuild;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid FreeStyleProjecthealthReport> healthReport;

  @ApiModelProperty(value = "")
  private Boolean inQueue;

  @ApiModelProperty(value = "")
  private Boolean keepDependencies;

  @ApiModelProperty(value = "")
  @Valid
  private FreeStyleBuild lastBuild;

  @ApiModelProperty(value = "")
  @Valid
  private FreeStyleBuild lastCompletedBuild;

  @ApiModelProperty(value = "")
  private String lastFailedBuild;

  @ApiModelProperty(value = "")
  @Valid
  private FreeStyleBuild lastStableBuild;

  @ApiModelProperty(value = "")
  @Valid
  private FreeStyleBuild lastSuccessfulBuild;

  @ApiModelProperty(value = "")
  private String lastUnstableBuild;

  @ApiModelProperty(value = "")
  private String lastUnsuccessfulBuild;

  @ApiModelProperty(value = "")
  private Integer nextBuildNumber;

  @ApiModelProperty(value = "")
  private String queueItem;

  @ApiModelProperty(value = "")
  private Boolean concurrentBuild;

  @ApiModelProperty(value = "")
  @Valid
  private NullSCM scm;
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
  public FreeStyleProject propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get name
  * @return name
  */
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  /**
   * Sets the <code>name</code> property.
   */
 public void setName(String name) {
    this.name = name;
  }

  /**
   * Sets the <code>name</code> property.
   */
  public FreeStyleProject name(String name) {
    this.name = name;
    return this;
  }

 /**
  * Get url
  * @return url
  */
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }

  /**
   * Sets the <code>url</code> property.
   */
 public void setUrl(String url) {
    this.url = url;
  }

  /**
   * Sets the <code>url</code> property.
   */
  public FreeStyleProject url(String url) {
    this.url = url;
    return this;
  }

 /**
  * Get color
  * @return color
  */
  @JsonProperty("color")
  public String getColor() {
    return color;
  }

  /**
   * Sets the <code>color</code> property.
   */
 public void setColor(String color) {
    this.color = color;
  }

  /**
   * Sets the <code>color</code> property.
   */
  public FreeStyleProject color(String color) {
    this.color = color;
    return this;
  }

 /**
  * Get actions
  * @return actions
  */
  @JsonProperty("actions")
  public List<@Valid FreeStyleProjectactions> getActions() {
    return actions;
  }

  /**
   * Sets the <code>actions</code> property.
   */
 public void setActions(List<@Valid FreeStyleProjectactions> actions) {
    this.actions = actions;
  }

  /**
   * Sets the <code>actions</code> property.
   */
  public FreeStyleProject actions(List<@Valid FreeStyleProjectactions> actions) {
    this.actions = actions;
    return this;
  }

  /**
   * Adds a new item to the <code>actions</code> list.
   */
  public FreeStyleProject addActionsItem(FreeStyleProjectactions actionsItem) {
    this.actions.add(actionsItem);
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
  public FreeStyleProject description(String description) {
    this.description = description;
    return this;
  }

 /**
  * Get displayName
  * @return displayName
  */
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  /**
   * Sets the <code>displayName</code> property.
   */
 public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   * Sets the <code>displayName</code> property.
   */
  public FreeStyleProject displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
  * Get displayNameOrNull
  * @return displayNameOrNull
  */
  @JsonProperty("displayNameOrNull")
  public String getDisplayNameOrNull() {
    return displayNameOrNull;
  }

  /**
   * Sets the <code>displayNameOrNull</code> property.
   */
 public void setDisplayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
  }

  /**
   * Sets the <code>displayNameOrNull</code> property.
   */
  public FreeStyleProject displayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
    return this;
  }

 /**
  * Get fullDisplayName
  * @return fullDisplayName
  */
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  /**
   * Sets the <code>fullDisplayName</code> property.
   */
 public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   * Sets the <code>fullDisplayName</code> property.
   */
  public FreeStyleProject fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

 /**
  * Get fullName
  * @return fullName
  */
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }

  /**
   * Sets the <code>fullName</code> property.
   */
 public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   * Sets the <code>fullName</code> property.
   */
  public FreeStyleProject fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

 /**
  * Get buildable
  * @return buildable
  */
  @JsonProperty("buildable")
  public Boolean getBuildable() {
    return buildable;
  }

  /**
   * Sets the <code>buildable</code> property.
   */
 public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  /**
   * Sets the <code>buildable</code> property.
   */
  public FreeStyleProject buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

 /**
  * Get builds
  * @return builds
  */
  @JsonProperty("builds")
  public List<@Valid FreeStyleBuild> getBuilds() {
    return builds;
  }

  /**
   * Sets the <code>builds</code> property.
   */
 public void setBuilds(List<@Valid FreeStyleBuild> builds) {
    this.builds = builds;
  }

  /**
   * Sets the <code>builds</code> property.
   */
  public FreeStyleProject builds(List<@Valid FreeStyleBuild> builds) {
    this.builds = builds;
    return this;
  }

  /**
   * Adds a new item to the <code>builds</code> list.
   */
  public FreeStyleProject addBuildsItem(FreeStyleBuild buildsItem) {
    this.builds.add(buildsItem);
    return this;
  }

 /**
  * Get firstBuild
  * @return firstBuild
  */
  @JsonProperty("firstBuild")
  public FreeStyleBuild getFirstBuild() {
    return firstBuild;
  }

  /**
   * Sets the <code>firstBuild</code> property.
   */
 public void setFirstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

  /**
   * Sets the <code>firstBuild</code> property.
   */
  public FreeStyleProject firstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
    return this;
  }

 /**
  * Get healthReport
  * @return healthReport
  */
  @JsonProperty("healthReport")
  public List<@Valid FreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }

  /**
   * Sets the <code>healthReport</code> property.
   */
 public void setHealthReport(List<@Valid FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
  }

  /**
   * Sets the <code>healthReport</code> property.
   */
  public FreeStyleProject healthReport(List<@Valid FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
    return this;
  }

  /**
   * Adds a new item to the <code>healthReport</code> list.
   */
  public FreeStyleProject addHealthReportItem(FreeStyleProjecthealthReport healthReportItem) {
    this.healthReport.add(healthReportItem);
    return this;
  }

 /**
  * Get inQueue
  * @return inQueue
  */
  @JsonProperty("inQueue")
  public Boolean getInQueue() {
    return inQueue;
  }

  /**
   * Sets the <code>inQueue</code> property.
   */
 public void setInQueue(Boolean inQueue) {
    this.inQueue = inQueue;
  }

  /**
   * Sets the <code>inQueue</code> property.
   */
  public FreeStyleProject inQueue(Boolean inQueue) {
    this.inQueue = inQueue;
    return this;
  }

 /**
  * Get keepDependencies
  * @return keepDependencies
  */
  @JsonProperty("keepDependencies")
  public Boolean getKeepDependencies() {
    return keepDependencies;
  }

  /**
   * Sets the <code>keepDependencies</code> property.
   */
 public void setKeepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
  }

  /**
   * Sets the <code>keepDependencies</code> property.
   */
  public FreeStyleProject keepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
    return this;
  }

 /**
  * Get lastBuild
  * @return lastBuild
  */
  @JsonProperty("lastBuild")
  public FreeStyleBuild getLastBuild() {
    return lastBuild;
  }

  /**
   * Sets the <code>lastBuild</code> property.
   */
 public void setLastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

  /**
   * Sets the <code>lastBuild</code> property.
   */
  public FreeStyleProject lastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
    return this;
  }

 /**
  * Get lastCompletedBuild
  * @return lastCompletedBuild
  */
  @JsonProperty("lastCompletedBuild")
  public FreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }

  /**
   * Sets the <code>lastCompletedBuild</code> property.
   */
 public void setLastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
  }

  /**
   * Sets the <code>lastCompletedBuild</code> property.
   */
  public FreeStyleProject lastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
    return this;
  }

 /**
  * Get lastFailedBuild
  * @return lastFailedBuild
  */
  @JsonProperty("lastFailedBuild")
  public String getLastFailedBuild() {
    return lastFailedBuild;
  }

  /**
   * Sets the <code>lastFailedBuild</code> property.
   */
 public void setLastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
  }

  /**
   * Sets the <code>lastFailedBuild</code> property.
   */
  public FreeStyleProject lastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
    return this;
  }

 /**
  * Get lastStableBuild
  * @return lastStableBuild
  */
  @JsonProperty("lastStableBuild")
  public FreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }

  /**
   * Sets the <code>lastStableBuild</code> property.
   */
 public void setLastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

  /**
   * Sets the <code>lastStableBuild</code> property.
   */
  public FreeStyleProject lastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
    return this;
  }

 /**
  * Get lastSuccessfulBuild
  * @return lastSuccessfulBuild
  */
  @JsonProperty("lastSuccessfulBuild")
  public FreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }

  /**
   * Sets the <code>lastSuccessfulBuild</code> property.
   */
 public void setLastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
  }

  /**
   * Sets the <code>lastSuccessfulBuild</code> property.
   */
  public FreeStyleProject lastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
    return this;
  }

 /**
  * Get lastUnstableBuild
  * @return lastUnstableBuild
  */
  @JsonProperty("lastUnstableBuild")
  public String getLastUnstableBuild() {
    return lastUnstableBuild;
  }

  /**
   * Sets the <code>lastUnstableBuild</code> property.
   */
 public void setLastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
  }

  /**
   * Sets the <code>lastUnstableBuild</code> property.
   */
  public FreeStyleProject lastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
    return this;
  }

 /**
  * Get lastUnsuccessfulBuild
  * @return lastUnsuccessfulBuild
  */
  @JsonProperty("lastUnsuccessfulBuild")
  public String getLastUnsuccessfulBuild() {
    return lastUnsuccessfulBuild;
  }

  /**
   * Sets the <code>lastUnsuccessfulBuild</code> property.
   */
 public void setLastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
  }

  /**
   * Sets the <code>lastUnsuccessfulBuild</code> property.
   */
  public FreeStyleProject lastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
    return this;
  }

 /**
  * Get nextBuildNumber
  * @return nextBuildNumber
  */
  @JsonProperty("nextBuildNumber")
  public Integer getNextBuildNumber() {
    return nextBuildNumber;
  }

  /**
   * Sets the <code>nextBuildNumber</code> property.
   */
 public void setNextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
  }

  /**
   * Sets the <code>nextBuildNumber</code> property.
   */
  public FreeStyleProject nextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
    return this;
  }

 /**
  * Get queueItem
  * @return queueItem
  */
  @JsonProperty("queueItem")
  public String getQueueItem() {
    return queueItem;
  }

  /**
   * Sets the <code>queueItem</code> property.
   */
 public void setQueueItem(String queueItem) {
    this.queueItem = queueItem;
  }

  /**
   * Sets the <code>queueItem</code> property.
   */
  public FreeStyleProject queueItem(String queueItem) {
    this.queueItem = queueItem;
    return this;
  }

 /**
  * Get concurrentBuild
  * @return concurrentBuild
  */
  @JsonProperty("concurrentBuild")
  public Boolean getConcurrentBuild() {
    return concurrentBuild;
  }

  /**
   * Sets the <code>concurrentBuild</code> property.
   */
 public void setConcurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
  }

  /**
   * Sets the <code>concurrentBuild</code> property.
   */
  public FreeStyleProject concurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
    return this;
  }

 /**
  * Get scm
  * @return scm
  */
  @JsonProperty("scm")
  public NullSCM getScm() {
    return scm;
  }

  /**
   * Sets the <code>scm</code> property.
   */
 public void setScm(NullSCM scm) {
    this.scm = scm;
  }

  /**
   * Sets the <code>scm</code> property.
   */
  public FreeStyleProject scm(NullSCM scm) {
    this.scm = scm;
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
    FreeStyleProject freeStyleProject = (FreeStyleProject) o;
    return Objects.equals(this.propertyClass, freeStyleProject.propertyClass) &&
        Objects.equals(this.name, freeStyleProject.name) &&
        Objects.equals(this.url, freeStyleProject.url) &&
        Objects.equals(this.color, freeStyleProject.color) &&
        Objects.equals(this.actions, freeStyleProject.actions) &&
        Objects.equals(this.description, freeStyleProject.description) &&
        Objects.equals(this.displayName, freeStyleProject.displayName) &&
        Objects.equals(this.displayNameOrNull, freeStyleProject.displayNameOrNull) &&
        Objects.equals(this.fullDisplayName, freeStyleProject.fullDisplayName) &&
        Objects.equals(this.fullName, freeStyleProject.fullName) &&
        Objects.equals(this.buildable, freeStyleProject.buildable) &&
        Objects.equals(this.builds, freeStyleProject.builds) &&
        Objects.equals(this.firstBuild, freeStyleProject.firstBuild) &&
        Objects.equals(this.healthReport, freeStyleProject.healthReport) &&
        Objects.equals(this.inQueue, freeStyleProject.inQueue) &&
        Objects.equals(this.keepDependencies, freeStyleProject.keepDependencies) &&
        Objects.equals(this.lastBuild, freeStyleProject.lastBuild) &&
        Objects.equals(this.lastCompletedBuild, freeStyleProject.lastCompletedBuild) &&
        Objects.equals(this.lastFailedBuild, freeStyleProject.lastFailedBuild) &&
        Objects.equals(this.lastStableBuild, freeStyleProject.lastStableBuild) &&
        Objects.equals(this.lastSuccessfulBuild, freeStyleProject.lastSuccessfulBuild) &&
        Objects.equals(this.lastUnstableBuild, freeStyleProject.lastUnstableBuild) &&
        Objects.equals(this.lastUnsuccessfulBuild, freeStyleProject.lastUnsuccessfulBuild) &&
        Objects.equals(this.nextBuildNumber, freeStyleProject.nextBuildNumber) &&
        Objects.equals(this.queueItem, freeStyleProject.queueItem) &&
        Objects.equals(this.concurrentBuild, freeStyleProject.concurrentBuild) &&
        Objects.equals(this.scm, freeStyleProject.scm);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, name, url, color, actions, description, displayName, displayNameOrNull, fullDisplayName, fullName, buildable, builds, firstBuild, healthReport, inQueue, keepDependencies, lastBuild, lastCompletedBuild, lastFailedBuild, lastStableBuild, lastSuccessfulBuild, lastUnstableBuild, lastUnsuccessfulBuild, nextBuildNumber, queueItem, concurrentBuild, scm);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FreeStyleProject {\n");
    
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

