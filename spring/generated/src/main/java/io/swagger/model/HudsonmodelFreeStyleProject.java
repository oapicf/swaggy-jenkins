package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.HudsonmodelFreeStyleBuild;
import io.swagger.model.HudsonmodelFreeStyleProjectactions;
import io.swagger.model.HudsonmodelFreeStyleProjecthealthReport;
import io.swagger.model.HudsonscmNullSCM;
import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * HudsonmodelFreeStyleProject
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-07-25T10:46:28.251+10:00")

public class HudsonmodelFreeStyleProject   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("name")
  private String name = null;

  @JsonProperty("url")
  private String url = null;

  @JsonProperty("color")
  private String color = null;

  @JsonProperty("actions")
  private List<HudsonmodelFreeStyleProjectactions> actions = null;

  @JsonProperty("description")
  private String description = null;

  @JsonProperty("displayName")
  private String displayName = null;

  @JsonProperty("displayNameOrNull")
  private String displayNameOrNull = null;

  @JsonProperty("fullDisplayName")
  private String fullDisplayName = null;

  @JsonProperty("fullName")
  private String fullName = null;

  @JsonProperty("buildable")
  private Boolean buildable = null;

  @JsonProperty("builds")
  private List<HudsonmodelFreeStyleBuild> builds = null;

  @JsonProperty("firstBuild")
  private HudsonmodelFreeStyleBuild firstBuild = null;

  @JsonProperty("healthReport")
  private List<HudsonmodelFreeStyleProjecthealthReport> healthReport = null;

  @JsonProperty("inQueue")
  private Boolean inQueue = null;

  @JsonProperty("keepDependencies")
  private Boolean keepDependencies = null;

  @JsonProperty("lastBuild")
  private HudsonmodelFreeStyleBuild lastBuild = null;

  @JsonProperty("lastCompletedBuild")
  private HudsonmodelFreeStyleBuild lastCompletedBuild = null;

  @JsonProperty("lastFailedBuild")
  private String lastFailedBuild = null;

  @JsonProperty("lastStableBuild")
  private HudsonmodelFreeStyleBuild lastStableBuild = null;

  @JsonProperty("lastSuccessfulBuild")
  private HudsonmodelFreeStyleBuild lastSuccessfulBuild = null;

  @JsonProperty("lastUnstableBuild")
  private String lastUnstableBuild = null;

  @JsonProperty("lastUnsuccessfulBuild")
  private String lastUnsuccessfulBuild = null;

  @JsonProperty("nextBuildNumber")
  private Integer nextBuildNumber = null;

  @JsonProperty("queueItem")
  private String queueItem = null;

  @JsonProperty("concurrentBuild")
  private Boolean concurrentBuild = null;

  @JsonProperty("scm")
  private HudsonscmNullSCM scm = null;

  public HudsonmodelFreeStyleProject propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")


  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public HudsonmodelFreeStyleProject name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @ApiModelProperty(value = "")


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public HudsonmodelFreeStyleProject url(String url) {
    this.url = url;
    return this;
  }

   /**
   * Get url
   * @return url
  **/
  @ApiModelProperty(value = "")


  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public HudsonmodelFreeStyleProject color(String color) {
    this.color = color;
    return this;
  }

   /**
   * Get color
   * @return color
  **/
  @ApiModelProperty(value = "")


  public String getColor() {
    return color;
  }

  public void setColor(String color) {
    this.color = color;
  }

  public HudsonmodelFreeStyleProject actions(List<HudsonmodelFreeStyleProjectactions> actions) {
    this.actions = actions;
    return this;
  }

  public HudsonmodelFreeStyleProject addActionsItem(HudsonmodelFreeStyleProjectactions actionsItem) {
    if (this.actions == null) {
      this.actions = new ArrayList<HudsonmodelFreeStyleProjectactions>();
    }
    this.actions.add(actionsItem);
    return this;
  }

   /**
   * Get actions
   * @return actions
  **/
  @ApiModelProperty(value = "")

  @Valid

  public List<HudsonmodelFreeStyleProjectactions> getActions() {
    return actions;
  }

  public void setActions(List<HudsonmodelFreeStyleProjectactions> actions) {
    this.actions = actions;
  }

  public HudsonmodelFreeStyleProject description(String description) {
    this.description = description;
    return this;
  }

   /**
   * Get description
   * @return description
  **/
  @ApiModelProperty(value = "")


  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public HudsonmodelFreeStyleProject displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

   /**
   * Get displayName
   * @return displayName
  **/
  @ApiModelProperty(value = "")


  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public HudsonmodelFreeStyleProject displayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
    return this;
  }

   /**
   * Get displayNameOrNull
   * @return displayNameOrNull
  **/
  @ApiModelProperty(value = "")


  public String getDisplayNameOrNull() {
    return displayNameOrNull;
  }

  public void setDisplayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
  }

  public HudsonmodelFreeStyleProject fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

   /**
   * Get fullDisplayName
   * @return fullDisplayName
  **/
  @ApiModelProperty(value = "")


  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public HudsonmodelFreeStyleProject fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

   /**
   * Get fullName
   * @return fullName
  **/
  @ApiModelProperty(value = "")


  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public HudsonmodelFreeStyleProject buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

   /**
   * Get buildable
   * @return buildable
  **/
  @ApiModelProperty(value = "")


  public Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  public HudsonmodelFreeStyleProject builds(List<HudsonmodelFreeStyleBuild> builds) {
    this.builds = builds;
    return this;
  }

  public HudsonmodelFreeStyleProject addBuildsItem(HudsonmodelFreeStyleBuild buildsItem) {
    if (this.builds == null) {
      this.builds = new ArrayList<HudsonmodelFreeStyleBuild>();
    }
    this.builds.add(buildsItem);
    return this;
  }

   /**
   * Get builds
   * @return builds
  **/
  @ApiModelProperty(value = "")

  @Valid

  public List<HudsonmodelFreeStyleBuild> getBuilds() {
    return builds;
  }

  public void setBuilds(List<HudsonmodelFreeStyleBuild> builds) {
    this.builds = builds;
  }

  public HudsonmodelFreeStyleProject firstBuild(HudsonmodelFreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
    return this;
  }

   /**
   * Get firstBuild
   * @return firstBuild
  **/
  @ApiModelProperty(value = "")

  @Valid

  public HudsonmodelFreeStyleBuild getFirstBuild() {
    return firstBuild;
  }

  public void setFirstBuild(HudsonmodelFreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

  public HudsonmodelFreeStyleProject healthReport(List<HudsonmodelFreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
    return this;
  }

  public HudsonmodelFreeStyleProject addHealthReportItem(HudsonmodelFreeStyleProjecthealthReport healthReportItem) {
    if (this.healthReport == null) {
      this.healthReport = new ArrayList<HudsonmodelFreeStyleProjecthealthReport>();
    }
    this.healthReport.add(healthReportItem);
    return this;
  }

   /**
   * Get healthReport
   * @return healthReport
  **/
  @ApiModelProperty(value = "")

  @Valid

  public List<HudsonmodelFreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }

  public void setHealthReport(List<HudsonmodelFreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
  }

  public HudsonmodelFreeStyleProject inQueue(Boolean inQueue) {
    this.inQueue = inQueue;
    return this;
  }

   /**
   * Get inQueue
   * @return inQueue
  **/
  @ApiModelProperty(value = "")


  public Boolean getInQueue() {
    return inQueue;
  }

  public void setInQueue(Boolean inQueue) {
    this.inQueue = inQueue;
  }

  public HudsonmodelFreeStyleProject keepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
    return this;
  }

   /**
   * Get keepDependencies
   * @return keepDependencies
  **/
  @ApiModelProperty(value = "")


  public Boolean getKeepDependencies() {
    return keepDependencies;
  }

  public void setKeepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
  }

  public HudsonmodelFreeStyleProject lastBuild(HudsonmodelFreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
    return this;
  }

   /**
   * Get lastBuild
   * @return lastBuild
  **/
  @ApiModelProperty(value = "")

  @Valid

  public HudsonmodelFreeStyleBuild getLastBuild() {
    return lastBuild;
  }

  public void setLastBuild(HudsonmodelFreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

  public HudsonmodelFreeStyleProject lastCompletedBuild(HudsonmodelFreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
    return this;
  }

   /**
   * Get lastCompletedBuild
   * @return lastCompletedBuild
  **/
  @ApiModelProperty(value = "")

  @Valid

  public HudsonmodelFreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }

  public void setLastCompletedBuild(HudsonmodelFreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
  }

  public HudsonmodelFreeStyleProject lastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
    return this;
  }

   /**
   * Get lastFailedBuild
   * @return lastFailedBuild
  **/
  @ApiModelProperty(value = "")


  public String getLastFailedBuild() {
    return lastFailedBuild;
  }

  public void setLastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
  }

  public HudsonmodelFreeStyleProject lastStableBuild(HudsonmodelFreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
    return this;
  }

   /**
   * Get lastStableBuild
   * @return lastStableBuild
  **/
  @ApiModelProperty(value = "")

  @Valid

  public HudsonmodelFreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }

  public void setLastStableBuild(HudsonmodelFreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

  public HudsonmodelFreeStyleProject lastSuccessfulBuild(HudsonmodelFreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
    return this;
  }

   /**
   * Get lastSuccessfulBuild
   * @return lastSuccessfulBuild
  **/
  @ApiModelProperty(value = "")

  @Valid

  public HudsonmodelFreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }

  public void setLastSuccessfulBuild(HudsonmodelFreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
  }

  public HudsonmodelFreeStyleProject lastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
    return this;
  }

   /**
   * Get lastUnstableBuild
   * @return lastUnstableBuild
  **/
  @ApiModelProperty(value = "")


  public String getLastUnstableBuild() {
    return lastUnstableBuild;
  }

  public void setLastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
  }

  public HudsonmodelFreeStyleProject lastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
    return this;
  }

   /**
   * Get lastUnsuccessfulBuild
   * @return lastUnsuccessfulBuild
  **/
  @ApiModelProperty(value = "")


  public String getLastUnsuccessfulBuild() {
    return lastUnsuccessfulBuild;
  }

  public void setLastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
  }

  public HudsonmodelFreeStyleProject nextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
    return this;
  }

   /**
   * Get nextBuildNumber
   * @return nextBuildNumber
  **/
  @ApiModelProperty(value = "")


  public Integer getNextBuildNumber() {
    return nextBuildNumber;
  }

  public void setNextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
  }

  public HudsonmodelFreeStyleProject queueItem(String queueItem) {
    this.queueItem = queueItem;
    return this;
  }

   /**
   * Get queueItem
   * @return queueItem
  **/
  @ApiModelProperty(value = "")


  public String getQueueItem() {
    return queueItem;
  }

  public void setQueueItem(String queueItem) {
    this.queueItem = queueItem;
  }

  public HudsonmodelFreeStyleProject concurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
    return this;
  }

   /**
   * Get concurrentBuild
   * @return concurrentBuild
  **/
  @ApiModelProperty(value = "")


  public Boolean getConcurrentBuild() {
    return concurrentBuild;
  }

  public void setConcurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
  }

  public HudsonmodelFreeStyleProject scm(HudsonscmNullSCM scm) {
    this.scm = scm;
    return this;
  }

   /**
   * Get scm
   * @return scm
  **/
  @ApiModelProperty(value = "")

  @Valid

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
    return Objects.equals(this.propertyClass, hudsonmodelFreeStyleProject.propertyClass) &&
        Objects.equals(this.name, hudsonmodelFreeStyleProject.name) &&
        Objects.equals(this.url, hudsonmodelFreeStyleProject.url) &&
        Objects.equals(this.color, hudsonmodelFreeStyleProject.color) &&
        Objects.equals(this.actions, hudsonmodelFreeStyleProject.actions) &&
        Objects.equals(this.description, hudsonmodelFreeStyleProject.description) &&
        Objects.equals(this.displayName, hudsonmodelFreeStyleProject.displayName) &&
        Objects.equals(this.displayNameOrNull, hudsonmodelFreeStyleProject.displayNameOrNull) &&
        Objects.equals(this.fullDisplayName, hudsonmodelFreeStyleProject.fullDisplayName) &&
        Objects.equals(this.fullName, hudsonmodelFreeStyleProject.fullName) &&
        Objects.equals(this.buildable, hudsonmodelFreeStyleProject.buildable) &&
        Objects.equals(this.builds, hudsonmodelFreeStyleProject.builds) &&
        Objects.equals(this.firstBuild, hudsonmodelFreeStyleProject.firstBuild) &&
        Objects.equals(this.healthReport, hudsonmodelFreeStyleProject.healthReport) &&
        Objects.equals(this.inQueue, hudsonmodelFreeStyleProject.inQueue) &&
        Objects.equals(this.keepDependencies, hudsonmodelFreeStyleProject.keepDependencies) &&
        Objects.equals(this.lastBuild, hudsonmodelFreeStyleProject.lastBuild) &&
        Objects.equals(this.lastCompletedBuild, hudsonmodelFreeStyleProject.lastCompletedBuild) &&
        Objects.equals(this.lastFailedBuild, hudsonmodelFreeStyleProject.lastFailedBuild) &&
        Objects.equals(this.lastStableBuild, hudsonmodelFreeStyleProject.lastStableBuild) &&
        Objects.equals(this.lastSuccessfulBuild, hudsonmodelFreeStyleProject.lastSuccessfulBuild) &&
        Objects.equals(this.lastUnstableBuild, hudsonmodelFreeStyleProject.lastUnstableBuild) &&
        Objects.equals(this.lastUnsuccessfulBuild, hudsonmodelFreeStyleProject.lastUnsuccessfulBuild) &&
        Objects.equals(this.nextBuildNumber, hudsonmodelFreeStyleProject.nextBuildNumber) &&
        Objects.equals(this.queueItem, hudsonmodelFreeStyleProject.queueItem) &&
        Objects.equals(this.concurrentBuild, hudsonmodelFreeStyleProject.concurrentBuild) &&
        Objects.equals(this.scm, hudsonmodelFreeStyleProject.scm);
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

