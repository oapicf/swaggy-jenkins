package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.HudsonmodelStringParameterDefinition;
import io.swagger.model.IojenkinsblueoceanrestimplpipelineBranchImplPermissions;
import java.util.ArrayList;
import java.util.List;





@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaInflectorServerCodegen", date = "2017-07-25T10:44:14.875+10:00")
public class IojenkinsblueoceanrestimplpipelineBranchImpl   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("displayName")
  private String displayName = null;

  @JsonProperty("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis = null;

  @JsonProperty("fullDisplayName")
  private String fullDisplayName = null;

  @JsonProperty("fullName")
  private String fullName = null;

  @JsonProperty("name")
  private String name = null;

  @JsonProperty("organization")
  private String organization = null;

  @JsonProperty("parameters")
  private List<HudsonmodelStringParameterDefinition> parameters = null;

  @JsonProperty("permissions")
  private IojenkinsblueoceanrestimplpipelineBranchImplPermissions permissions = null;

  @JsonProperty("weatherScore")
  private Integer weatherScore = null;

  @JsonProperty("pullRequest")
  private String pullRequest = null;

  /**
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImpl propertyClass(String propertyClass) {
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

  /**
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImpl displayName(String displayName) {
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
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
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
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImpl fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImpl fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }
  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImpl name(String name) {
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
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImpl organization(String organization) {
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
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImpl parameters(List<HudsonmodelStringParameterDefinition> parameters) {
    this.parameters = parameters;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("parameters")
  public List<HudsonmodelStringParameterDefinition> getParameters() {
    return parameters;
  }
  public void setParameters(List<HudsonmodelStringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  /**
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImpl permissions(IojenkinsblueoceanrestimplpipelineBranchImplPermissions permissions) {
    this.permissions = permissions;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("permissions")
  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions getPermissions() {
    return permissions;
  }
  public void setPermissions(IojenkinsblueoceanrestimplpipelineBranchImplPermissions permissions) {
    this.permissions = permissions;
  }

  /**
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImpl weatherScore(Integer weatherScore) {
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
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImpl pullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("pullRequest")
  public String getPullRequest() {
    return pullRequest;
  }
  public void setPullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IojenkinsblueoceanrestimplpipelineBranchImpl iojenkinsblueoceanrestimplpipelineBranchImpl = (IojenkinsblueoceanrestimplpipelineBranchImpl) o;
    return Objects.equals(propertyClass, iojenkinsblueoceanrestimplpipelineBranchImpl.propertyClass) &&
        Objects.equals(displayName, iojenkinsblueoceanrestimplpipelineBranchImpl.displayName) &&
        Objects.equals(estimatedDurationInMillis, iojenkinsblueoceanrestimplpipelineBranchImpl.estimatedDurationInMillis) &&
        Objects.equals(fullDisplayName, iojenkinsblueoceanrestimplpipelineBranchImpl.fullDisplayName) &&
        Objects.equals(fullName, iojenkinsblueoceanrestimplpipelineBranchImpl.fullName) &&
        Objects.equals(name, iojenkinsblueoceanrestimplpipelineBranchImpl.name) &&
        Objects.equals(organization, iojenkinsblueoceanrestimplpipelineBranchImpl.organization) &&
        Objects.equals(parameters, iojenkinsblueoceanrestimplpipelineBranchImpl.parameters) &&
        Objects.equals(permissions, iojenkinsblueoceanrestimplpipelineBranchImpl.permissions) &&
        Objects.equals(weatherScore, iojenkinsblueoceanrestimplpipelineBranchImpl.weatherScore) &&
        Objects.equals(pullRequest, iojenkinsblueoceanrestimplpipelineBranchImpl.pullRequest);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, displayName, estimatedDurationInMillis, fullDisplayName, fullName, name, organization, parameters, permissions, weatherScore, pullRequest);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IojenkinsblueoceanrestimplpipelineBranchImpl {\n");
    
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
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

