package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProjectactions;
import org.openapitools.model.FreeStyleProjecthealthReport;
import org.openapitools.model.NullSCM;
import org.springframework.lang.Nullable;
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

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-02-01T01:27:11.559404227Z[Etc/UTC]", comments = "Generator version: 7.18.0")
public class FreeStyleProject {

  private @Nullable String propertyClass;

  private @Nullable String name;

  private @Nullable String url;

  private @Nullable String color;

  @Valid
  private List<@Valid FreeStyleProjectactions> actions = new ArrayList<>();

  private @Nullable String description;

  private @Nullable String displayName;

  private @Nullable String displayNameOrNull;

  private @Nullable String fullDisplayName;

  private @Nullable String fullName;

  private @Nullable Boolean buildable;

  @Valid
  private List<@Valid FreeStyleBuild> builds = new ArrayList<>();

  private @Nullable FreeStyleBuild firstBuild;

  @Valid
  private List<@Valid FreeStyleProjecthealthReport> healthReport = new ArrayList<>();

  private @Nullable Boolean inQueue;

  private @Nullable Boolean keepDependencies;

  private @Nullable FreeStyleBuild lastBuild;

  private @Nullable FreeStyleBuild lastCompletedBuild;

  private @Nullable String lastFailedBuild;

  private @Nullable FreeStyleBuild lastStableBuild;

  private @Nullable FreeStyleBuild lastSuccessfulBuild;

  private @Nullable String lastUnstableBuild;

  private @Nullable String lastUnsuccessfulBuild;

  private @Nullable Integer nextBuildNumber;

  private @Nullable String queueItem;

  private @Nullable Boolean concurrentBuild;

  private @Nullable NullSCM scm;

