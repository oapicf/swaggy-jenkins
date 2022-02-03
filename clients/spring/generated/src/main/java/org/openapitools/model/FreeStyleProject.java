package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProjectactions;
import org.openapitools.model.FreeStyleProjecthealthReport;
import org.openapitools.model.NullSCM;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * FreeStyleProject
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2022-02-02T12:55:55.340851Z[Etc/UTC]")
public class FreeStyleProject   {

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("name")
  private String name;

  @JsonProperty("url")
  private String url;

  @JsonProperty("color")
  private String color;

  @JsonProperty("actions")
  @Valid
  private List<FreeStyleProjectactions> actions = null;

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
  @Valid
  private List<FreeStyleBuild> builds = null;

  @JsonProperty("firstBuild")
  private FreeStyleBuild firstBuild;

  @JsonProperty("healthReport")
  @Valid
  private List<FreeStyleProjecthealthReport> healthReport = null;

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

  public FreeStyleProject propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
  */
  
  @Schema(name = "_class", required = false)
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public FreeStyleProject name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
  */
  
  @Schema(name = "name", required = false)
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public FreeStyleProject url(String url) {
    this.url = url;
    return this;
  }

  /**
   * Get url
   * @return url
  */
  
  @Schema(name = "url", required = false)
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public FreeStyleProject color(String color) {
    this.color = color;
    return this;
  }

  /**
   * Get color
   * @return color
  */
  
  @Schema(name = "color", required = false)
  public String getColor() {
    return color;
  }

  public void setColor(String color) {
    this.color = color;
  }

  public FreeStyleProject actions(List<FreeStyleProjectactions> actions) {
    this.actions = actions;
    return this;
  }

  public FreeStyleProject addActionsItem(FreeStyleProjectactions actionsItem) {
    if (this.actions == null) {
      this.actions = new ArrayList<>();
    }
    this.actions.add(actionsItem);
    return this;
  }

  /**
   * Get actions
   * @return actions
  */
  @Valid 
  @Schema(name = "actions", required = false)
  public List<FreeStyleProjectactions> getActions() {
    return actions;
  }

  public void setActions(List<FreeStyleProjectactions> actions) {
    this.actions = actions;
  }

  public FreeStyleProject description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
  */
  
  @Schema(name = "description", required = false)
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public FreeStyleProject displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  /**
   * Get displayName
   * @return displayName
  */
  
