/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.model;

import java.util.Objects;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProjectactions;
import org.openapitools.model.FreeStyleProjecthealthReport;
import org.openapitools.model.NullSCM;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * FreeStyleProject
 */
@JsonPropertyOrder({
  FreeStyleProject.JSON_PROPERTY_PROPERTY_CLASS,
  FreeStyleProject.JSON_PROPERTY_NAME,
  FreeStyleProject.JSON_PROPERTY_URL,
  FreeStyleProject.JSON_PROPERTY_COLOR,
  FreeStyleProject.JSON_PROPERTY_ACTIONS,
  FreeStyleProject.JSON_PROPERTY_DESCRIPTION,
  FreeStyleProject.JSON_PROPERTY_DISPLAY_NAME,
  FreeStyleProject.JSON_PROPERTY_DISPLAY_NAME_OR_NULL,
  FreeStyleProject.JSON_PROPERTY_FULL_DISPLAY_NAME,
  FreeStyleProject.JSON_PROPERTY_FULL_NAME,
  FreeStyleProject.JSON_PROPERTY_BUILDABLE,
  FreeStyleProject.JSON_PROPERTY_BUILDS,
  FreeStyleProject.JSON_PROPERTY_FIRST_BUILD,
  FreeStyleProject.JSON_PROPERTY_HEALTH_REPORT,
  FreeStyleProject.JSON_PROPERTY_IN_QUEUE,
  FreeStyleProject.JSON_PROPERTY_KEEP_DEPENDENCIES,
  FreeStyleProject.JSON_PROPERTY_LAST_BUILD,
  FreeStyleProject.JSON_PROPERTY_LAST_COMPLETED_BUILD,
  FreeStyleProject.JSON_PROPERTY_LAST_FAILED_BUILD,
  FreeStyleProject.JSON_PROPERTY_LAST_STABLE_BUILD,
  FreeStyleProject.JSON_PROPERTY_LAST_SUCCESSFUL_BUILD,
  FreeStyleProject.JSON_PROPERTY_LAST_UNSTABLE_BUILD,
  FreeStyleProject.JSON_PROPERTY_LAST_UNSUCCESSFUL_BUILD,
  FreeStyleProject.JSON_PROPERTY_NEXT_BUILD_NUMBER,
  FreeStyleProject.JSON_PROPERTY_QUEUE_ITEM,
  FreeStyleProject.JSON_PROPERTY_CONCURRENT_BUILD,
  FreeStyleProject.JSON_PROPERTY_SCM
})
@JsonTypeName("FreeStyleProject")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2022-06-04T08:08:17.621469Z[Etc/UTC]")
@Introspected
public class FreeStyleProject {
    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public static final String JSON_PROPERTY_NAME = "name";
    private String name;

    public static final String JSON_PROPERTY_URL = "url";
    private String url;

    public static final String JSON_PROPERTY_COLOR = "color";
    private String color;

    public static final String JSON_PROPERTY_ACTIONS = "actions";
    private List<FreeStyleProjectactions> actions = null;

    public static final String JSON_PROPERTY_DESCRIPTION = "description";
    private String description;

    public static final String JSON_PROPERTY_DISPLAY_NAME = "displayName";
    private String displayName;

    public static final String JSON_PROPERTY_DISPLAY_NAME_OR_NULL = "displayNameOrNull";
    private String displayNameOrNull;

    public static final String JSON_PROPERTY_FULL_DISPLAY_NAME = "fullDisplayName";
    private String fullDisplayName;

    public static final String JSON_PROPERTY_FULL_NAME = "fullName";
    private String fullName;

    public static final String JSON_PROPERTY_BUILDABLE = "buildable";
    private Boolean buildable;

    public static final String JSON_PROPERTY_BUILDS = "builds";
    private List<FreeStyleBuild> builds = null;

    public static final String JSON_PROPERTY_FIRST_BUILD = "firstBuild";
    private FreeStyleBuild firstBuild;

    public static final String JSON_PROPERTY_HEALTH_REPORT = "healthReport";
    private List<FreeStyleProjecthealthReport> healthReport = null;

    public static final String JSON_PROPERTY_IN_QUEUE = "inQueue";
    private Boolean inQueue;

    public static final String JSON_PROPERTY_KEEP_DEPENDENCIES = "keepDependencies";
    private Boolean keepDependencies;

    public static final String JSON_PROPERTY_LAST_BUILD = "lastBuild";
    private FreeStyleBuild lastBuild;

    public static final String JSON_PROPERTY_LAST_COMPLETED_BUILD = "lastCompletedBuild";
    private FreeStyleBuild lastCompletedBuild;

    public static final String JSON_PROPERTY_LAST_FAILED_BUILD = "lastFailedBuild";
    private String lastFailedBuild;

    public static final String JSON_PROPERTY_LAST_STABLE_BUILD = "lastStableBuild";
    private FreeStyleBuild lastStableBuild;

    public static final String JSON_PROPERTY_LAST_SUCCESSFUL_BUILD = "lastSuccessfulBuild";
    private FreeStyleBuild lastSuccessfulBuild;

    public static final String JSON_PROPERTY_LAST_UNSTABLE_BUILD = "lastUnstableBuild";
    private String lastUnstableBuild;

