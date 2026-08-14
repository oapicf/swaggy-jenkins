package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class MultibranchPipeline   {

    private String displayName;
    private Integer estimatedDurationInMillis;
    private String latestRun;
    private String name;
    private String organization;
    private Integer weatherScore;
    private List<String> branchNames = new ArrayList<>();
    private Integer numberOfFailingBranches;
    private Integer numberOfFailingPullRequests;
    private Integer numberOfSuccessfulBranches;
    private Integer numberOfSuccessfulPullRequests;
    private Integer totalNumberOfBranches;
    private Integer totalNumberOfPullRequests;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public MultibranchPipeline() {
    // JSON-B / Jackson
    }

    /**
     * Create MultibranchPipeline.
     *
     * @param displayName displayName
     * @param estimatedDurationInMillis estimatedDurationInMillis
     * @param latestRun latestRun
     * @param name name
     * @param organization organization
     * @param weatherScore weatherScore
     * @param branchNames branchNames
     * @param numberOfFailingBranches numberOfFailingBranches
     * @param numberOfFailingPullRequests numberOfFailingPullRequests
     * @param numberOfSuccessfulBranches numberOfSuccessfulBranches
     * @param numberOfSuccessfulPullRequests numberOfSuccessfulPullRequests
     * @param totalNumberOfBranches totalNumberOfBranches
     * @param totalNumberOfPullRequests totalNumberOfPullRequests
     * @param propertyClass propertyClass
     */
    public MultibranchPipeline(
        String displayName, 
        Integer estimatedDurationInMillis, 
        String latestRun, 
        String name, 
        String organization, 
        Integer weatherScore, 
        List<String> branchNames, 
        Integer numberOfFailingBranches, 
        Integer numberOfFailingPullRequests, 
        Integer numberOfSuccessfulBranches, 
        Integer numberOfSuccessfulPullRequests, 
        Integer totalNumberOfBranches, 
        Integer totalNumberOfPullRequests, 
        String propertyClass
    ) {
        this.displayName = displayName;
        this.estimatedDurationInMillis = estimatedDurationInMillis;
        this.latestRun = latestRun;
        this.name = name;
        this.organization = organization;
        this.weatherScore = weatherScore;
        this.branchNames = branchNames;
        this.numberOfFailingBranches = numberOfFailingBranches;
        this.numberOfFailingPullRequests = numberOfFailingPullRequests;
        this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
        this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
        this.totalNumberOfBranches = totalNumberOfBranches;
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
     * Get latestRun
     * @return latestRun
     */
    public String getLatestRun() {
        return latestRun;
    }

    public void setLatestRun(String latestRun) {
        this.latestRun = latestRun;
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
     * Get branchNames
     * @return branchNames
     */
    public List<String> getBranchNames() {
        return branchNames;
    }

    public void setBranchNames(List<String> branchNames) {
        this.branchNames = branchNames;
    }

    /**
     * Get numberOfFailingBranches
     * @return numberOfFailingBranches
     */
    public Integer getNumberOfFailingBranches() {
        return numberOfFailingBranches;
    }

    public void setNumberOfFailingBranches(Integer numberOfFailingBranches) {
        this.numberOfFailingBranches = numberOfFailingBranches;
    }

    /**
     * Get numberOfFailingPullRequests
     * @return numberOfFailingPullRequests
     */
    public Integer getNumberOfFailingPullRequests() {
        return numberOfFailingPullRequests;
    }

    public void setNumberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
        this.numberOfFailingPullRequests = numberOfFailingPullRequests;
    }

    /**
     * Get numberOfSuccessfulBranches
     * @return numberOfSuccessfulBranches
     */
    public Integer getNumberOfSuccessfulBranches() {
        return numberOfSuccessfulBranches;
    }

    public void setNumberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
        this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
    }

    /**
     * Get numberOfSuccessfulPullRequests
     * @return numberOfSuccessfulPullRequests
     */
    public Integer getNumberOfSuccessfulPullRequests() {
        return numberOfSuccessfulPullRequests;
    }

    public void setNumberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
        this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
    }

    /**
     * Get totalNumberOfBranches
     * @return totalNumberOfBranches
     */
    public Integer getTotalNumberOfBranches() {
        return totalNumberOfBranches;
    }

    public void setTotalNumberOfBranches(Integer totalNumberOfBranches) {
        this.totalNumberOfBranches = totalNumberOfBranches;
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
        sb.append("class MultibranchPipeline {\n");
        
        sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
        sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
        sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
        sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
        sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
        sb.append("    branchNames: ").append(toIndentedString(branchNames)).append("\n");
        sb.append("    numberOfFailingBranches: ").append(toIndentedString(numberOfFailingBranches)).append("\n");
        sb.append("    numberOfFailingPullRequests: ").append(toIndentedString(numberOfFailingPullRequests)).append("\n");
        sb.append("    numberOfSuccessfulBranches: ").append(toIndentedString(numberOfSuccessfulBranches)).append("\n");
        sb.append("    numberOfSuccessfulPullRequests: ").append(toIndentedString(numberOfSuccessfulPullRequests)).append("\n");
        sb.append("    totalNumberOfBranches: ").append(toIndentedString(totalNumberOfBranches)).append("\n");
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

