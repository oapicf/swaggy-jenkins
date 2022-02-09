/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.FreeStyleBuild;
import org.openapitools.client.model.FreeStyleProjectactions;
import org.openapitools.client.model.FreeStyleProjecthealthReport;
import org.openapitools.client.model.NullSCM;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class FreeStyleProject {
  
  @SerializedName("_class")
  private String _class = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("url")
  private String url = null;
  @SerializedName("color")
  private String color = null;
  @SerializedName("actions")
  private List<FreeStyleProjectactions> actions = null;
  @SerializedName("description")
  private String description = null;
  @SerializedName("displayName")
  private String displayName = null;
  @SerializedName("displayNameOrNull")
  private String displayNameOrNull = null;
  @SerializedName("fullDisplayName")
  private String fullDisplayName = null;
  @SerializedName("fullName")
  private String fullName = null;
  @SerializedName("buildable")
  private Boolean buildable = null;
  @SerializedName("builds")
  private List<FreeStyleBuild> builds = null;
  @SerializedName("firstBuild")
  private FreeStyleBuild firstBuild = null;
  @SerializedName("healthReport")
  private List<FreeStyleProjecthealthReport> healthReport = null;
  @SerializedName("inQueue")
  private Boolean inQueue = null;
  @SerializedName("keepDependencies")
  private Boolean keepDependencies = null;
  @SerializedName("lastBuild")
  private FreeStyleBuild lastBuild = null;
  @SerializedName("lastCompletedBuild")
  private FreeStyleBuild lastCompletedBuild = null;
  @SerializedName("lastFailedBuild")
  private String lastFailedBuild = null;
  @SerializedName("lastStableBuild")
  private FreeStyleBuild lastStableBuild = null;
  @SerializedName("lastSuccessfulBuild")
  private FreeStyleBuild lastSuccessfulBuild = null;
  @SerializedName("lastUnstableBuild")
  private String lastUnstableBuild = null;
  @SerializedName("lastUnsuccessfulBuild")
  private String lastUnsuccessfulBuild = null;
  @SerializedName("nextBuildNumber")
  private Integer nextBuildNumber = null;
  @SerializedName("queueItem")
  private String queueItem = null;
  @SerializedName("concurrentBuild")
  private Boolean concurrentBuild = null;
  @SerializedName("scm")
  private NullSCM scm = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getClass() {
    return _class;
  }
  public void setClass(String _class) {
    this._class = _class;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getColor() {
    return color;
  }
  public void setColor(String color) {
    this.color = color;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<FreeStyleProjectactions> getActions() {
    return actions;
  }
  public void setActions(List<FreeStyleProjectactions> actions) {
    this.actions = actions;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDisplayNameOrNull() {
    return displayNameOrNull;
  }
  public void setDisplayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getFullDisplayName() {
    return fullDisplayName;
  }
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getFullName() {
    return fullName;
  }
  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getBuildable() {
    return buildable;
  }
  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<FreeStyleBuild> getBuilds() {
    return builds;
  }
  public void setBuilds(List<FreeStyleBuild> builds) {
    this.builds = builds;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public FreeStyleBuild getFirstBuild() {
    return firstBuild;
  }
  public void setFirstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<FreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }
  public void setHealthReport(List<FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getInQueue() {
    return inQueue;
  }
  public void setInQueue(Boolean inQueue) {
    this.inQueue = inQueue;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getKeepDependencies() {
    return keepDependencies;
  }
  public void setKeepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public FreeStyleBuild getLastBuild() {
    return lastBuild;
  }
  public void setLastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public FreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }
  public void setLastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLastFailedBuild() {
    return lastFailedBuild;
  }
  public void setLastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public FreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }
  public void setLastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public FreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }
  public void setLastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLastUnstableBuild() {
    return lastUnstableBuild;
  }
  public void setLastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLastUnsuccessfulBuild() {
    return lastUnsuccessfulBuild;
  }
  public void setLastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getNextBuildNumber() {
    return nextBuildNumber;
  }
  public void setNextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getQueueItem() {
    return queueItem;
  }
  public void setQueueItem(String queueItem) {
    this.queueItem = queueItem;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getConcurrentBuild() {
    return concurrentBuild;
  }
  public void setConcurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
  }

  /**
   **/
  @ApiModelProperty(value = "")
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
    return (this._class == null ? freeStyleProject._class == null : this._class.equals(freeStyleProject._class)) &&
        (this.name == null ? freeStyleProject.name == null : this.name.equals(freeStyleProject.name)) &&
        (this.url == null ? freeStyleProject.url == null : this.url.equals(freeStyleProject.url)) &&
        (this.color == null ? freeStyleProject.color == null : this.color.equals(freeStyleProject.color)) &&
        (this.actions == null ? freeStyleProject.actions == null : this.actions.equals(freeStyleProject.actions)) &&
        (this.description == null ? freeStyleProject.description == null : this.description.equals(freeStyleProject.description)) &&
        (this.displayName == null ? freeStyleProject.displayName == null : this.displayName.equals(freeStyleProject.displayName)) &&
        (this.displayNameOrNull == null ? freeStyleProject.displayNameOrNull == null : this.displayNameOrNull.equals(freeStyleProject.displayNameOrNull)) &&
        (this.fullDisplayName == null ? freeStyleProject.fullDisplayName == null : this.fullDisplayName.equals(freeStyleProject.fullDisplayName)) &&
        (this.fullName == null ? freeStyleProject.fullName == null : this.fullName.equals(freeStyleProject.fullName)) &&
        (this.buildable == null ? freeStyleProject.buildable == null : this.buildable.equals(freeStyleProject.buildable)) &&
        (this.builds == null ? freeStyleProject.builds == null : this.builds.equals(freeStyleProject.builds)) &&
        (this.firstBuild == null ? freeStyleProject.firstBuild == null : this.firstBuild.equals(freeStyleProject.firstBuild)) &&
        (this.healthReport == null ? freeStyleProject.healthReport == null : this.healthReport.equals(freeStyleProject.healthReport)) &&
        (this.inQueue == null ? freeStyleProject.inQueue == null : this.inQueue.equals(freeStyleProject.inQueue)) &&
        (this.keepDependencies == null ? freeStyleProject.keepDependencies == null : this.keepDependencies.equals(freeStyleProject.keepDependencies)) &&
        (this.lastBuild == null ? freeStyleProject.lastBuild == null : this.lastBuild.equals(freeStyleProject.lastBuild)) &&
        (this.lastCompletedBuild == null ? freeStyleProject.lastCompletedBuild == null : this.lastCompletedBuild.equals(freeStyleProject.lastCompletedBuild)) &&
        (this.lastFailedBuild == null ? freeStyleProject.lastFailedBuild == null : this.lastFailedBuild.equals(freeStyleProject.lastFailedBuild)) &&
        (this.lastStableBuild == null ? freeStyleProject.lastStableBuild == null : this.lastStableBuild.equals(freeStyleProject.lastStableBuild)) &&
        (this.lastSuccessfulBuild == null ? freeStyleProject.lastSuccessfulBuild == null : this.lastSuccessfulBuild.equals(freeStyleProject.lastSuccessfulBuild)) &&
        (this.lastUnstableBuild == null ? freeStyleProject.lastUnstableBuild == null : this.lastUnstableBuild.equals(freeStyleProject.lastUnstableBuild)) &&
        (this.lastUnsuccessfulBuild == null ? freeStyleProject.lastUnsuccessfulBuild == null : this.lastUnsuccessfulBuild.equals(freeStyleProject.lastUnsuccessfulBuild)) &&
        (this.nextBuildNumber == null ? freeStyleProject.nextBuildNumber == null : this.nextBuildNumber.equals(freeStyleProject.nextBuildNumber)) &&
        (this.queueItem == null ? freeStyleProject.queueItem == null : this.queueItem.equals(freeStyleProject.queueItem)) &&
        (this.concurrentBuild == null ? freeStyleProject.concurrentBuild == null : this.concurrentBuild.equals(freeStyleProject.concurrentBuild)) &&
        (this.scm == null ? freeStyleProject.scm == null : this.scm.equals(freeStyleProject.scm));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    result = 31 * result + (this.color == null ? 0: this.color.hashCode());
    result = 31 * result + (this.actions == null ? 0: this.actions.hashCode());
    result = 31 * result + (this.description == null ? 0: this.description.hashCode());
    result = 31 * result + (this.displayName == null ? 0: this.displayName.hashCode());
    result = 31 * result + (this.displayNameOrNull == null ? 0: this.displayNameOrNull.hashCode());
    result = 31 * result + (this.fullDisplayName == null ? 0: this.fullDisplayName.hashCode());
    result = 31 * result + (this.fullName == null ? 0: this.fullName.hashCode());
    result = 31 * result + (this.buildable == null ? 0: this.buildable.hashCode());
    result = 31 * result + (this.builds == null ? 0: this.builds.hashCode());
    result = 31 * result + (this.firstBuild == null ? 0: this.firstBuild.hashCode());
    result = 31 * result + (this.healthReport == null ? 0: this.healthReport.hashCode());
    result = 31 * result + (this.inQueue == null ? 0: this.inQueue.hashCode());
    result = 31 * result + (this.keepDependencies == null ? 0: this.keepDependencies.hashCode());
    result = 31 * result + (this.lastBuild == null ? 0: this.lastBuild.hashCode());
    result = 31 * result + (this.lastCompletedBuild == null ? 0: this.lastCompletedBuild.hashCode());
    result = 31 * result + (this.lastFailedBuild == null ? 0: this.lastFailedBuild.hashCode());
    result = 31 * result + (this.lastStableBuild == null ? 0: this.lastStableBuild.hashCode());
    result = 31 * result + (this.lastSuccessfulBuild == null ? 0: this.lastSuccessfulBuild.hashCode());
    result = 31 * result + (this.lastUnstableBuild == null ? 0: this.lastUnstableBuild.hashCode());
    result = 31 * result + (this.lastUnsuccessfulBuild == null ? 0: this.lastUnsuccessfulBuild.hashCode());
    result = 31 * result + (this.nextBuildNumber == null ? 0: this.nextBuildNumber.hashCode());
    result = 31 * result + (this.queueItem == null ? 0: this.queueItem.hashCode());
    result = 31 * result + (this.concurrentBuild == null ? 0: this.concurrentBuild.hashCode());
    result = 31 * result + (this.scm == null ? 0: this.scm.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class FreeStyleProject {\n");
    
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("  color: ").append(color).append("\n");
    sb.append("  actions: ").append(actions).append("\n");
    sb.append("  description: ").append(description).append("\n");
    sb.append("  displayName: ").append(displayName).append("\n");
    sb.append("  displayNameOrNull: ").append(displayNameOrNull).append("\n");
    sb.append("  fullDisplayName: ").append(fullDisplayName).append("\n");
    sb.append("  fullName: ").append(fullName).append("\n");
    sb.append("  buildable: ").append(buildable).append("\n");
    sb.append("  builds: ").append(builds).append("\n");
    sb.append("  firstBuild: ").append(firstBuild).append("\n");
    sb.append("  healthReport: ").append(healthReport).append("\n");
    sb.append("  inQueue: ").append(inQueue).append("\n");
    sb.append("  keepDependencies: ").append(keepDependencies).append("\n");
    sb.append("  lastBuild: ").append(lastBuild).append("\n");
    sb.append("  lastCompletedBuild: ").append(lastCompletedBuild).append("\n");
    sb.append("  lastFailedBuild: ").append(lastFailedBuild).append("\n");
    sb.append("  lastStableBuild: ").append(lastStableBuild).append("\n");
    sb.append("  lastSuccessfulBuild: ").append(lastSuccessfulBuild).append("\n");
    sb.append("  lastUnstableBuild: ").append(lastUnstableBuild).append("\n");
    sb.append("  lastUnsuccessfulBuild: ").append(lastUnsuccessfulBuild).append("\n");
    sb.append("  nextBuildNumber: ").append(nextBuildNumber).append("\n");
    sb.append("  queueItem: ").append(queueItem).append("\n");
    sb.append("  concurrentBuild: ").append(concurrentBuild).append("\n");
    sb.append("  scm: ").append(scm).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
