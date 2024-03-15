package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.vertxweb.server.model.BranchImpllinks;
import org.openapitools.vertxweb.server.model.BranchImplpermissions;
import org.openapitools.vertxweb.server.model.PipelineRunImpl;
import org.openapitools.vertxweb.server.model.StringParameterDefinition;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class BranchImpl   {
  
  private String propertyClass;
  private String displayName;
  private Integer estimatedDurationInMillis;
  private String fullDisplayName;
  private String fullName;
  private String name;
  private String organization;
  private List<StringParameterDefinition> parameters;
  private BranchImplpermissions permissions;
  private Integer weatherScore;
  private String pullRequest;
  private BranchImpllinks links;
  private PipelineRunImpl latestRun;

  public BranchImpl () {

  }

  public BranchImpl (String propertyClass, String displayName, Integer estimatedDurationInMillis, String fullDisplayName, String fullName, String name, String organization, List<StringParameterDefinition> parameters, BranchImplpermissions permissions, Integer weatherScore, String pullRequest, BranchImpllinks links, PipelineRunImpl latestRun) {
    this.propertyClass = propertyClass;
    this.displayName = displayName;
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    this.fullDisplayName = fullDisplayName;
    this.fullName = fullName;
    this.name = name;
    this.organization = organization;
    this.parameters = parameters;
    this.permissions = permissions;
    this.weatherScore = weatherScore;
    this.pullRequest = pullRequest;
    this.links = links;
    this.latestRun = latestRun;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
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

    
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

    
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }
  public void setFullName(String fullName) {
    this.fullName = fullName;
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

    
  @JsonProperty("parameters")
  public List<StringParameterDefinition> getParameters() {
    return parameters;
  }
  public void setParameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

    
  @JsonProperty("permissions")
  public BranchImplpermissions getPermissions() {
    return permissions;
  }
  public void setPermissions(BranchImplpermissions permissions) {
    this.permissions = permissions;
  }

    
  @JsonProperty("weatherScore")
  public Integer getWeatherScore() {
    return weatherScore;
  }
  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

    
  @JsonProperty("pullRequest")
  public String getPullRequest() {
    return pullRequest;
  }
  public void setPullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
  }

    
  @JsonProperty("_links")
  public BranchImpllinks getLinks() {
    return links;
  }
  public void setLinks(BranchImpllinks links) {
    this.links = links;
  }

    
  @JsonProperty("latestRun")
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
    return Objects.equals(propertyClass, branchImpl.propertyClass) &&
        Objects.equals(displayName, branchImpl.displayName) &&
        Objects.equals(estimatedDurationInMillis, branchImpl.estimatedDurationInMillis) &&
        Objects.equals(fullDisplayName, branchImpl.fullDisplayName) &&
        Objects.equals(fullName, branchImpl.fullName) &&
        Objects.equals(name, branchImpl.name) &&
        Objects.equals(organization, branchImpl.organization) &&
        Objects.equals(parameters, branchImpl.parameters) &&
        Objects.equals(permissions, branchImpl.permissions) &&
        Objects.equals(weatherScore, branchImpl.weatherScore) &&
        Objects.equals(pullRequest, branchImpl.pullRequest) &&
        Objects.equals(links, branchImpl.links) &&
        Objects.equals(latestRun, branchImpl.latestRun);
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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
