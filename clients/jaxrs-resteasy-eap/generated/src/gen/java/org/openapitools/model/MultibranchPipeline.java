package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import io.swagger.annotations.*;


@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2019-04-09T15:09:07.842Z[GMT]")
public class MultibranchPipeline   {
  

  private String displayName = null;

  private Integer estimatedDurationInMillis = null;

  private String latestRun = null;

  private String name = null;

  private String organization = null;

  private Integer weatherScore = null;

  private List<String> branchNames = new ArrayList<String>();

  private Integer numberOfFailingBranches = null;

  private Integer numberOfFailingPullRequests = null;

  private Integer numberOfSuccessfulBranches = null;

  private Integer numberOfSuccessfulPullRequests = null;

  private Integer totalNumberOfBranches = null;

  private Integer totalNumberOfPullRequests = null;

  private String propertyClass = null;

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }
  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("latestRun")
  public String getLatestRun() {
    return latestRun;
  }
  public void setLatestRun(String latestRun) {
    this.latestRun = latestRun;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }
  public void setOrganization(String organization) {
    this.organization = organization;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("weatherScore")
  public Integer getWeatherScore() {
    return weatherScore;
  }
  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("branchNames")
  public List<String> getBranchNames() {
    return branchNames;
  }
  public void setBranchNames(List<String> branchNames) {
    this.branchNames = branchNames;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("numberOfFailingBranches")
  public Integer getNumberOfFailingBranches() {
    return numberOfFailingBranches;
  }
  public void setNumberOfFailingBranches(Integer numberOfFailingBranches) {
    this.numberOfFailingBranches = numberOfFailingBranches;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("numberOfFailingPullRequests")
  public Integer getNumberOfFailingPullRequests() {
    return numberOfFailingPullRequests;
  }
  public void setNumberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
    this.numberOfFailingPullRequests = numberOfFailingPullRequests;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("numberOfSuccessfulBranches")
  public Integer getNumberOfSuccessfulBranches() {
    return numberOfSuccessfulBranches;
  }
  public void setNumberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
    this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("numberOfSuccessfulPullRequests")
  public Integer getNumberOfSuccessfulPullRequests() {
    return numberOfSuccessfulPullRequests;
  }
  public void setNumberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
    this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("totalNumberOfBranches")
  public Integer getTotalNumberOfBranches() {
    return totalNumberOfBranches;
  }
  public void setTotalNumberOfBranches(Integer totalNumberOfBranches) {
    this.totalNumberOfBranches = totalNumberOfBranches;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("totalNumberOfPullRequests")
  public Integer getTotalNumberOfPullRequests() {
    return totalNumberOfPullRequests;
  }
  public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
    this.totalNumberOfPullRequests = totalNumberOfPullRequests;
  }

  /**
   **/
  
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