  public FreeStyleProject propertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_class")
  public @Nullable String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public FreeStyleProject name(@Nullable String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   */
  
  @Schema(name = "name", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("name")
  public @Nullable String getName() {
    return name;
  }

  public void setName(@Nullable String name) {
    this.name = name;
  }

  public FreeStyleProject url(@Nullable String url) {
    this.url = url;
    return this;
  }

  /**
   * Get url
   * @return url
   */
  
  @Schema(name = "url", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("url")
  public @Nullable String getUrl() {
    return url;
  }

  public void setUrl(@Nullable String url) {
    this.url = url;
  }

  public FreeStyleProject color(@Nullable String color) {
    this.color = color;
    return this;
  }

  /**
   * Get color
   * @return color
   */
  
  @Schema(name = "color", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("color")
  public @Nullable String getColor() {
    return color;
  }

  public void setColor(@Nullable String color) {
    this.color = color;
  }

  public FreeStyleProject actions(List<@Valid FreeStyleProjectactions> actions) {
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
  @Schema(name = "actions", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("actions")
  public List<@Valid FreeStyleProjectactions> getActions() {
    return actions;
  }

  public void setActions(List<@Valid FreeStyleProjectactions> actions) {
    this.actions = actions;
  }

  public FreeStyleProject description(@Nullable String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
   */
  
  @Schema(name = "description", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("description")
  public @Nullable String getDescription() {
    return description;
  }

  public void setDescription(@Nullable String description) {
    this.description = description;
  }

  public FreeStyleProject displayName(@Nullable String displayName) {
    this.displayName = displayName;
    return this;
  }

  /**
   * Get displayName
   * @return displayName
   */
  
  @Schema(name = "displayName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("displayName")
  public @Nullable String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(@Nullable String displayName) {
    this.displayName = displayName;
  }

  public FreeStyleProject displayNameOrNull(@Nullable String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
    return this;
  }

  /**
   * Get displayNameOrNull
   * @return displayNameOrNull
   */
  
  @Schema(name = "displayNameOrNull", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("displayNameOrNull")
  public @Nullable String getDisplayNameOrNull() {
    return displayNameOrNull;
  }

  public void setDisplayNameOrNull(@Nullable String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
  }

  public FreeStyleProject fullDisplayName(@Nullable String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

  /**
   * Get fullDisplayName
   * @return fullDisplayName
   */
  
  @Schema(name = "fullDisplayName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("fullDisplayName")
  public @Nullable String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(@Nullable String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public FreeStyleProject fullName(@Nullable String fullName) {
    this.fullName = fullName;
    return this;
  }

  /**
   * Get fullName
   * @return fullName
   */
  
  @Schema(name = "fullName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("fullName")
  public @Nullable String getFullName() {
    return fullName;
  }

  public void setFullName(@Nullable String fullName) {
    this.fullName = fullName;
  }

  public FreeStyleProject buildable(@Nullable Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

  /**
   * Get buildable
   * @return buildable
   */
  
  @Schema(name = "buildable", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("buildable")
  public @Nullable Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(@Nullable Boolean buildable) {
    this.buildable = buildable;
  }

  public FreeStyleProject builds(List<@Valid FreeStyleBuild> builds) {
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
  @Schema(name = "builds", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("builds")
  public List<@Valid FreeStyleBuild> getBuilds() {
    return builds;
  }

  public void setBuilds(List<@Valid FreeStyleBuild> builds) {
    this.builds = builds;
  }

  public FreeStyleProject firstBuild(@Nullable FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
    return this;
  }

  /**
   * Get firstBuild
   * @return firstBuild
   */
  @Valid 
  @Schema(name = "firstBuild", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("firstBuild")
  public @Nullable FreeStyleBuild getFirstBuild() {
    return firstBuild;
  }

  public void setFirstBuild(@Nullable FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

  public FreeStyleProject healthReport(List<@Valid FreeStyleProjecthealthReport> healthReport) {
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
  @Schema(name = "healthReport", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("healthReport")
  public List<@Valid FreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }

  public void setHealthReport(List<@Valid FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
  }

  public FreeStyleProject inQueue(@Nullable Boolean inQueue) {
    this.inQueue = inQueue;
    return this;
  }

  /**
   * Get inQueue
   * @return inQueue
   */
  
  @Schema(name = "inQueue", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("inQueue")
  public @Nullable Boolean getInQueue() {
    return inQueue;
  }

  public void setInQueue(@Nullable Boolean inQueue) {
    this.inQueue = inQueue;
  }

  public FreeStyleProject keepDependencies(@Nullable Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
    return this;
  }

  /**
   * Get keepDependencies
   * @return keepDependencies
   */
  
  @Schema(name = "keepDependencies", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("keepDependencies")
  public @Nullable Boolean getKeepDependencies() {
    return keepDependencies;
  }

  public void setKeepDependencies(@Nullable Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
  }

  public FreeStyleProject lastBuild(@Nullable FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
    return this;
  }

  /**
   * Get lastBuild
   * @return lastBuild
   */
  @Valid 
  @Schema(name = "lastBuild", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("lastBuild")
  public @Nullable FreeStyleBuild getLastBuild() {
    return lastBuild;
  }

  public void setLastBuild(@Nullable FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

  public FreeStyleProject lastCompletedBuild(@Nullable FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
    return this;
  }

  /**
   * Get lastCompletedBuild
   * @return lastCompletedBuild
   */
  @Valid 
  @Schema(name = "lastCompletedBuild", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("lastCompletedBuild")
  public @Nullable FreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }

  public void setLastCompletedBuild(@Nullable FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
  }

  public FreeStyleProject lastFailedBuild(@Nullable String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
    return this;
  }

  /**
   * Get lastFailedBuild
   * @return lastFailedBuild
   */
  
  @Schema(name = "lastFailedBuild", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("lastFailedBuild")
  public @Nullable String getLastFailedBuild() {
    return lastFailedBuild;
  }

  public void setLastFailedBuild(@Nullable String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
  }

  public FreeStyleProject lastStableBuild(@Nullable FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
    return this;
  }

  /**
   * Get lastStableBuild
   * @return lastStableBuild
   */
  @Valid 
  @Schema(name = "lastStableBuild", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("lastStableBuild")
  public @Nullable FreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }

  public void setLastStableBuild(@Nullable FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

  public FreeStyleProject lastSuccessfulBuild(@Nullable FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
    return this;
  }

  /**
   * Get lastSuccessfulBuild
   * @return lastSuccessfulBuild
   */
  @Valid 
  @Schema(name = "lastSuccessfulBuild", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("lastSuccessfulBuild")
  public @Nullable FreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }

  public void setLastSuccessfulBuild(@Nullable FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
  }

  public FreeStyleProject lastUnstableBuild(@Nullable String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
    return this;
  }

  /**
   * Get lastUnstableBuild
   * @return lastUnstableBuild
   */
  
  @Schema(name = "lastUnstableBuild", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("lastUnstableBuild")
  public @Nullable String getLastUnstableBuild() {
    return lastUnstableBuild;
  }

  public void setLastUnstableBuild(@Nullable String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
  }

  public FreeStyleProject lastUnsuccessfulBuild(@Nullable String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
    return this;
  }

  /**
   * Get lastUnsuccessfulBuild
   * @return lastUnsuccessfulBuild
   */
  
  @Schema(name = "lastUnsuccessfulBuild", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("lastUnsuccessfulBuild")
  public @Nullable String getLastUnsuccessfulBuild() {
    return lastUnsuccessfulBuild;
  }

  public void setLastUnsuccessfulBuild(@Nullable String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
  }

  public FreeStyleProject nextBuildNumber(@Nullable Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
    return this;
  }

  /**
   * Get nextBuildNumber
   * @return nextBuildNumber
   */
  
  @Schema(name = "nextBuildNumber", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("nextBuildNumber")
  public @Nullable Integer getNextBuildNumber() {
    return nextBuildNumber;
  }

  public void setNextBuildNumber(@Nullable Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
  }

  public FreeStyleProject queueItem(@Nullable String queueItem) {
    this.queueItem = queueItem;
    return this;
  }

  /**
   * Get queueItem
   * @return queueItem
   */
  
  @Schema(name = "queueItem", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("queueItem")
  public @Nullable String getQueueItem() {
    return queueItem;
  }

  public void setQueueItem(@Nullable String queueItem) {
    this.queueItem = queueItem;
  }

  public FreeStyleProject concurrentBuild(@Nullable Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
    return this;
  }

  /**
   * Get concurrentBuild
   * @return concurrentBuild
   */
  
  @Schema(name = "concurrentBuild", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("concurrentBuild")
  public @Nullable Boolean getConcurrentBuild() {
    return concurrentBuild;
  }

  public void setConcurrentBuild(@Nullable Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
  }

  public FreeStyleProject scm(@Nullable NullSCM scm) {
    this.scm = scm;
    return this;
  }

  /**
   * Get scm
   * @return scm
   */
  @Valid 
  @Schema(name = "scm", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("scm")
  public @Nullable NullSCM getScm() {
    return scm;
  }

  public void setScm(@Nullable NullSCM scm) {
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