    public static final String JSON_PROPERTY_LAST_UNSUCCESSFUL_BUILD = "lastUnsuccessfulBuild";
    private String lastUnsuccessfulBuild;

    public static final String JSON_PROPERTY_NEXT_BUILD_NUMBER = "nextBuildNumber";
    private Integer nextBuildNumber;

    public static final String JSON_PROPERTY_QUEUE_ITEM = "queueItem";
    private String queueItem;

    public static final String JSON_PROPERTY_CONCURRENT_BUILD = "concurrentBuild";
    private Boolean concurrentBuild;

    public static final String JSON_PROPERTY_SCM = "scm";
    private NullSCM scm;

    public FreeStyleProject() {
    }

    public FreeStyleProject propertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
        return this;
    }

    /**
     * Get propertyClass
     * @return propertyClass
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getPropertyClass() {
        return propertyClass;
    }

    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getName() {
        return name;
    }

    @JsonProperty(JSON_PROPERTY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_URL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getUrl() {
        return url;
    }

    @JsonProperty(JSON_PROPERTY_URL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_COLOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getColor() {
        return color;
    }

    @JsonProperty(JSON_PROPERTY_COLOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_ACTIONS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public List<FreeStyleProjectactions> getActions() {
        return actions;
    }

    @JsonProperty(JSON_PROPERTY_ACTIONS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_DESCRIPTION)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getDescription() {
        return description;
    }

    @JsonProperty(JSON_PROPERTY_DESCRIPTION)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_DISPLAY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getDisplayName() {
        return displayName;
    }

    @JsonProperty(JSON_PROPERTY_DISPLAY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_DISPLAY_NAME_OR_NULL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getDisplayNameOrNull() {
        return displayNameOrNull;
    }

    @JsonProperty(JSON_PROPERTY_DISPLAY_NAME_OR_NULL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_FULL_DISPLAY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getFullDisplayName() {
        return fullDisplayName;
    }

    @JsonProperty(JSON_PROPERTY_FULL_DISPLAY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_FULL_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getFullName() {
        return fullName;
    }

    @JsonProperty(JSON_PROPERTY_FULL_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_BUILDABLE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Boolean getBuildable() {
        return buildable;
    }

    @JsonProperty(JSON_PROPERTY_BUILDABLE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_BUILDS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public List<FreeStyleBuild> getBuilds() {
        return builds;
    }

    @JsonProperty(JSON_PROPERTY_BUILDS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_FIRST_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public FreeStyleBuild getFirstBuild() {
        return firstBuild;
    }

    @JsonProperty(JSON_PROPERTY_FIRST_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_HEALTH_REPORT)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public List<FreeStyleProjecthealthReport> getHealthReport() {
        return healthReport;
    }

    @JsonProperty(JSON_PROPERTY_HEALTH_REPORT)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_IN_QUEUE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Boolean getInQueue() {
        return inQueue;
    }

    @JsonProperty(JSON_PROPERTY_IN_QUEUE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_KEEP_DEPENDENCIES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Boolean getKeepDependencies() {
        return keepDependencies;
    }

    @JsonProperty(JSON_PROPERTY_KEEP_DEPENDENCIES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_LAST_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public FreeStyleBuild getLastBuild() {
        return lastBuild;
    }

    @JsonProperty(JSON_PROPERTY_LAST_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_LAST_COMPLETED_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public FreeStyleBuild getLastCompletedBuild() {
        return lastCompletedBuild;
    }

    @JsonProperty(JSON_PROPERTY_LAST_COMPLETED_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_LAST_FAILED_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getLastFailedBuild() {
        return lastFailedBuild;
    }

    @JsonProperty(JSON_PROPERTY_LAST_FAILED_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_LAST_STABLE_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public FreeStyleBuild getLastStableBuild() {
        return lastStableBuild;
    }

    @JsonProperty(JSON_PROPERTY_LAST_STABLE_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_LAST_SUCCESSFUL_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public FreeStyleBuild getLastSuccessfulBuild() {
        return lastSuccessfulBuild;
    }

    @JsonProperty(JSON_PROPERTY_LAST_SUCCESSFUL_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_LAST_UNSTABLE_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getLastUnstableBuild() {
        return lastUnstableBuild;
    }

    @JsonProperty(JSON_PROPERTY_LAST_UNSTABLE_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_LAST_UNSUCCESSFUL_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getLastUnsuccessfulBuild() {
        return lastUnsuccessfulBuild;
    }

    @JsonProperty(JSON_PROPERTY_LAST_UNSUCCESSFUL_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_NEXT_BUILD_NUMBER)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getNextBuildNumber() {
        return nextBuildNumber;
    }

    @JsonProperty(JSON_PROPERTY_NEXT_BUILD_NUMBER)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_QUEUE_ITEM)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getQueueItem() {
        return queueItem;
    }

    @JsonProperty(JSON_PROPERTY_QUEUE_ITEM)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_CONCURRENT_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Boolean getConcurrentBuild() {
        return concurrentBuild;
    }

    @JsonProperty(JSON_PROPERTY_CONCURRENT_BUILD)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_SCM)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public NullSCM getScm() {
        return scm;
    }

    @JsonProperty(JSON_PROPERTY_SCM)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
