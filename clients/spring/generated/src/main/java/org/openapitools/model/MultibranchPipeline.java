package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * MultibranchPipeline
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2022-06-04T08:12:04.098807Z[Etc/UTC]")
public class MultibranchPipeline {

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
  @Valid
  private List<String> branchNames = null;

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

  public MultibranchPipeline displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  /**
   * Get displayName
   * @return displayName
  */
  
  @Schema(name = "displayName", required = false)
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public MultibranchPipeline estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

  /**
   * Get estimatedDurationInMillis
   * @return estimatedDurationInMillis
  */
  
  @Schema(name = "estimatedDurationInMillis", required = false)
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  public MultibranchPipeline latestRun(String latestRun) {
    this.latestRun = latestRun;
    return this;
  }

  /**
   * Get latestRun
   * @return latestRun
  */
  
  @Schema(name = "latestRun", required = false)
  public String getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(String latestRun) {
    this.latestRun = latestRun;
  }

  public MultibranchPipeline name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
  */
  
  @Schema(name = "name", required = false)
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public MultibranchPipeline organization(String organization) {
    this.organization = organization;
    return this;
  }

  /**
   * Get organization
   * @return organization
  */
  
  @Schema(name = "organization", required = false)
  public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  public MultibranchPipeline weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

  /**
   * Get weatherScore
   * @return weatherScore
  */
  
  @Schema(name = "weatherScore", required = false)
  public Integer getWeatherScore() {
    return weatherScore;
  }

  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  public MultibranchPipeline branchNames(List<String> branchNames) {
    this.branchNames = branchNames;
    return this;
  }

  public MultibranchPipeline addBranchNamesItem(String branchNamesItem) {
    if (this.branchNames == null) {
      this.branchNames = new ArrayList<>();
    }
    this.branchNames.add(branchNamesItem);
    return this;
  }

  /**
   * Get branchNames
   * @return branchNames
  */
  
  @Schema(name = "branchNames", required = false)
  public List<String> getBranchNames() {
    return branchNames;
  }

  public void setBranchNames(List<String> branchNames) {
    this.branchNames = branchNames;
  }

  public MultibranchPipeline numberOfFailingBranches(Integer numberOfFailingBranches) {
    this.numberOfFailingBranches = numberOfFailingBranches;
    return this;
  }

  /**
   * Get numberOfFailingBranches
   * @return numberOfFailingBranches
  */
  
  @Schema(name = "numberOfFailingBranches", required = false)
  public Integer getNumberOfFailingBranches() {
    return numberOfFailingBranches;
  }

  public void setNumberOfFailingBranches(Integer numberOfFailingBranches) {
    this.numberOfFailingBranches = numberOfFailingBranches;
  }

  public MultibranchPipeline numberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
    this.numberOfFailingPullRequests = numberOfFailingPullRequests;
    return this;
  }

  /**
   * Get numberOfFailingPullRequests
   * @return numberOfFailingPullRequests
  */
  
  @Schema(name = "numberOfFailingPullRequests", required = false)
  public Integer getNumberOfFailingPullRequests() {
    return numberOfFailingPullRequests;
  }

  public void setNumberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
    this.numberOfFailingPullRequests = numberOfFailingPullRequests;
  }

  public MultibranchPipeline numberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
    this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
    return this;
  }

  /**
   * Get numberOfSuccessfulBranches
   * @return numberOfSuccessfulBranches
  */
  
  @Schema(name = "numberOfSuccessfulBranches", required = false)
  public Integer getNumberOfSuccessfulBranches() {
    return numberOfSuccessfulBranches;
  }

  public void setNumberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
    this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
  }

  public MultibranchPipeline numberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
    this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
    return this;
  }

  /**
   * Get numberOfSuccessfulPullRequests
   * @return numberOfSuccessfulPullRequests
  */
  
  @Schema(name = "numberOfSuccessfulPullRequests", required = false)
  public Integer getNumberOfSuccessfulPullRequests() {
    return numberOfSuccessfulPullRequests;
  }

  public void setNumberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
    this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
  }

  public MultibranchPipeline totalNumberOfBranches(Integer totalNumberOfBranches) {
    this.totalNumberOfBranches = totalNumberOfBranches;
    return this;
  }

  /**
   * Get totalNumberOfBranches
   * @return totalNumberOfBranches
  */
  
  @Schema(name = "totalNumberOfBranches", required = false)
  public Integer getTotalNumberOfBranches() {
    return totalNumberOfBranches;
  }

  public void setTotalNumberOfBranches(Integer totalNumberOfBranches) {
    this.totalNumberOfBranches = totalNumberOfBranches;
  }

  public MultibranchPipeline totalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
    return this;
  }

  /**
   * Get totalNumberOfPullRequests
   * @return totalNumberOfPullRequests
  */
  
  @Schema(name = "totalNumberOfPullRequests", required = false)
  public Integer getTotalNumberOfPullRequests() {
    return totalNumberOfPullRequests;
  }

  public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
  }

  public MultibranchPipeline propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
  */
  
  @Schema(name = "_class", required = false)
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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

