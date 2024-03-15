package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.BranchImpllinks;
import org.openapitools.model.BranchImplpermissions;
import org.openapitools.model.PipelineRunImpl;
import org.openapitools.model.StringParameterDefinition;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class BranchImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String displayName;

  @ApiModelProperty(value = "")
  private Integer estimatedDurationInMillis;

  @ApiModelProperty(value = "")
  private String fullDisplayName;

  @ApiModelProperty(value = "")
  private String fullName;

  @ApiModelProperty(value = "")
  private String name;

  @ApiModelProperty(value = "")
  private String organization;

  @ApiModelProperty(value = "")
  private List<StringParameterDefinition> parameters;

  @ApiModelProperty(value = "")
  private BranchImplpermissions permissions;

  @ApiModelProperty(value = "")
  private Integer weatherScore;

  @ApiModelProperty(value = "")
  private String pullRequest;

  @ApiModelProperty(value = "")
  private BranchImpllinks links;

  @ApiModelProperty(value = "")
  private PipelineRunImpl latestRun;
 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public BranchImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get displayName
   * @return displayName
  **/
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public BranchImpl displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
   * Get estimatedDurationInMillis
   * @return estimatedDurationInMillis
  **/
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  public BranchImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

 /**
   * Get fullDisplayName
   * @return fullDisplayName
  **/
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public BranchImpl fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

 /**
   * Get fullName
   * @return fullName
  **/
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public BranchImpl fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

 /**
   * Get name
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public BranchImpl name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get organization
   * @return organization
  **/
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  public BranchImpl organization(String organization) {
    this.organization = organization;
    return this;
  }

 /**
   * Get parameters
   * @return parameters
  **/
  @JsonProperty("parameters")
  public List<StringParameterDefinition> getParameters() {
    return parameters;
  }

  public void setParameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  public BranchImpl parameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
    return this;
  }

  public BranchImpl addParametersItem(StringParameterDefinition parametersItem) {
    this.parameters.add(parametersItem);
    return this;
  }

 /**
   * Get permissions
   * @return permissions
  **/
  @JsonProperty("permissions")
  public BranchImplpermissions getPermissions() {
    return permissions;
  }

  public void setPermissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
  }

  public BranchImpl permissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
    return this;
  }

 /**
   * Get weatherScore
   * @return weatherScore
  **/
  @JsonProperty("weatherScore")
  public Integer getWeatherScore() {
    return weatherScore;
  }

  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  public BranchImpl weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

 /**
   * Get pullRequest
   * @return pullRequest
  **/
  @JsonProperty("pullRequest")
  public String getPullRequest() {
    return pullRequest;
  }

  public void setPullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
  }

  public BranchImpl pullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public BranchImpllinks getLinks() {
    return links;
  }

  public void setLinks(BranchImpllinks links) {
    this.links = links;
  }

  public BranchImpl links(BranchImpllinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get latestRun
   * @return latestRun
  **/
  @JsonProperty("latestRun")
  public PipelineRunImpl getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(PipelineRunImpl latestRun) {
    this.latestRun = latestRun;
  }

  public BranchImpl latestRun(PipelineRunImpl latestRun) {
    this.latestRun = latestRun;
    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BranchImpl branchImpl = (BranchImpl) o;
    return Objects.equals(this.propertyClass, branchImpl.propertyClass) &&
        Objects.equals(this.displayName, branchImpl.displayName) &&
        Objects.equals(this.estimatedDurationInMillis, branchImpl.estimatedDurationInMillis) &&
        Objects.equals(this.fullDisplayName, branchImpl.fullDisplayName) &&
        Objects.equals(this.fullName, branchImpl.fullName) &&
        Objects.equals(this.name, branchImpl.name) &&
        Objects.equals(this.organization, branchImpl.organization) &&
        Objects.equals(this.parameters, branchImpl.parameters) &&
        Objects.equals(this.permissions, branchImpl.permissions) &&
        Objects.equals(this.weatherScore, branchImpl.weatherScore) &&
        Objects.equals(this.pullRequest, branchImpl.pullRequest) &&
        Objects.equals(this.links, branchImpl.links) &&
        Objects.equals(this.latestRun, branchImpl.latestRun);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, displayName, estimatedDurationInMillis, fullDisplayName, fullName, name, organization, parameters, permissions, weatherScore, pullRequest, links, latestRun);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BranchImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
    sb.append("    fullDisplayName: ").append(toIndentedString(fullDisplayName)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    parameters: ").append(toIndentedString(parameters)).append("\n");
    sb.append("    permissions: ").append(toIndentedString(permissions)).append("\n");
    sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
    sb.append("    pullRequest: ").append(toIndentedString(pullRequest)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

