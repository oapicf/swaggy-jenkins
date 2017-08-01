package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.HudsonmodelStringParameterDefinition;
import io.swagger.model.IojenkinsblueoceanrestimplpipelineBranchImplPermissions;
import java.util.List;
import javax.validation.constraints.*;
import io.swagger.annotations.*;


@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-07-25T10:45:08.057+10:00")
public class IojenkinsblueoceanrestimplpipelineBranchImpl   {
  
  private String propertyClass = null;
  private String displayName = null;
  private Integer estimatedDurationInMillis = null;
  private String fullDisplayName = null;
  private String fullName = null;
  private String name = null;
  private String organization = null;
  private List<HudsonmodelStringParameterDefinition> parameters = new ArrayList<HudsonmodelStringParameterDefinition>();
  private IojenkinsblueoceanrestimplpipelineBranchImplPermissions permissions = null;
  private Integer weatherScore = null;
  private String pullRequest = null;

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
  @JsonProperty("fullDisplayName")
  public String getFullDisplayName() {
    return fullDisplayName;
  }
  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  /**
   **/
  
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
  @JsonProperty("parameters")
  public List<HudsonmodelStringParameterDefinition> getParameters() {
    return parameters;
  }
  public void setParameters(List<HudsonmodelStringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  /**
   **/
  
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

