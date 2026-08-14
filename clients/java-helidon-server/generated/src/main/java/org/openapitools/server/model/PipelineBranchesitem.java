package org.openapitools.server.model;

import org.openapitools.server.model.PipelineBranchesitemlatestRun;
import org.openapitools.server.model.PipelineBranchesitempullRequest;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class PipelineBranchesitem   {

    private String displayName;
    private Integer estimatedDurationInMillis;
    private String name;
    private Integer weatherScore;
    private PipelineBranchesitemlatestRun latestRun;
    private String organization;
    private PipelineBranchesitempullRequest pullRequest;
    private Integer totalNumberOfPullRequests;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public PipelineBranchesitem() {
    // JSON-B / Jackson
    }

    /**
     * Create PipelineBranchesitem.
     *
     * @param displayName displayName
     * @param estimatedDurationInMillis estimatedDurationInMillis
     * @param name name
     * @param weatherScore weatherScore
     * @param latestRun latestRun
     * @param organization organization
     * @param pullRequest pullRequest
     * @param totalNumberOfPullRequests totalNumberOfPullRequests
     * @param propertyClass propertyClass
     */
    public PipelineBranchesitem(
        String displayName, 
        Integer estimatedDurationInMillis, 
        String name, 
        Integer weatherScore, 
        PipelineBranchesitemlatestRun latestRun, 
        String organization, 
        PipelineBranchesitempullRequest pullRequest, 
        Integer totalNumberOfPullRequests, 
        String propertyClass
    ) {
        this.displayName = displayName;
        this.estimatedDurationInMillis = estimatedDurationInMillis;
        this.name = name;
        this.weatherScore = weatherScore;
        this.latestRun = latestRun;
        this.organization = organization;
        this.pullRequest = pullRequest;
        this.totalNumberOfPullRequests = totalNumberOfPullRequests;
        this.propertyClass = propertyClass;
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
     * Get estimatedDurationInMillis
     * @return estimatedDurationInMillis
     */
    public Integer getEstimatedDurationInMillis() {
        return estimatedDurationInMillis;
    }

    public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
        this.estimatedDurationInMillis = estimatedDurationInMillis;
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
     * Get weatherScore
     * @return weatherScore
     */
    public Integer getWeatherScore() {
        return weatherScore;
    }

    public void setWeatherScore(Integer weatherScore) {
        this.weatherScore = weatherScore;
    }

    /**
     * Get latestRun
     * @return latestRun
     */
    public PipelineBranchesitemlatestRun getLatestRun() {
        return latestRun;
    }

    public void setLatestRun(PipelineBranchesitemlatestRun latestRun) {
        this.latestRun = latestRun;
    }

    /**
     * Get organization
     * @return organization
     */
    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    /**
     * Get pullRequest
     * @return pullRequest
     */
    public PipelineBranchesitempullRequest getPullRequest() {
        return pullRequest;
    }

    public void setPullRequest(PipelineBranchesitempullRequest pullRequest) {
        this.pullRequest = pullRequest;
    }

    /**
     * Get totalNumberOfPullRequests
     * @return totalNumberOfPullRequests
     */
    public Integer getTotalNumberOfPullRequests() {
        return totalNumberOfPullRequests;
    }

    public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
        this.totalNumberOfPullRequests = totalNumberOfPullRequests;
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
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class PipelineBranchesitem {\n");
        
        sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
        sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
        sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
        sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
        sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
        sb.append("    pullRequest: ").append(toIndentedString(pullRequest)).append("\n");
        sb.append("    totalNumberOfPullRequests: ").append(toIndentedString(totalNumberOfPullRequests)).append("\n");
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

