package org.openapitools.model;

import java.util.*;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class MultibranchPipeline implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("displayName")
  private String displayName;

  @JsonProperty("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis;

  @JsonProperty("latestRun")
  private String latestRun;

  @JsonProperty("name")
  private String name;

  @JsonProperty("organization")
  private String organization;

  @JsonProperty("weatherScore")
  private Integer weatherScore;

  @JsonProperty("branchNames")
  private List<String> branchNames = new ArrayList<>();

  @JsonProperty("numberOfFailingBranches")
  private Integer numberOfFailingBranches;

  @JsonProperty("numberOfFailingPullRequests")
  private Integer numberOfFailingPullRequests;

  @JsonProperty("numberOfSuccessfulBranches")
  private Integer numberOfSuccessfulBranches;

  @JsonProperty("numberOfSuccessfulPullRequests")
  private Integer numberOfSuccessfulPullRequests;

  @JsonProperty("totalNumberOfBranches")
  private Integer totalNumberOfBranches;

  @JsonProperty("totalNumberOfPullRequests")
  private Integer totalNumberOfPullRequests;

  @JsonProperty("_class")
  private String propertyClass;

  /**
   * 
   * @return displayName
   */
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   * 
   * @return estimatedDurationInMillis
   */
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  /**
   * 
   * @return latestRun
   */
  public String getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(String latestRun) {
    this.latestRun = latestRun;
  }

  /**
   * 
   * @return name
   */
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  /**
   * 
   * @return organization
   */
  public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  /**
   * 
   * @return weatherScore
   */
  public Integer getWeatherScore() {
    return weatherScore;
  }

  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  /**
   * 
   * @return branchNames
   */
  public List<String> getBranchNames() {
    return branchNames;
  }

  public void setBranchNames(List<String> branchNames) {
    this.branchNames = branchNames;
  }

  /**
   * 
   * @return numberOfFailingBranches
   */
  public Integer getNumberOfFailingBranches() {
    return numberOfFailingBranches;
  }

  public void setNumberOfFailingBranches(Integer numberOfFailingBranches) {
    this.numberOfFailingBranches = numberOfFailingBranches;
  }

  /**
   * 
   * @return numberOfFailingPullRequests
   */
  public Integer getNumberOfFailingPullRequests() {
    return numberOfFailingPullRequests;
  }

  public void setNumberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
    this.numberOfFailingPullRequests = numberOfFailingPullRequests;
  }

  /**
   * 
   * @return numberOfSuccessfulBranches
   */
  public Integer getNumberOfSuccessfulBranches() {
    return numberOfSuccessfulBranches;
  }

  public void setNumberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
    this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
  }

  /**
   * 
   * @return numberOfSuccessfulPullRequests
   */
  public Integer getNumberOfSuccessfulPullRequests() {
    return numberOfSuccessfulPullRequests;
  }

  public void setNumberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
    this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
  }

  /**
   * 
   * @return totalNumberOfBranches
   */
  public Integer getTotalNumberOfBranches() {
    return totalNumberOfBranches;
  }

  public void setTotalNumberOfBranches(Integer totalNumberOfBranches) {
    this.totalNumberOfBranches = totalNumberOfBranches;
  }

  /**
   * 
   * @return totalNumberOfPullRequests
   */
  public Integer getTotalNumberOfPullRequests() {
    return totalNumberOfPullRequests;
  }

  public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
  }

  /**
   * 
   * @return propertyClass
   */
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
    return Objects.equals(this.displayName, multibranchPipeline.displayName) &&
        Objects.equals(this.estimatedDurationInMillis, multibranchPipeline.estimatedDurationInMillis) &&
        Objects.equals(this.latestRun, multibranchPipeline.latestRun) &&
        Objects.equals(this.name, multibranchPipeline.name) &&
        Objects.equals(this.organization, multibranchPipeline.organization) &&
        Objects.equals(this.weatherScore, multibranchPipeline.weatherScore) &&
        Objects.equals(this.branchNames, multibranchPipeline.branchNames) &&
        Objects.equals(this.numberOfFailingBranches, multibranchPipeline.numberOfFailingBranches) &&
        Objects.equals(this.numberOfFailingPullRequests, multibranchPipeline.numberOfFailingPullRequests) &&
        Objects.equals(this.numberOfSuccessfulBranches, multibranchPipeline.numberOfSuccessfulBranches) &&
        Objects.equals(this.numberOfSuccessfulPullRequests, multibranchPipeline.numberOfSuccessfulPullRequests) &&
        Objects.equals(this.totalNumberOfBranches, multibranchPipeline.totalNumberOfBranches) &&
        Objects.equals(this.totalNumberOfPullRequests, multibranchPipeline.totalNumberOfPullRequests) &&
        Objects.equals(this.propertyClass, multibranchPipeline.propertyClass);
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
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
