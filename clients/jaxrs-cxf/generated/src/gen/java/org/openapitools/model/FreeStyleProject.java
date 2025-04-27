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
import java.util.Objects;
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
  private List<@Valid FreeStyleProjectactions> actions = new ArrayList<>();

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
  private List<@Valid FreeStyleBuild> builds = new ArrayList<>();

  @ApiModelProperty(value = "")
  @Valid
  private FreeStyleBuild firstBuild;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid FreeStyleProjecthealthReport> healthReport = new ArrayList<>();

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
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public FreeStyleProject propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get name
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public FreeStyleProject name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get url
   * @return url
  **/
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public FreeStyleProject url(String url) {
    this.url = url;
    return this;
  }

 /**
   * Get color
   * @return color
  **/
  @JsonProperty("color")
  public String getColor() {
    return color;
  }

  public void setColor(String color) {
    this.color = color;
  }

  public FreeStyleProject color(String color) {
    this.color = color;
    return this;
  }

 /**
   * Get actions
   * @return actions
  **/
  @JsonProperty("actions")
  public List<@Valid FreeStyleProjectactions> getActions() {
    return actions;
  }

  public void setActions(List<@Valid FreeStyleProjectactions> actions) {
    this.actions = actions;
  }

  public FreeStyleProject actions(List<@Valid FreeStyleProjectactions> actions) {
    this.actions = actions;
    return this;
  }

  public FreeStyleProject addActionsItem(FreeStyleProjectactions actionsItem) {
    this.actions.add(actionsItem);
    return this;
  }

 /**
   * Get description
   * @return description
  **/
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public FreeStyleProject description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get displayName
   * @return displayName
  **/
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public FreeStyleProject displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
   * Get displayNameOrNull
   * @return displayNameOrNull
  **/
  @JsonProperty("displayNameOrNull")
  public String getDisplayNameOrNull() {
    return displayNameOrNull;
  }

  public void setDisplayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
  }

  public FreeStyleProject displayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
    return this;
  }

 /**
   * Get fullDisplayName
   * @return fullDisplayName
  **/
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public FreeStyleProject fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

 /**
   * Get fullName
   * @return fullName
  **/
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public FreeStyleProject fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

 /**
   * Get buildable
   * @return buildable
  **/
  @JsonProperty("buildable")
  public Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  public FreeStyleProject buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

 /**
   * Get builds
   * @return builds
  **/
  @JsonProperty("builds")
  public List<@Valid FreeStyleBuild> getBuilds() {
    return builds;
  }

  public void setBuilds(List<@Valid FreeStyleBuild> builds) {
    this.builds = builds;
  }

  public FreeStyleProject builds(List<@Valid FreeStyleBuild> builds) {
    this.builds = builds;
    return this;
  }

  public FreeStyleProject addBuildsItem(FreeStyleBuild buildsItem) {
    this.builds.add(buildsItem);
    return this;
  }

 /**
   * Get firstBuild
   * @return firstBuild
  **/
  @JsonProperty("firstBuild")
  public FreeStyleBuild getFirstBuild() {
    return firstBuild;
  }

  public void setFirstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

  public FreeStyleProject firstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
    return this;
  }

 /**
   * Get healthReport
   * @return healthReport
  **/
  @JsonProperty("healthReport")
  public List<@Valid FreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }

  public void setHealthReport(List<@Valid FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
  }

  public FreeStyleProject healthReport(List<@Valid FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
    return this;
  }

  public FreeStyleProject addHealthReportItem(FreeStyleProjecthealthReport healthReportItem) {
    this.healthReport.add(healthReportItem);
    return this;
  }

 /**
   * Get inQueue
   * @return inQueue
  **/
  @JsonProperty("inQueue")
  public Boolean getInQueue() {
    return inQueue;
  }

  public void setInQueue(Boolean inQueue) {
    this.inQueue = inQueue;
  }

  public FreeStyleProject inQueue(Boolean inQueue) {
    this.inQueue = inQueue;
    return this;
  }

 /**
   * Get keepDependencies
   * @return keepDependencies
  **/
  @JsonProperty("keepDependencies")
  public Boolean getKeepDependencies() {
    return keepDependencies;
  }

  public void setKeepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
  }

  public FreeStyleProject keepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
    return this;
  }

 /**
   * Get lastBuild
   * @return lastBuild
  **/
  @JsonProperty("lastBuild")
  public FreeStyleBuild getLastBuild() {
    return lastBuild;
  }

  public void setLastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

  public FreeStyleProject lastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
    return this;
  }

 /**
   * Get lastCompletedBuild
   * @return lastCompletedBuild
  **/
  @JsonProperty("lastCompletedBuild")
  public FreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }

  public void setLastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
  }

  public FreeStyleProject lastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
    return this;
  }

 /**
   * Get lastFailedBuild
   * @return lastFailedBuild
  **/
  @JsonProperty("lastFailedBuild")
  public String getLastFailedBuild() {
    return lastFailedBuild;
  }

  public void setLastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
  }

  public FreeStyleProject lastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
    return this;
  }

 /**
   * Get lastStableBuild
   * @return lastStableBuild
  **/
  @JsonProperty("lastStableBuild")
  public FreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }

  public void setLastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

  public FreeStyleProject lastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
    return this;
  }

 /**
   * Get lastSuccessfulBuild
   * @return lastSuccessfulBuild
  **/
  @JsonProperty("lastSuccessfulBuild")
  public FreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }

  public void setLastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
  }

  public FreeStyleProject lastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
    return this;
  }

 /**
   * Get lastUnstableBuild
   * @return lastUnstableBuild
  **/
  @JsonProperty("lastUnstableBuild")
  public String getLastUnstableBuild() {
    return lastUnstableBuild;
  }

  public void setLastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
  }

  public FreeStyleProject lastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
    return this;
  }

 /**
   * Get lastUnsuccessfulBuild
   * @return lastUnsuccessfulBuild
  **/
  @JsonProperty("lastUnsuccessfulBuild")
  public String getLastUnsuccessfulBuild() {
    return lastUnsuccessfulBuild;
  }

  public void setLastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
  }

  public FreeStyleProject lastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
    return this;
  }

 /**
   * Get nextBuildNumber
   * @return nextBuildNumber
  **/
  @JsonProperty("nextBuildNumber")
  public Integer getNextBuildNumber() {
    return nextBuildNumber;
  }

  public void setNextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
  }

  public FreeStyleProject nextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
    return this;
  }

 /**
   * Get queueItem
   * @return queueItem
  **/
  @JsonProperty("queueItem")
  public String getQueueItem() {
    return queueItem;
  }

  public void setQueueItem(String queueItem) {
    this.queueItem = queueItem;
  }

  public FreeStyleProject queueItem(String queueItem) {
    this.queueItem = queueItem;
    return this;
  }

 /**
   * Get concurrentBuild
   * @return concurrentBuild
  **/
  @JsonProperty("concurrentBuild")
  public Boolean getConcurrentBuild() {
    return concurrentBuild;
  }

  public void setConcurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
  }

  public FreeStyleProject concurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
    return this;
  }

 /**
   * Get scm
   * @return scm
  **/
  @JsonProperty("scm")
  public NullSCM getScm() {
    return scm;
  }

  public void setScm(NullSCM scm) {
    this.scm = scm;
  }

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

