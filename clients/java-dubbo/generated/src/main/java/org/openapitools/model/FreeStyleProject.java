package org.openapitools.model;

import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProjectactions;
import org.openapitools.model.FreeStyleProjecthealthReport;
import org.openapitools.model.NullSCM;
import java.util.*;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class FreeStyleProject implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("name")
  private String name;

  @JsonProperty("url")
  private String url;

  @JsonProperty("color")
  private String color;

  @JsonProperty("actions")
  private List<FreeStyleProjectactions> actions = new ArrayList<>();

  @JsonProperty("description")
  private String description;

  @JsonProperty("displayName")
  private String displayName;

  @JsonProperty("displayNameOrNull")
  private String displayNameOrNull;

  @JsonProperty("fullDisplayName")
  private String fullDisplayName;

  @JsonProperty("fullName")
  private String fullName;

  @JsonProperty("buildable")
  private Boolean buildable;

  @JsonProperty("builds")
  private List<FreeStyleBuild> builds = new ArrayList<>();

  @JsonProperty("firstBuild")
  private FreeStyleBuild firstBuild;

  @JsonProperty("healthReport")
  private List<FreeStyleProjecthealthReport> healthReport = new ArrayList<>();

  @JsonProperty("inQueue")
  private Boolean inQueue;

  @JsonProperty("keepDependencies")
  private Boolean keepDependencies;

  @JsonProperty("lastBuild")
  private FreeStyleBuild lastBuild;

  @JsonProperty("lastCompletedBuild")
  private FreeStyleBuild lastCompletedBuild;

  @JsonProperty("lastFailedBuild")
  private String lastFailedBuild;

  @JsonProperty("lastStableBuild")
  private FreeStyleBuild lastStableBuild;

  @JsonProperty("lastSuccessfulBuild")
  private FreeStyleBuild lastSuccessfulBuild;

  @JsonProperty("lastUnstableBuild")
  private String lastUnstableBuild;

  @JsonProperty("lastUnsuccessfulBuild")
  private String lastUnsuccessfulBuild;

  @JsonProperty("nextBuildNumber")
  private Integer nextBuildNumber;

  @JsonProperty("queueItem")
  private String queueItem;

  @JsonProperty("concurrentBuild")
  private Boolean concurrentBuild;

  @JsonProperty("scm")
  private NullSCM scm;

  /**
   * 
   * @return propertyClass
   */
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * 
   * @return name
   */
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  /**
   * 
   * @return url
   */
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  /**
   * 
   * @return color
   */
  public String getColor() {
    return color;
  }

  public void setColor(String color) {
    this.color = color;
  }

  /**
   * 
   * @return actions
   */
  public List<FreeStyleProjectactions> getActions() {
    return actions;
  }

  public void setActions(List<FreeStyleProjectactions> actions) {
    this.actions = actions;
  }

  /**
   * 
   * @return description
   */
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  /**
   * 
   * @return displayName
   */
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   * 
   * @return displayNameOrNull
   */
  public String getDisplayNameOrNull() {
    return displayNameOrNull;
  }

  public void setDisplayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
  }

  /**
   * 
   * @return fullDisplayName
   */
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   * 
   * @return fullName
   */
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   * 
   * @return buildable
   */
  public Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  /**
   * 
   * @return builds
   */
  public List<FreeStyleBuild> getBuilds() {
    return builds;
  }

  public void setBuilds(List<FreeStyleBuild> builds) {
    this.builds = builds;
  }

  /**
   * 
   * @return firstBuild
   */
  public FreeStyleBuild getFirstBuild() {
    return firstBuild;
  }

  public void setFirstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

  /**
   * 
   * @return healthReport
   */
  public List<FreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }

  public void setHealthReport(List<FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
  }

  /**
   * 
   * @return inQueue
   */
  public Boolean getInQueue() {
    return inQueue;
  }

  public void setInQueue(Boolean inQueue) {
    this.inQueue = inQueue;
  }

  /**
   * 
   * @return keepDependencies
   */
  public Boolean getKeepDependencies() {
    return keepDependencies;
  }

  public void setKeepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
  }

  /**
   * 
   * @return lastBuild
   */
  public FreeStyleBuild getLastBuild() {
    return lastBuild;
  }

  public void setLastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

  /**
   * 
   * @return lastCompletedBuild
   */
  public FreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }

  public void setLastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
  }

  /**
   * 
   * @return lastFailedBuild
   */
  public String getLastFailedBuild() {
    return lastFailedBuild;
  }

  public void setLastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
  }

  /**
   * 
   * @return lastStableBuild
   */
  public FreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }

  public void setLastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

  /**
   * 
   * @return lastSuccessfulBuild
   */
  public FreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }

  public void setLastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
  }

  /**
   * 
   * @return lastUnstableBuild
   */
  public String getLastUnstableBuild() {
    return lastUnstableBuild;
  }

  public void setLastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
  }

  /**
   * 
   * @return lastUnsuccessfulBuild
   */
  public String getLastUnsuccessfulBuild() {
    return lastUnsuccessfulBuild;
  }

  public void setLastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
  }

  /**
   * 
   * @return nextBuildNumber
   */
  public Integer getNextBuildNumber() {
    return nextBuildNumber;
  }

  public void setNextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
  }

  /**
   * 
   * @return queueItem
   */
  public String getQueueItem() {
    return queueItem;
  }

  public void setQueueItem(String queueItem) {
    this.queueItem = queueItem;
  }

  /**
   * 
   * @return concurrentBuild
   */
  public Boolean getConcurrentBuild() {
    return concurrentBuild;
  }

  public void setConcurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
  }

  /**
   * 
   * @return scm
   */
  public NullSCM getScm() {
    return scm;
  }

  public void setScm(NullSCM scm) {
    this.scm = scm;
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
  private String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
