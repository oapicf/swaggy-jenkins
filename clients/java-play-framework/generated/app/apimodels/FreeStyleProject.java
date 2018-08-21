package apimodels;

import apimodels.FreeStyleBuild;
import apimodels.FreeStyleProjectactions;
import apimodels.FreeStyleProjecthealthReport;
import apimodels.NullSCM;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * FreeStyleProject
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2018-08-21T04:38:33.847Z[GMT]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class FreeStyleProject   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("name")
  private String name = null;

  @JsonProperty("url")
  private String url = null;

  @JsonProperty("color")
  private String color = null;

  @JsonProperty("actions")
  private List<FreeStyleProjectactions> actions = null;

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
  private List<FreeStyleBuild> builds = null;

  @JsonProperty("firstBuild")
  private FreeStyleBuild firstBuild = null;

  @JsonProperty("healthReport")
  private List<FreeStyleProjecthealthReport> healthReport = null;

  @JsonProperty("inQueue")
  private Boolean inQueue = null;

  @JsonProperty("keepDependencies")
  private Boolean keepDependencies = null;

  @JsonProperty("lastBuild")
  private FreeStyleBuild lastBuild = null;

  @JsonProperty("lastCompletedBuild")
  private FreeStyleBuild lastCompletedBuild = null;

  @JsonProperty("lastFailedBuild")
  private String lastFailedBuild = null;

  @JsonProperty("lastStableBuild")
  private FreeStyleBuild lastStableBuild = null;

  @JsonProperty("lastSuccessfulBuild")
  private FreeStyleBuild lastSuccessfulBuild = null;

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
  private NullSCM scm = null;

  public FreeStyleProject propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
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
  **/
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
  **/
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
  **/
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
    if (actions == null) {
      actions = new ArrayList<>();
    }
    actions.add(actionsItem);
    return this;
  }

   /**
   * Get actions
   * @return actions
  **/
  @Valid
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
  **/
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
  **/
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
  **/
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
  **/
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
  **/
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
  **/
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
    if (builds == null) {
      builds = new ArrayList<>();
    }
    builds.add(buildsItem);
    return this;
  }

   /**
   * Get builds
   * @return builds
  **/
  @Valid
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
  **/
  @Valid
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
    if (healthReport == null) {
      healthReport = new ArrayList<>();
    }
    healthReport.add(healthReportItem);
    return this;
  }

   /**
   * Get healthReport
   * @return healthReport
  **/
  @Valid
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
  **/
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
  **/
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
  **/
  @Valid
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
  **/
  @Valid
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
  **/
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
  **/
  @Valid
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
  **/
  @Valid
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
  **/
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
  **/
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
  **/
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
  **/
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
  **/
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
  **/
  @Valid
  public NullSCM getScm() {
    return scm;
  }

  public void setScm(NullSCM scm) {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

