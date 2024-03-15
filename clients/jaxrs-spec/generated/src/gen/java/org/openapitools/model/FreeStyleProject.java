package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProjectactions;
import org.openapitools.model.FreeStyleProjecthealthReport;
import org.openapitools.model.NullSCM;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("FreeStyleProject")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2024-03-15T14:15:46.626169068Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class FreeStyleProject   {
  private @Valid String propertyClass;
  private @Valid String name;
  private @Valid String url;
  private @Valid String color;
  private @Valid List<@Valid FreeStyleProjectactions> actions;
  private @Valid String description;
  private @Valid String displayName;
  private @Valid String displayNameOrNull;
  private @Valid String fullDisplayName;
  private @Valid String fullName;
  private @Valid Boolean buildable;
  private @Valid List<@Valid FreeStyleBuild> builds;
  private @Valid FreeStyleBuild firstBuild;
  private @Valid List<@Valid FreeStyleProjecthealthReport> healthReport;
  private @Valid Boolean inQueue;
  private @Valid Boolean keepDependencies;
  private @Valid FreeStyleBuild lastBuild;
  private @Valid FreeStyleBuild lastCompletedBuild;
  private @Valid String lastFailedBuild;
  private @Valid FreeStyleBuild lastStableBuild;
  private @Valid FreeStyleBuild lastSuccessfulBuild;
  private @Valid String lastUnstableBuild;
  private @Valid String lastUnsuccessfulBuild;
  private @Valid Integer nextBuildNumber;
  private @Valid String queueItem;
  private @Valid Boolean concurrentBuild;
  private @Valid NullSCM scm;

  /**
   **/
  public FreeStyleProject propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public FreeStyleProject name(String name) {
    this.name = name;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  @JsonProperty("name")
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  public FreeStyleProject url(String url) {
    this.url = url;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }

  @JsonProperty("url")
  public void setUrl(String url) {
    this.url = url;
  }

  /**
   **/
  public FreeStyleProject color(String color) {
    this.color = color;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("color")
  public String getColor() {
    return color;
  }

  @JsonProperty("color")
  public void setColor(String color) {
    this.color = color;
  }

  /**
   **/
  public FreeStyleProject actions(List<@Valid FreeStyleProjectactions> actions) {
    this.actions = actions;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("actions")
  public List<FreeStyleProjectactions> getActions() {
    return actions;
  }

  @JsonProperty("actions")
  public void setActions(List<@Valid FreeStyleProjectactions> actions) {
    this.actions = actions;
  }

  public FreeStyleProject addActionsItem(FreeStyleProjectactions actionsItem) {
    if (this.actions == null) {
      this.actions = new ArrayList<>();
    }

    this.actions.add(actionsItem);
    return this;
  }

  public FreeStyleProject removeActionsItem(FreeStyleProjectactions actionsItem) {
    if (actionsItem != null && this.actions != null) {
      this.actions.remove(actionsItem);
    }

    return this;
  }
  /**
   **/
  public FreeStyleProject description(String description) {
    this.description = description;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  @JsonProperty("description")
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  public FreeStyleProject displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  @JsonProperty("displayName")
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   **/
  public FreeStyleProject displayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("displayNameOrNull")
  public String getDisplayNameOrNull() {
    return displayNameOrNull;
  }

  @JsonProperty("displayNameOrNull")
  public void setDisplayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
  }

  /**
   **/
  public FreeStyleProject fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  @JsonProperty("fullDisplayName")
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   **/
  public FreeStyleProject fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }

  @JsonProperty("fullName")
  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   **/
  public FreeStyleProject buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("buildable")
  public Boolean getBuildable() {
    return buildable;
  }

  @JsonProperty("buildable")
  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  /**
   **/
  public FreeStyleProject builds(List<@Valid FreeStyleBuild> builds) {
    this.builds = builds;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("builds")
  public List<FreeStyleBuild> getBuilds() {
    return builds;
  }

  @JsonProperty("builds")
  public void setBuilds(List<@Valid FreeStyleBuild> builds) {
    this.builds = builds;
  }

  public FreeStyleProject addBuildsItem(FreeStyleBuild buildsItem) {
    if (this.builds == null) {
      this.builds = new ArrayList<>();
    }

    this.builds.add(buildsItem);
    return this;
  }

  public FreeStyleProject removeBuildsItem(FreeStyleBuild buildsItem) {
    if (buildsItem != null && this.builds != null) {
      this.builds.remove(buildsItem);
    }

    return this;
  }
  /**
   **/
  public FreeStyleProject firstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("firstBuild")
  public FreeStyleBuild getFirstBuild() {
    return firstBuild;
  }

  @JsonProperty("firstBuild")
  public void setFirstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

  /**
   **/
  public FreeStyleProject healthReport(List<@Valid FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("healthReport")
  public List<FreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }

  @JsonProperty("healthReport")
  public void setHealthReport(List<@Valid FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
  }

  public FreeStyleProject addHealthReportItem(FreeStyleProjecthealthReport healthReportItem) {
    if (this.healthReport == null) {
      this.healthReport = new ArrayList<>();
    }

    this.healthReport.add(healthReportItem);
    return this;
  }

  public FreeStyleProject removeHealthReportItem(FreeStyleProjecthealthReport healthReportItem) {
    if (healthReportItem != null && this.healthReport != null) {
      this.healthReport.remove(healthReportItem);
    }

    return this;
  }
  /**
   **/
  public FreeStyleProject inQueue(Boolean inQueue) {
    this.inQueue = inQueue;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("inQueue")
  public Boolean getInQueue() {
    return inQueue;
  }

  @JsonProperty("inQueue")
  public void setInQueue(Boolean inQueue) {
    this.inQueue = inQueue;
  }

  /**
   **/
  public FreeStyleProject keepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("keepDependencies")
  public Boolean getKeepDependencies() {
    return keepDependencies;
  }

  @JsonProperty("keepDependencies")
  public void setKeepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
  }

  /**
   **/
  public FreeStyleProject lastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("lastBuild")
  public FreeStyleBuild getLastBuild() {
    return lastBuild;
  }

  @JsonProperty("lastBuild")
  public void setLastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

  /**
   **/
  public FreeStyleProject lastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("lastCompletedBuild")
  public FreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }

  @JsonProperty("lastCompletedBuild")
  public void setLastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
  }

  /**
   **/
  public FreeStyleProject lastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("lastFailedBuild")
  public String getLastFailedBuild() {
    return lastFailedBuild;
  }

  @JsonProperty("lastFailedBuild")
  public void setLastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
  }

  /**
   **/
  public FreeStyleProject lastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("lastStableBuild")
  public FreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }

  @JsonProperty("lastStableBuild")
  public void setLastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

  /**
   **/
  public FreeStyleProject lastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("lastSuccessfulBuild")
  public FreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }

  @JsonProperty("lastSuccessfulBuild")
  public void setLastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
  }

  /**
   **/
  public FreeStyleProject lastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("lastUnstableBuild")
  public String getLastUnstableBuild() {
    return lastUnstableBuild;
  }

  @JsonProperty("lastUnstableBuild")
  public void setLastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
  }

  /**
   **/
  public FreeStyleProject lastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("lastUnsuccessfulBuild")
  public String getLastUnsuccessfulBuild() {
    return lastUnsuccessfulBuild;
  }

  @JsonProperty("lastUnsuccessfulBuild")
  public void setLastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
  }

  /**
   **/
  public FreeStyleProject nextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("nextBuildNumber")
  public Integer getNextBuildNumber() {
    return nextBuildNumber;
  }

  @JsonProperty("nextBuildNumber")
  public void setNextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
  }

  /**
   **/
  public FreeStyleProject queueItem(String queueItem) {
    this.queueItem = queueItem;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("queueItem")
  public String getQueueItem() {
    return queueItem;
  }

  @JsonProperty("queueItem")
  public void setQueueItem(String queueItem) {
    this.queueItem = queueItem;
  }

  /**
   **/
  public FreeStyleProject concurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("concurrentBuild")
  public Boolean getConcurrentBuild() {
    return concurrentBuild;
  }

  @JsonProperty("concurrentBuild")
  public void setConcurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
  }

  /**
   **/
  public FreeStyleProject scm(NullSCM scm) {
    this.scm = scm;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("scm")
  public NullSCM getScm() {
    return scm;
  }

  @JsonProperty("scm")
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

