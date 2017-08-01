package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.HudsonmodelFreeStyleBuild;
import io.swagger.model.HudsonmodelFreeStyleProjectactions;
import io.swagger.model.HudsonmodelFreeStyleProjecthealthReport;
import io.swagger.model.HudsonscmNullSCM;
import java.util.List;
import javax.validation.constraints.*;
import io.swagger.annotations.*;


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-07-25T10:45:08.057+10:00")
public class HudsonmodelFreeStyleProject   {
  
  private String propertyClass = null;
  private String name = null;
  private String url = null;
  private String color = null;
  private List<HudsonmodelFreeStyleProjectactions> actions = new ArrayList<HudsonmodelFreeStyleProjectactions>();
  private String description = null;
  private String displayName = null;
  private String displayNameOrNull = null;
  private String fullDisplayName = null;
  private String fullName = null;
  private Boolean buildable = null;
  private List<HudsonmodelFreeStyleBuild> builds = new ArrayList<HudsonmodelFreeStyleBuild>();
  private HudsonmodelFreeStyleBuild firstBuild = null;
  private List<HudsonmodelFreeStyleProjecthealthReport> healthReport = new ArrayList<HudsonmodelFreeStyleProjecthealthReport>();
  private Boolean inQueue = null;
  private Boolean keepDependencies = null;
  private HudsonmodelFreeStyleBuild lastBuild = null;
  private HudsonmodelFreeStyleBuild lastCompletedBuild = null;
  private String lastFailedBuild = null;
  private HudsonmodelFreeStyleBuild lastStableBuild = null;
  private HudsonmodelFreeStyleBuild lastSuccessfulBuild = null;
  private String lastUnstableBuild = null;
  private String lastUnsuccessfulBuild = null;
  private Integer nextBuildNumber = null;
  private String queueItem = null;
  private Boolean concurrentBuild = null;
  private HudsonscmNullSCM scm = null;

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
  public List<HudsonmodelFreeStyleProjectactions> getActions() {
    return actions;
  }
  public void setActions(List<HudsonmodelFreeStyleProjectactions> actions) {
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
  public List<HudsonmodelFreeStyleBuild> getBuilds() {
    return builds;
  }
  public void setBuilds(List<HudsonmodelFreeStyleBuild> builds) {
    this.builds = builds;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("firstBuild")
  public HudsonmodelFreeStyleBuild getFirstBuild() {
    return firstBuild;
  }
  public void setFirstBuild(HudsonmodelFreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("healthReport")
  public List<HudsonmodelFreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }
  public void setHealthReport(List<HudsonmodelFreeStyleProjecthealthReport> healthReport) {
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
  public HudsonmodelFreeStyleBuild getLastBuild() {
    return lastBuild;
  }
  public void setLastBuild(HudsonmodelFreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("lastCompletedBuild")
  public HudsonmodelFreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }
  public void setLastCompletedBuild(HudsonmodelFreeStyleBuild lastCompletedBuild) {
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
  public HudsonmodelFreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }
  public void setLastStableBuild(HudsonmodelFreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("lastSuccessfulBuild")
  public HudsonmodelFreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }
  public void setLastSuccessfulBuild(HudsonmodelFreeStyleBuild lastSuccessfulBuild) {
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
  public HudsonscmNullSCM getScm() {
    return scm;
  }
  public void setScm(HudsonscmNullSCM scm) {
    this.scm = scm;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonmodelFreeStyleProject hudsonmodelFreeStyleProject = (HudsonmodelFreeStyleProject) o;
    return Objects.equals(propertyClass, hudsonmodelFreeStyleProject.propertyClass) &&
        Objects.equals(name, hudsonmodelFreeStyleProject.name) &&
        Objects.equals(url, hudsonmodelFreeStyleProject.url) &&
        Objects.equals(color, hudsonmodelFreeStyleProject.color) &&
        Objects.equals(actions, hudsonmodelFreeStyleProject.actions) &&
        Objects.equals(description, hudsonmodelFreeStyleProject.description) &&
        Objects.equals(displayName, hudsonmodelFreeStyleProject.displayName) &&
        Objects.equals(displayNameOrNull, hudsonmodelFreeStyleProject.displayNameOrNull) &&
        Objects.equals(fullDisplayName, hudsonmodelFreeStyleProject.fullDisplayName) &&
        Objects.equals(fullName, hudsonmodelFreeStyleProject.fullName) &&
        Objects.equals(buildable, hudsonmodelFreeStyleProject.buildable) &&
        Objects.equals(builds, hudsonmodelFreeStyleProject.builds) &&
        Objects.equals(firstBuild, hudsonmodelFreeStyleProject.firstBuild) &&
        Objects.equals(healthReport, hudsonmodelFreeStyleProject.healthReport) &&
        Objects.equals(inQueue, hudsonmodelFreeStyleProject.inQueue) &&
        Objects.equals(keepDependencies, hudsonmodelFreeStyleProject.keepDependencies) &&
        Objects.equals(lastBuild, hudsonmodelFreeStyleProject.lastBuild) &&
        Objects.equals(lastCompletedBuild, hudsonmodelFreeStyleProject.lastCompletedBuild) &&
        Objects.equals(lastFailedBuild, hudsonmodelFreeStyleProject.lastFailedBuild) &&
        Objects.equals(lastStableBuild, hudsonmodelFreeStyleProject.lastStableBuild) &&
        Objects.equals(lastSuccessfulBuild, hudsonmodelFreeStyleProject.lastSuccessfulBuild) &&
        Objects.equals(lastUnstableBuild, hudsonmodelFreeStyleProject.lastUnstableBuild) &&
        Objects.equals(lastUnsuccessfulBuild, hudsonmodelFreeStyleProject.lastUnsuccessfulBuild) &&
        Objects.equals(nextBuildNumber, hudsonmodelFreeStyleProject.nextBuildNumber) &&
        Objects.equals(queueItem, hudsonmodelFreeStyleProject.queueItem) &&
        Objects.equals(concurrentBuild, hudsonmodelFreeStyleProject.concurrentBuild) &&
        Objects.equals(scm, hudsonmodelFreeStyleProject.scm);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, name, url, color, actions, description, displayName, displayNameOrNull, fullDisplayName, fullName, buildable, builds, firstBuild, healthReport, inQueue, keepDependencies, lastBuild, lastCompletedBuild, lastFailedBuild, lastStableBuild, lastSuccessfulBuild, lastUnstableBuild, lastUnsuccessfulBuild, nextBuildNumber, queueItem, concurrentBuild, scm);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

