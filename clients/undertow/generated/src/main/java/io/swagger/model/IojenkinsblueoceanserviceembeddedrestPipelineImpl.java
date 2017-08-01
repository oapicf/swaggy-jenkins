package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "io.swagger.codegen.languages.UndertowCodegen", date = "2017-07-25T10:46:51.588+10:00")
public class IojenkinsblueoceanserviceembeddedrestPipelineImpl   {
  
  private String propertyClass = null;
  private String displayName = null;
  private Integer estimatedDurationInMillis = null;
  private String fullName = null;
  private String latestRun = null;
  private String name = null;
  private String organization = null;
  private Integer weatherScore = null;

  /**
   **/
  public IojenkinsblueoceanserviceembeddedrestPipelineImpl propertyClass(String propertyClass) {
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
  public IojenkinsblueoceanserviceembeddedrestPipelineImpl displayName(String displayName) {
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
  public IojenkinsblueoceanserviceembeddedrestPipelineImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
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
  public IojenkinsblueoceanserviceembeddedrestPipelineImpl fullName(String fullName) {
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
  public IojenkinsblueoceanserviceembeddedrestPipelineImpl latestRun(String latestRun) {
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
   **/
  public IojenkinsblueoceanserviceembeddedrestPipelineImpl name(String name) {
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
  public IojenkinsblueoceanserviceembeddedrestPipelineImpl organization(String organization) {
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
  public IojenkinsblueoceanserviceembeddedrestPipelineImpl weatherScore(Integer weatherScore) {
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


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IojenkinsblueoceanserviceembeddedrestPipelineImpl iojenkinsblueoceanserviceembeddedrestPipelineImpl = (IojenkinsblueoceanserviceembeddedrestPipelineImpl) o;
    return Objects.equals(propertyClass, iojenkinsblueoceanserviceembeddedrestPipelineImpl.propertyClass) &&
        Objects.equals(displayName, iojenkinsblueoceanserviceembeddedrestPipelineImpl.displayName) &&
        Objects.equals(estimatedDurationInMillis, iojenkinsblueoceanserviceembeddedrestPipelineImpl.estimatedDurationInMillis) &&
        Objects.equals(fullName, iojenkinsblueoceanserviceembeddedrestPipelineImpl.fullName) &&
        Objects.equals(latestRun, iojenkinsblueoceanserviceembeddedrestPipelineImpl.latestRun) &&
        Objects.equals(name, iojenkinsblueoceanserviceembeddedrestPipelineImpl.name) &&
        Objects.equals(organization, iojenkinsblueoceanserviceembeddedrestPipelineImpl.organization) &&
        Objects.equals(weatherScore, iojenkinsblueoceanserviceembeddedrestPipelineImpl.weatherScore);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, displayName, estimatedDurationInMillis, fullName, latestRun, name, organization, weatherScore);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IojenkinsblueoceanserviceembeddedrestPipelineImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
    sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
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