  @Schema(name = "displayName", required = false)
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public FreeStyleProject displayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
    return this;
  }

  /**
   * Get displayNameOrNull
   * @return displayNameOrNull
  */
  
  @Schema(name = "displayNameOrNull", required = false)
  public String getDisplayNameOrNull() {
    return displayNameOrNull;
  }

  public void setDisplayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
  }

  public FreeStyleProject fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

  /**
   * Get fullDisplayName
   * @return fullDisplayName
  */
  
  @Schema(name = "fullDisplayName", required = false)
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public FreeStyleProject fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

  /**
   * Get fullName
   * @return fullName
  */
  
  @Schema(name = "fullName", required = false)
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public FreeStyleProject buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

  /**
   * Get buildable
   * @return buildable
  */
  
  @Schema(name = "buildable", required = false)
  public Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  public FreeStyleProject builds(List<FreeStyleBuild> builds) {
    this.builds = builds;
    return this;
  }

  public FreeStyleProject addBuildsItem(FreeStyleBuild buildsItem) {
    if (this.builds == null) {
      this.builds = new ArrayList<>();
    }
    this.builds.add(buildsItem);
    return this;
  }

  /**
   * Get builds
   * @return builds
  */
  @Valid 
  @Schema(name = "builds", required = false)
  public List<FreeStyleBuild> getBuilds() {
    return builds;
  }

  public void setBuilds(List<FreeStyleBuild> builds) {
    this.builds = builds;
  }

  public FreeStyleProject firstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
    return this;
  }

  /**
   * Get firstBuild
   * @return firstBuild
  */
  @Valid 
  @Schema(name = "firstBuild", required = false)
  public FreeStyleBuild getFirstBuild() {
    return firstBuild;
  }

  public void setFirstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

  public FreeStyleProject healthReport(List<FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
    return this;
  }

  public FreeStyleProject addHealthReportItem(FreeStyleProjecthealthReport healthReportItem) {
    if (this.healthReport == null) {
      this.healthReport = new ArrayList<>();
    }
    this.healthReport.add(healthReportItem);
    return this;
  }

  /**
   * Get healthReport
   * @return healthReport
  */
  @Valid 
  @Schema(name = "healthReport", required = false)
  public List<FreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }

  public void setHealthReport(List<FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
  }

  public FreeStyleProject inQueue(Boolean inQueue) {
    this.inQueue = inQueue;
    return this;
  }

  /**
   * Get inQueue
   * @return inQueue
  */
  
  @Schema(name = "inQueue", required = false)
  public Boolean getInQueue() {
    return inQueue;
  }

  public void setInQueue(Boolean inQueue) {
    this.inQueue = inQueue;
  }

  public FreeStyleProject keepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
    return this;
  }

  /**
   * Get keepDependencies
   * @return keepDependencies
  */
  
  @Schema(name = "keepDependencies", required = false)
  public Boolean getKeepDependencies() {
    return keepDependencies;
  }

  public void setKeepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
  }

  public FreeStyleProject lastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
    return this;
  }

  /**
   * Get lastBuild
   * @return lastBuild
  */
  @Valid 
  @Schema(name = "lastBuild", required = false)
  public FreeStyleBuild getLastBuild() {
    return lastBuild;
  }

  public void setLastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

  public FreeStyleProject lastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
    return this;
  }

  /**
   * Get lastCompletedBuild
   * @return lastCompletedBuild
  */
  @Valid 
  @Schema(name = "lastCompletedBuild", required = false)
  public FreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }

  public void setLastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
  }

  public FreeStyleProject lastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
    return this;
  }

  /**
   * Get lastFailedBuild
   * @return lastFailedBuild
  */
  
  @Schema(name = "lastFailedBuild", required = false)
  public String getLastFailedBuild() {
    return lastFailedBuild;
  }

  public void setLastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
  }

  public FreeStyleProject lastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
    return this;
  }

  /**
   * Get lastStableBuild
   * @return lastStableBuild
  */
  @Valid 
  @Schema(name = "lastStableBuild", required = false)
  public FreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }

  public void setLastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

  public FreeStyleProject lastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
    return this;
  }

  /**
   * Get lastSuccessfulBuild
   * @return lastSuccessfulBuild
  */
  @Valid 
  @Schema(name = "lastSuccessfulBuild", required = false)
  public FreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }

  public void setLastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
  }

  public FreeStyleProject lastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
    return this;
  }

  /**
   * Get lastUnstableBuild
   * @return lastUnstableBuild
  */
  
  @Schema(name = "lastUnstableBuild", required = false)
  public String getLastUnstableBuild() {
    return lastUnstableBuild;
  }

  public void setLastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
  }

  public FreeStyleProject lastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
    return this;
  }

  /**
   * Get lastUnsuccessfulBuild
   * @return lastUnsuccessfulBuild
  */
  
  @Schema(name = "lastUnsuccessfulBuild", required = false)
  public String getLastUnsuccessfulBuild() {
    return lastUnsuccessfulBuild;
  }

  public void setLastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
  }

  public FreeStyleProject nextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
    return this;
  }

  /**
   * Get nextBuildNumber
   * @return nextBuildNumber
  */
  
  @Schema(name = "nextBuildNumber", required = false)
  public Integer getNextBuildNumber() {
    return nextBuildNumber;
  }

  public void setNextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
  }

  public FreeStyleProject queueItem(String queueItem) {
    this.queueItem = queueItem;
    return this;
  }

  /**
   * Get queueItem
   * @return queueItem
  */
  
  @Schema(name = "queueItem", required = false)
  public String getQueueItem() {
    return queueItem;
  }

  public void setQueueItem(String queueItem) {
    this.queueItem = queueItem;
  }

  public FreeStyleProject concurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
    return this;
  }

  /**
   * Get concurrentBuild
   * @return concurrentBuild
  */
  
  @Schema(name = "concurrentBuild", required = false)
  public Boolean getConcurrentBuild() {
    return concurrentBuild;
  }

  public void setConcurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
  }

  public FreeStyleProject scm(NullSCM scm) {
    this.scm = scm;
    return this;
  }

  /**
   * Get scm
   * @return scm
  */
  @Valid 
  @Schema(name = "scm", required = false)
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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

