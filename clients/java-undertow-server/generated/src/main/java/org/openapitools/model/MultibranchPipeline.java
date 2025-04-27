/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI document version: 3.0.2-pre.0
 * Maintained by: blah+oapicf@cliffano.com
 *
 * AUTO-GENERATED FILE, DO NOT MODIFY!
 */
package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2025-04-27T08:09:27.798203651Z[Etc/UTC]", comments = "Generator version: 7.12.0")
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
   */
  public MultibranchPipeline displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   */
  public MultibranchPipeline estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }
  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  /**
   */
  public MultibranchPipeline latestRun(String latestRun) {
    this.latestRun = latestRun;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("latestRun")
  public String getLatestRun() {
    return latestRun;
  }
  public void setLatestRun(String latestRun) {
    this.latestRun = latestRun;
  }

  /**
   */
  public MultibranchPipeline name(String name) {
    this.name = name;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   */
  public MultibranchPipeline organization(String organization) {
    this.organization = organization;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }
  public void setOrganization(String organization) {
    this.organization = organization;
  }

  /**
   */
  public MultibranchPipeline weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("weatherScore")
  public Integer getWeatherScore() {
    return weatherScore;
  }
  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  /**
   */
  public MultibranchPipeline branchNames(List<String> branchNames) {
    this.branchNames = branchNames;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("branchNames")
  public List<String> getBranchNames() {
    return branchNames;
  }
  public void setBranchNames(List<String> branchNames) {
    this.branchNames = branchNames;
  }

  /**
   */
  public MultibranchPipeline numberOfFailingBranches(Integer numberOfFailingBranches) {
    this.numberOfFailingBranches = numberOfFailingBranches;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("numberOfFailingBranches")
  public Integer getNumberOfFailingBranches() {
    return numberOfFailingBranches;
  }
  public void setNumberOfFailingBranches(Integer numberOfFailingBranches) {
    this.numberOfFailingBranches = numberOfFailingBranches;
  }

  /**
   */
  public MultibranchPipeline numberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
    this.numberOfFailingPullRequests = numberOfFailingPullRequests;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("numberOfFailingPullRequests")
  public Integer getNumberOfFailingPullRequests() {
    return numberOfFailingPullRequests;
  }
  public void setNumberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
    this.numberOfFailingPullRequests = numberOfFailingPullRequests;
  }

  /**
   */
  public MultibranchPipeline numberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
    this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("numberOfSuccessfulBranches")
  public Integer getNumberOfSuccessfulBranches() {
    return numberOfSuccessfulBranches;
  }
  public void setNumberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
    this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
  }

  /**
   */
  public MultibranchPipeline numberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
    this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("numberOfSuccessfulPullRequests")
  public Integer getNumberOfSuccessfulPullRequests() {
    return numberOfSuccessfulPullRequests;
  }
  public void setNumberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
    this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
  }

  /**
   */
  public MultibranchPipeline totalNumberOfBranches(Integer totalNumberOfBranches) {
    this.totalNumberOfBranches = totalNumberOfBranches;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("totalNumberOfBranches")
  public Integer getTotalNumberOfBranches() {
    return totalNumberOfBranches;
  }
  public void setTotalNumberOfBranches(Integer totalNumberOfBranches) {
    this.totalNumberOfBranches = totalNumberOfBranches;
  }

  /**
   */
  public MultibranchPipeline totalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("totalNumberOfPullRequests")
  public Integer getTotalNumberOfPullRequests() {
    return totalNumberOfPullRequests;
  }
  public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
  }

  /**
   */
  public MultibranchPipeline propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
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

