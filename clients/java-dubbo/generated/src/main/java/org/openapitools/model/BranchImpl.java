package org.openapitools.model;

import org.openapitools.model.BranchImpllinks;
import org.openapitools.model.BranchImplpermissions;
import org.openapitools.model.PipelineRunImpl;
import org.openapitools.model.StringParameterDefinition;
import java.util.*;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class BranchImpl implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("displayName")
  private String displayName;

  @JsonProperty("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis;

  @JsonProperty("fullDisplayName")
  private String fullDisplayName;

  @JsonProperty("fullName")
  private String fullName;

  @JsonProperty("name")
  private String name;

  @JsonProperty("organization")
  private String organization;

  @JsonProperty("parameters")
  private List<StringParameterDefinition> parameters = new ArrayList<>();

  @JsonProperty("permissions")
  private BranchImplpermissions permissions;

  @JsonProperty("weatherScore")
  private Integer weatherScore;

  @JsonProperty("pullRequest")
  private String pullRequest;

  @JsonProperty("_links")
  private BranchImpllinks links;

  @JsonProperty("latestRun")
  private PipelineRunImpl latestRun;

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
   * @return fullDisplayName
   */
  public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   * 
   * @return fullName
   */
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
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
   * @return parameters
   */
  public List<StringParameterDefinition> getParameters() {
    return parameters;
  }

  public void setParameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  /**
   * 
   * @return permissions
   */
  public BranchImplpermissions getPermissions() {
    return permissions;
  }

  public void setPermissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
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
   * @return pullRequest
   */
  public String getPullRequest() {
    return pullRequest;
  }

  public void setPullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
  }

  /**
   * 
   * @return links
   */
  public BranchImpllinks getLinks() {
    return links;
  }

  public void setLinks(BranchImpllinks links) {
    this.links = links;
  }

  /**
   * 
   * @return latestRun
   */
  public PipelineRunImpl getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(PipelineRunImpl latestRun) {
    this.latestRun = latestRun;
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
  private String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
