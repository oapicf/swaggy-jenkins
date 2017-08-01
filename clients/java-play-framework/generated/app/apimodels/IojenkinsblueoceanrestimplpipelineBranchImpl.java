package apimodels;

import java.util.Objects;
import apimodels.HudsonmodelStringParameterDefinition;
import apimodels.IojenkinsblueoceanrestimplpipelineBranchImplPermissions;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * IojenkinsblueoceanrestimplpipelineBranchImpl
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

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

  public IojenkinsblueoceanrestimplpipelineBranchImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
    public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImpl displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

   /**
   * Get displayName
   * @return displayName
  **/
    public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

   /**
   * Get estimatedDurationInMillis
   * @return estimatedDurationInMillis
  **/
    public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImpl fullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
    return this;
  }

   /**
   * Get fullDisplayName
   * @return fullDisplayName
  **/
    public String getFullDisplayName() {
    return fullDisplayName;
  }

  public void setFullDisplayName(String fullDisplayName) {
    this.fullDisplayName = fullDisplayName;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImpl fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

   /**
   * Get fullName
   * @return fullName
  **/
    public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImpl name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
    public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImpl organization(String organization) {
    this.organization = organization;
    return this;
  }

   /**
   * Get organization
   * @return organization
  **/
    public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImpl parameters(List<HudsonmodelStringParameterDefinition> parameters) {
    this.parameters = parameters;
    return this;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImpl addParametersItem(HudsonmodelStringParameterDefinition parametersItem) {
    if (this.parameters == null) {
      this.parameters = new ArrayList<HudsonmodelStringParameterDefinition>();
    }
    this.parameters.add(parametersItem);
    return this;
  }

   /**
   * Get parameters
   * @return parameters
  **/
    public List<HudsonmodelStringParameterDefinition> getParameters() {
    return parameters;
  }

  public void setParameters(List<HudsonmodelStringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImpl permissions(IojenkinsblueoceanrestimplpipelineBranchImplPermissions permissions) {
    this.permissions = permissions;
    return this;
  }

   /**
   * Get permissions
   * @return permissions
  **/
    public IojenkinsblueoceanrestimplpipelineBranchImplPermissions getPermissions() {
    return permissions;
  }

  public void setPermissions(IojenkinsblueoceanrestimplpipelineBranchImplPermissions permissions) {
    this.permissions = permissions;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImpl weatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
    return this;
  }

   /**
   * Get weatherScore
   * @return weatherScore
  **/
    public Integer getWeatherScore() {
    return weatherScore;
  }

  public void setWeatherScore(Integer weatherScore) {
    this.weatherScore = weatherScore;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImpl pullRequest(String pullRequest) {
    this.pullRequest = pullRequest;
    return this;
  }

   /**
   * Get pullRequest
   * @return pullRequest
  **/
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
    return Objects.equals(this.propertyClass, iojenkinsblueoceanrestimplpipelineBranchImpl.propertyClass) &&
        Objects.equals(this.displayName, iojenkinsblueoceanrestimplpipelineBranchImpl.displayName) &&
        Objects.equals(this.estimatedDurationInMillis, iojenkinsblueoceanrestimplpipelineBranchImpl.estimatedDurationInMillis) &&
        Objects.equals(this.fullDisplayName, iojenkinsblueoceanrestimplpipelineBranchImpl.fullDisplayName) &&
        Objects.equals(this.fullName, iojenkinsblueoceanrestimplpipelineBranchImpl.fullName) &&
        Objects.equals(this.name, iojenkinsblueoceanrestimplpipelineBranchImpl.name) &&
        Objects.equals(this.organization, iojenkinsblueoceanrestimplpipelineBranchImpl.organization) &&
        Objects.equals(this.parameters, iojenkinsblueoceanrestimplpipelineBranchImpl.parameters) &&
        Objects.equals(this.permissions, iojenkinsblueoceanrestimplpipelineBranchImpl.permissions) &&
        Objects.equals(this.weatherScore, iojenkinsblueoceanrestimplpipelineBranchImpl.weatherScore) &&
        Objects.equals(this.pullRequest, iojenkinsblueoceanrestimplpipelineBranchImpl.pullRequest);
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

