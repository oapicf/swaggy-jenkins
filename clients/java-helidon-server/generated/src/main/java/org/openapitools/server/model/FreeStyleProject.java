package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.FreeStyleBuild;
import org.openapitools.server.model.FreeStyleProjectactions;
import org.openapitools.server.model.FreeStyleProjecthealthReport;
import org.openapitools.server.model.NullSCM;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class FreeStyleProject   {

    private String propertyClass;
    private String name;
    private String url;
    private String color;
    private List<@Valid FreeStyleProjectactions> actions = new ArrayList<>();
    private String description;
    private String displayName;
    private String displayNameOrNull;
    private String fullDisplayName;
    private String fullName;
    private Boolean buildable;
    private List<@Valid FreeStyleBuild> builds = new ArrayList<>();
    private FreeStyleBuild firstBuild;
    private List<@Valid FreeStyleProjecthealthReport> healthReport = new ArrayList<>();
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
     * Default constructor.
     */
    public FreeStyleProject() {
    // JSON-B / Jackson
    }

    /**
     * Create FreeStyleProject.
     *
     * @param propertyClass propertyClass
     * @param name name
     * @param url url
     * @param color color
     * @param actions actions
     * @param description description
     * @param displayName displayName
     * @param displayNameOrNull displayNameOrNull
     * @param fullDisplayName fullDisplayName
     * @param fullName fullName
     * @param buildable buildable
     * @param builds builds
     * @param firstBuild firstBuild
     * @param healthReport healthReport
     * @param inQueue inQueue
     * @param keepDependencies keepDependencies
     * @param lastBuild lastBuild
     * @param lastCompletedBuild lastCompletedBuild
     * @param lastFailedBuild lastFailedBuild
     * @param lastStableBuild lastStableBuild
     * @param lastSuccessfulBuild lastSuccessfulBuild
     * @param lastUnstableBuild lastUnstableBuild
     * @param lastUnsuccessfulBuild lastUnsuccessfulBuild
     * @param nextBuildNumber nextBuildNumber
     * @param queueItem queueItem
     * @param concurrentBuild concurrentBuild
     * @param scm scm
     */
    public FreeStyleProject(
        String propertyClass, 
        String name, 
        String url, 
        String color, 
        List<@Valid FreeStyleProjectactions> actions, 
        String description, 
        String displayName, 
        String displayNameOrNull, 
        String fullDisplayName, 
        String fullName, 
        Boolean buildable, 
        List<@Valid FreeStyleBuild> builds, 
        FreeStyleBuild firstBuild, 
        List<@Valid FreeStyleProjecthealthReport> healthReport, 
        Boolean inQueue, 
        Boolean keepDependencies, 
        FreeStyleBuild lastBuild, 
        FreeStyleBuild lastCompletedBuild, 
        String lastFailedBuild, 
        FreeStyleBuild lastStableBuild, 
        FreeStyleBuild lastSuccessfulBuild, 
        String lastUnstableBuild, 
        String lastUnsuccessfulBuild, 
        Integer nextBuildNumber, 
        String queueItem, 
        Boolean concurrentBuild, 
        NullSCM scm
    ) {
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



    /**
     * Get propertyClass
     * @return propertyClass
     */
    public String getPropertyClass() {
        return propertyClass;
    }

    public void setPropertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
    }

    /**
     * Get name
     * @return name
     */
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /**
     * Get url
     * @return url
     */
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * Get color
     * @return color
     */
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    /**
     * Get actions
     * @return actions
     */
    public List<@Valid FreeStyleProjectactions> getActions() {
        return actions;
    }

    public void setActions(List<@Valid FreeStyleProjectactions> actions) {
        this.actions = actions;
    }

    /**
     * Get description
     * @return description
     */
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * Get displayName
     * @return displayName
     */
    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    /**
     * Get displayNameOrNull
     * @return displayNameOrNull
     */
    public String getDisplayNameOrNull() {
        return displayNameOrNull;
    }

    public void setDisplayNameOrNull(String displayNameOrNull) {
        this.displayNameOrNull = displayNameOrNull;
    }

    /**
     * Get fullDisplayName
     * @return fullDisplayName
     */
    public String getFullDisplayName() {
        return fullDisplayName;
    }

    public void setFullDisplayName(String fullDisplayName) {
        this.fullDisplayName = fullDisplayName;
    }

    /**
     * Get fullName
     * @return fullName
     */
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    /**
     * Get buildable
     * @return buildable
     */
    public Boolean getBuildable() {
        return buildable;
    }

    public void setBuildable(Boolean buildable) {
        this.buildable = buildable;
    }

    /**
     * Get builds
     * @return builds
     */
    public List<@Valid FreeStyleBuild> getBuilds() {
        return builds;
    }

    public void setBuilds(List<@Valid FreeStyleBuild> builds) {
        this.builds = builds;
    }

    /**
     * Get firstBuild
     * @return firstBuild
     */
    public FreeStyleBuild getFirstBuild() {
        return firstBuild;
    }

    public void setFirstBuild(FreeStyleBuild firstBuild) {
        this.firstBuild = firstBuild;
    }

    /**
     * Get healthReport
     * @return healthReport
     */
    public List<@Valid FreeStyleProjecthealthReport> getHealthReport() {
        return healthReport;
    }

    public void setHealthReport(List<@Valid FreeStyleProjecthealthReport> healthReport) {
        this.healthReport = healthReport;
    }

    /**
     * Get inQueue
     * @return inQueue
     */
    public Boolean getInQueue() {
        return inQueue;
    }

    public void setInQueue(Boolean inQueue) {
        this.inQueue = inQueue;
    }

    /**
     * Get keepDependencies
     * @return keepDependencies
     */
    public Boolean getKeepDependencies() {
        return keepDependencies;
    }

    public void setKeepDependencies(Boolean keepDependencies) {
        this.keepDependencies = keepDependencies;
    }

    /**
     * Get lastBuild
     * @return lastBuild
     */
    public FreeStyleBuild getLastBuild() {
        return lastBuild;
    }

    public void setLastBuild(FreeStyleBuild lastBuild) {
        this.lastBuild = lastBuild;
    }

    /**
     * Get lastCompletedBuild
     * @return lastCompletedBuild
     */
    public FreeStyleBuild getLastCompletedBuild() {
        return lastCompletedBuild;
    }

    public void setLastCompletedBuild(FreeStyleBuild lastCompletedBuild) {
        this.lastCompletedBuild = lastCompletedBuild;
    }

    /**
     * Get lastFailedBuild
     * @return lastFailedBuild
     */
    public String getLastFailedBuild() {
        return lastFailedBuild;
    }

    public void setLastFailedBuild(String lastFailedBuild) {
        this.lastFailedBuild = lastFailedBuild;
    }

    /**
     * Get lastStableBuild
     * @return lastStableBuild
     */
    public FreeStyleBuild getLastStableBuild() {
        return lastStableBuild;
    }

    public void setLastStableBuild(FreeStyleBuild lastStableBuild) {
        this.lastStableBuild = lastStableBuild;
    }

    /**
     * Get lastSuccessfulBuild
     * @return lastSuccessfulBuild
     */
    public FreeStyleBuild getLastSuccessfulBuild() {
        return lastSuccessfulBuild;
    }

    public void setLastSuccessfulBuild(FreeStyleBuild lastSuccessfulBuild) {
        this.lastSuccessfulBuild = lastSuccessfulBuild;
    }

    /**
     * Get lastUnstableBuild
     * @return lastUnstableBuild
     */
    public String getLastUnstableBuild() {
        return lastUnstableBuild;
    }

    public void setLastUnstableBuild(String lastUnstableBuild) {
        this.lastUnstableBuild = lastUnstableBuild;
    }

    /**
     * Get lastUnsuccessfulBuild
     * @return lastUnsuccessfulBuild
     */
    public String getLastUnsuccessfulBuild() {
        return lastUnsuccessfulBuild;
    }

    public void setLastUnsuccessfulBuild(String lastUnsuccessfulBuild) {
        this.lastUnsuccessfulBuild = lastUnsuccessfulBuild;
    }

    /**
     * Get nextBuildNumber
     * @return nextBuildNumber
     */
    public Integer getNextBuildNumber() {
        return nextBuildNumber;
    }

    public void setNextBuildNumber(Integer nextBuildNumber) {
        this.nextBuildNumber = nextBuildNumber;
    }

    /**
     * Get queueItem
     * @return queueItem
     */
    public String getQueueItem() {
        return queueItem;
    }

    public void setQueueItem(String queueItem) {
        this.queueItem = queueItem;
    }

    /**
     * Get concurrentBuild
     * @return concurrentBuild
     */
    public Boolean getConcurrentBuild() {
        return concurrentBuild;
    }

    public void setConcurrentBuild(Boolean concurrentBuild) {
        this.concurrentBuild = concurrentBuild;
    }

    /**
     * Get scm
     * @return scm
     */
    public NullSCM getScm() {
        return scm;
    }

    public void setScm(NullSCM scm) {
        this.scm = scm;
    }

    /**
      * Create a string representation of this pojo.
    **/
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
    private static String toIndentedString(Object o) {
        return o == null ? "null" : o.toString().replace("\n", "\n    ");
    }
}

