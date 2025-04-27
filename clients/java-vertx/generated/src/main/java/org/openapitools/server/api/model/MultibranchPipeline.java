package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
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

  public MultibranchPipeline () {

  }

  public MultibranchPipeline (String displayName, Integer estimatedDurationInMillis, String latestRun, String name, String organization, Integer weatherScore, List<String> branchNames, Integer numberOfFailingBranches, Integer numberOfFailingPullRequests, Integer numberOfSuccessfulBranches, Integer numberOfSuccessfulPullRequests, Integer totalNumberOfBranches, Integer totalNumberOfPullRequests, String propertyClass) {
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

    
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

    
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }
  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

    
  @JsonProperty("latestRun")
  public String getLatestRun() {
    return latestRun;
  }
  public void setLatestRun(String latestRun) {
    this.latestRun = latestRun;
  }

    
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

    
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }
  public void setOrganization(String organization) {
    this.organization = organization;
  }

    
  @JsonProperty("weatherScore")
  public Integer getWeatherScore() {
    return weatherScore;
  }
  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

    
  @JsonProperty("branchNames")
  public List<String> getBranchNames() {
    return branchNames;
  }
  public void setBranchNames(List<String> branchNames) {
    this.branchNames = branchNames;
  }

    
  @JsonProperty("numberOfFailingBranches")
  public Integer getNumberOfFailingBranches() {
    return numberOfFailingBranches;
  }
  public void setNumberOfFailingBranches(Integer numberOfFailingBranches) {
    this.numberOfFailingBranches = numberOfFailingBranches;
  }

    
  @JsonProperty("numberOfFailingPullRequests")
  public Integer getNumberOfFailingPullRequests() {
    return numberOfFailingPullRequests;
  }
  public void setNumberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
    this.numberOfFailingPullRequests = numberOfFailingPullRequests;
  }

    
  @JsonProperty("numberOfSuccessfulBranches")
  public Integer getNumberOfSuccessfulBranches() {
    return numberOfSuccessfulBranches;
  }
  public void setNumberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
    this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
  }

    
  @JsonProperty("numberOfSuccessfulPullRequests")
  public Integer getNumberOfSuccessfulPullRequests() {
    return numberOfSuccessfulPullRequests;
  }
  public void setNumberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
    this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
  }

    
  @JsonProperty("totalNumberOfBranches")
  public Integer getTotalNumberOfBranches() {
    return totalNumberOfBranches;
  }
  public void setTotalNumberOfBranches(Integer totalNumberOfBranches) {
    this.totalNumberOfBranches = totalNumberOfBranches;
  }

    
  @JsonProperty("totalNumberOfPullRequests")
  public Integer getTotalNumberOfPullRequests() {
    return totalNumberOfPullRequests;
  }
  public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MultibranchPipeline multibranchPipeline = (MultibranchPipeline) o;
    return Objects.equals(displayName, multibranchPipeline.displayName) &&
        Objects.equals(estimatedDurationInMillis, multibranchPipeline.estimatedDurationInMillis) &&
        Objects.equals(latestRun, multibranchPipeline.latestRun) &&
        Objects.equals(name, multibranchPipeline.name) &&
        Objects.equals(organization, multibranchPipeline.organization) &&
        Objects.equals(weatherScore, multibranchPipeline.weatherScore) &&
        Objects.equals(branchNames, multibranchPipeline.branchNames) &&
        Objects.equals(numberOfFailingBranches, multibranchPipeline.numberOfFailingBranches) &&
        Objects.equals(numberOfFailingPullRequests, multibranchPipeline.numberOfFailingPullRequests) &&
        Objects.equals(numberOfSuccessfulBranches, multibranchPipeline.numberOfSuccessfulBranches) &&
        Objects.equals(numberOfSuccessfulPullRequests, multibranchPipeline.numberOfSuccessfulPullRequests) &&
        Objects.equals(totalNumberOfBranches, multibranchPipeline.totalNumberOfBranches) &&
        Objects.equals(totalNumberOfPullRequests, multibranchPipeline.totalNumberOfPullRequests) &&
        Objects.equals(propertyClass, multibranchPipeline.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(displayName, estimatedDurationInMillis, latestRun, name, organization, weatherScore, branchNames, numberOfFailingBranches, numberOfFailingPullRequests, numberOfSuccessfulBranches, numberOfSuccessfulPullRequests, totalNumberOfBranches, totalNumberOfPullRequests, propertyClass);
  }

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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
