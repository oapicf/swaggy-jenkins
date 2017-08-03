package io.swagger.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.server.api.model.FreeStyleBuild;
import io.swagger.server.api.model.FreeStyleProjectactions;
import io.swagger.server.api.model.FreeStyleProjecthealthReport;
import io.swagger.server.api.model.NullSCM;
import java.util.ArrayList;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class FreeStyleProject   {
  
  private String propertyClass = null;
  private String name = null;
  private String url = null;
  private String color = null;
  private List<FreeStyleProjectactions> actions = new ArrayList<FreeStyleProjectactions>();
  private String description = null;
  private String displayName = null;
  private String displayNameOrNull = null;
  private String fullDisplayName = null;
  private String fullName = null;
  private Boolean buildable = null;
  private List<FreeStyleBuild> builds = new ArrayList<FreeStyleBuild>();
  private FreeStyleBuild firstBuild = null;
  private List<FreeStyleProjecthealthReport> healthReport = new ArrayList<FreeStyleProjecthealthReport>();
  private Boolean inQueue = null;
  private Boolean keepDependencies = null;
  private FreeStyleBuild lastBuild = null;
  private FreeStyleBuild lastCompletedBuild = null;
  private String lastFailedBuild = null;
  private FreeStyleBuild lastStableBuild = null;
  private FreeStyleBuild lastSuccessfulBuild = null;
  private String lastUnstableBuild = null;
  private String lastUnsuccessfulBuild = null;
  private Integer nextBuildNumber = null;
  private String queueItem = null;
  private Boolean concurrentBuild = null;
  private NullSCM scm = null;

  public FreeStyleProject () {

  }

  public FreeStyleProject (String propertyClass, String name, String url, String color, List<FreeStyleProjectactions> actions, String description, String displayName, String displayNameOrNull, String fullDisplayName, String fullName, Boolean buildable, List<FreeStyleBuild> builds, FreeStyleBuild firstBuild, List<FreeStyleProjecthealthReport> healthReport, Boolean inQueue, Boolean keepDependencies, FreeStyleBuild lastBuild, FreeStyleBuild lastCompletedBuild, String lastFailedBuild, FreeStyleBuild lastStableBuild, FreeStyleBuild lastSuccessfulBuild, String lastUnstableBuild, String lastUnsuccessfulBuild, Integer nextBuildNumber, String queueItem, Boolean concurrentBuild, NullSCM scm) {
    this.propertyClass = propertyClass;
    this.name = name;
    this.url = url;
    this.color = color;
    this.actions = actions;
    this.description = description;
    this.displayName = displayName;
    this.displayNameOrNull = displayNameOrNull;
    this.fullDisplayName = fullDisplayName;
    this.fullName = fullName;
    this.buildable = buildable;
    this.builds = builds;
    this.firstBuild = firstBuild;
    this.healthReport = healthReport;
    this.inQueue = inQueue;
    this.keepDependencies = keepDependencies;
    this.lastBuild = lastBuild;
    this.lastCompletedBuild = lastCompletedBuild;
    this.lastFailedBuild = lastFailedBuild;
    this.lastStableBuild = lastStableBuild;
    this.lastSuccessfulBuild = lastSuccessfulBuild;
    this.lastUnstableBuild = lastUnstableBuild;
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
    this.nextBuildNumber = nextBuildNumber;
    this.queueItem = queueItem;
    this.concurrentBuild = concurrentBuild;
    this.scm = scm;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

    
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

    
  @JsonProperty("color")
  public String getColor() {
    return color;
  }
  public void setColor(String color) {
    this.color = color;
  }

    
  @JsonProperty("actions")
  public List<FreeStyleProjectactions> getActions() {
    return actions;
  }
  public void setActions(List<FreeStyleProjectactions> actions) {
    this.actions = actions;
  }

    
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

    
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

    
  @JsonProperty("displayNameOrNull")
  public String getDisplayNameOrNull() {
    return displayNameOrNull;
  }
  public void setDisplayNameOrNull(String displayNameOrNull) {
    this.displayNameOrNull = displayNameOrNull;
  }

    
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

    
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }
  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

    
  @JsonProperty("buildable")
  public Boolean isBuildable() {
    return buildable;
  }
  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

    
  @JsonProperty("builds")
  public List<FreeStyleBuild> getBuilds() {
    return builds;
  }
  public void setBuilds(List<FreeStyleBuild> builds) {
    this.builds = builds;
  }

    
  @JsonProperty("firstBuild")
  public FreeStyleBuild getFirstBuild() {
    return firstBuild;
  }
  public void setFirstBuild(FreeStyleBuild firstBuild) {
    this.firstBuild = firstBuild;
  }

    
  @JsonProperty("healthReport")
  public List<FreeStyleProjecthealthReport> getHealthReport() {
    return healthReport;
  }
  public void setHealthReport(List<FreeStyleProjecthealthReport> healthReport) {
    this.healthReport = healthReport;
  }

    
  @JsonProperty("inQueue")
  public Boolean isInQueue() {
    return inQueue;
  }
  public void setInQueue(Boolean inQueue) {
    this.inQueue = inQueue;
  }

    
  @JsonProperty("keepDependencies")
  public Boolean isKeepDependencies() {
    return keepDependencies;
  }
  public void setKeepDependencies(Boolean keepDependencies) {
    this.keepDependencies = keepDependencies;
  }

    
  @JsonProperty("lastBuild")
  public FreeStyleBuild getLastBuild() {
    return lastBuild;
  }
  public void setLastBuild(FreeStyleBuild lastBuild) {
    this.lastBuild = lastBuild;
  }

    
  @JsonProperty("lastCompletedBuild")
  public FreeStyleBuild getLastCompletedBuild() {
    return lastCompletedBuild;
  }
  public void setLastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
    this.lastCompletedBuild = lastCompletedBuild;
  }

    
  @JsonProperty("lastFailedBuild")
  public String getLastFailedBuild() {
    return lastFailedBuild;
  }
  public void setLastFailedBuild(String lastFailedBuild) {
    this.lastFailedBuild = lastFailedBuild;
  }

    
  @JsonProperty("lastStableBuild")
  public FreeStyleBuild getLastStableBuild() {
    return lastStableBuild;
  }
  public void setLastStableBuild(FreeStyleBuild lastStableBuild) {
    this.lastStableBuild = lastStableBuild;
  }

    
  @JsonProperty("lastSuccessfulBuild")
  public FreeStyleBuild getLastSuccessfulBuild() {
    return lastSuccessfulBuild;
  }
  public void setLastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
    this.lastSuccessfulBuild = lastSuccessfulBuild;
  }

    
  @JsonProperty("lastUnstableBuild")
  public String getLastUnstableBuild() {
    return lastUnstableBuild;
  }
  public void setLastUnstableBuild(String lastUnstableBuild) {
    this.lastUnstableBuild = lastUnstableBuild;
  }

    
  @JsonProperty("lastUnsuccessfulBuild")
  public String getLastUnsuccessfulBuild() {
    return lastUnsuccessfulBuild;
  }
  public void setLastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
    this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
  }

    
  @JsonProperty("nextBuildNumber")
  public Integer getNextBuildNumber() {
    return nextBuildNumber;
  }
  public void setNextBuildNumber(Integer nextBuildNumber) {
    this.nextBuildNumber = nextBuildNumber;
  }

    
  @JsonProperty("queueItem")
  public String getQueueItem() {
    return queueItem;
  }
  public void setQueueItem(String queueItem) {
    this.queueItem = queueItem;
  }

    
  @JsonProperty("concurrentBuild")
  public Boolean isConcurrentBuild() {
    return concurrentBuild;
  }
  public void setConcurrentBuild(Boolean concurrentBuild) {
    this.concurrentBuild = concurrentBuild;
  }

    
  @JsonProperty("scm")
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
    return Objects.equals(propertyClass, freeStyleProject.propertyClass) &&
        Objects.equals(name, freeStyleProject.name) &&
        Objects.equals(url, freeStyleProject.url) &&
        Objects.equals(color, freeStyleProject.color) &&
        Objects.equals(actions, freeStyleProject.actions) &&
        Objects.equals(description, freeStyleProject.description) &&
        Objects.equals(displayName, freeStyleProject.displayName) &&
        Objects.equals(displayNameOrNull, freeStyleProject.displayNameOrNull) &&
        Objects.equals(fullDisplayName, freeStyleProject.fullDisplayName) &&
        Objects.equals(fullName, freeStyleProject.fullName) &&
        Objects.equals(buildable, freeStyleProject.buildable) &&
        Objects.equals(builds, freeStyleProject.builds) &&
        Objects.equals(firstBuild, freeStyleProject.firstBuild) &&
        Objects.equals(healthReport, freeStyleProject.healthReport) &&
        Objects.equals(inQueue, freeStyleProject.inQueue) &&
        Objects.equals(keepDependencies, freeStyleProject.keepDependencies) &&
        Objects.equals(lastBuild, freeStyleProject.lastBuild) &&
        Objects.equals(lastCompletedBuild, freeStyleProject.lastCompletedBuild) &&
        Objects.equals(lastFailedBuild, freeStyleProject.lastFailedBuild) &&
        Objects.equals(lastStableBuild, freeStyleProject.lastStableBuild) &&
        Objects.equals(lastSuccessfulBuild, freeStyleProject.lastSuccessfulBuild) &&
        Objects.equals(lastUnstableBuild, freeStyleProject.lastUnstableBuild) &&
        Objects.equals(lastUnsuccessfulBuild, freeStyleProject.lastUnsuccessfulBuild) &&
        Objects.equals(nextBuildNumber, freeStyleProject.nextBuildNumber) &&
        Objects.equals(queueItem, freeStyleProject.queueItem) &&
        Objects.equals(concurrentBuild, freeStyleProject.concurrentBuild) &&
        Objects.equals(scm, freeStyleProject.scm);
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
