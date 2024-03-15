package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
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
import javax.validation.Valid;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2024-03-15T14:15:08.491800734Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class FreeStyleProject   {
  
  private String propertyClass;
  private String name;
  private String url;
  private String color;
  private List<@Valid FreeStyleProjectactions> actions;
  private String description;
  private String displayName;
  private String displayNameOrNull;
  private String fullDisplayName;
  private String fullName;
  private Boolean buildable;
  private List<@Valid FreeStyleBuild> builds;
  private FreeStyleBuild firstBuild;
  private List<@Valid FreeStyleProjecthealthReport> healthReport;
  private Boolean inQueue;
  private Boolean keepDependencies;
  private FreeStyleBuild lastBuild;
  private FreeStyleBuild lastCompletedBuild;
  private String lastFailedBuild;
  private FreeStyleBuild lastStableBuild;
  private FreeStyleBuild lastSuccessfulBuild;
  private String lastUnstableBuild;
  private String lastUnsuccessfulBuild;
  private Integer nextBuildNumber;
  private String queueItem;
  private Boolean concurrentBuild;
  private NullSCM scm;

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("color")
  public String getColor() {
    return color;
  }
  public void setColor(String color) {
    this.color = color;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("actions")
  @Valid
  public List<@Valid FreeStyleProjectactions> getActions() {
    return actions;
  }
  public void setActions(List<@Valid FreeStyleProjectactions> actions) {
    this.actions = actions;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("displayNameOrNull")
  public String getDisplayNameOrNull() {
    return displayNameOrNull;
  }
  public void setDisplayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }
  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("buildable")
  public Boolean getBuildable() {
    return buildable;
  }
  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("builds")
  @Valid
  public List<@Valid FreeStyleBuild> getBuilds() {
    return builds;
  }
  public void setBuilds(List<@Valid FreeStyleBuild> builds) {
    this.builds = builds;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("firstBuild")
  @Valid
  public FreeStyleBuild getFirstBuild() {
    return firstBuild;
  }
  public void setFirstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("healthReport")
  @Valid
  public List<@Valid FreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }
  public void setHealthReport(List<@Valid FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("inQueue")
  public Boolean getInQueue() {
    return inQueue;
  }
  public void setInQueue(Boolean inQueue) {
    this.inQueue = inQueue;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("keepDependencies")
  public Boolean getKeepDependencies() {
    return keepDependencies;
  }
  public void setKeepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("lastBuild")
  @Valid
  public FreeStyleBuild getLastBuild() {
    return lastBuild;
  }
  public void setLastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("lastCompletedBuild")
  @Valid
  public FreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }
  public void setLastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("lastFailedBuild")
  public String getLastFailedBuild() {
    return lastFailedBuild;
  }
  public void setLastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("lastStableBuild")
  @Valid
  public FreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }
  public void setLastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("lastSuccessfulBuild")
  @Valid
  public FreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }
  public void setLastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("lastUnstableBuild")
  public String getLastUnstableBuild() {
    return lastUnstableBuild;
  }
  public void setLastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("lastUnsuccessfulBuild")
  public String getLastUnsuccessfulBuild() {
    return lastUnsuccessfulBuild;
  }
  public void setLastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("nextBuildNumber")
  public Integer getNextBuildNumber() {
    return nextBuildNumber;
  }
  public void setNextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("queueItem")
  public String getQueueItem() {
    return queueItem;
  }
  public void setQueueItem(String queueItem) {
    this.queueItem = queueItem;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("concurrentBuild")
  public Boolean getConcurrentBuild() {
    return concurrentBuild;
  }
  public void setConcurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("scm")
  @Valid
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

