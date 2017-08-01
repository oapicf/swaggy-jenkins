package apimodels;

import java.util.Objects;
import apimodels.SwaggyjenkinsPipelineLatestRun;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * SwaggyjenkinsPipeline
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class SwaggyjenkinsPipeline   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("organization")
  private String organization = null;

  @JsonProperty("name")
  private String name = null;

  @JsonProperty("displayName")
  private String displayName = null;

  @JsonProperty("fullName")
  private String fullName = null;

  @JsonProperty("weatherScore")
  private Integer weatherScore = null;

  @JsonProperty("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis = null;

  @JsonProperty("latestRun")
  private SwaggyjenkinsPipelineLatestRun latestRun = null;

  public SwaggyjenkinsPipeline propertyClass(String propertyClass) {
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

  public SwaggyjenkinsPipeline organization(String organization) {
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

  public SwaggyjenkinsPipeline name(String name) {
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

  public SwaggyjenkinsPipeline displayName(String displayName) {
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

  public SwaggyjenkinsPipeline fullName(String fullName) {
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

  public SwaggyjenkinsPipeline weatherScore(Integer weatherScore) {
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

  public SwaggyjenkinsPipeline estimatedDurationInMillis(Integer estimatedDurationInMillis) {
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

  public SwaggyjenkinsPipeline latestRun(SwaggyjenkinsPipelineLatestRun latestRun) {
    this.latestRun = latestRun;
    return this;
  }

   /**
   * Get latestRun
   * @return latestRun
  **/
    public SwaggyjenkinsPipelineLatestRun getLatestRun() {
    return latestRun;
  }

  public void setLatestRun(SwaggyjenkinsPipelineLatestRun latestRun) {
    this.latestRun = latestRun;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SwaggyjenkinsPipeline swaggyjenkinsPipeline = (SwaggyjenkinsPipeline) o;
    return Objects.equals(this.propertyClass, swaggyjenkinsPipeline.propertyClass) &&
        Objects.equals(this.organization, swaggyjenkinsPipeline.organization) &&
        Objects.equals(this.name, swaggyjenkinsPipeline.name) &&
        Objects.equals(this.displayName, swaggyjenkinsPipeline.displayName) &&
        Objects.equals(this.fullName, swaggyjenkinsPipeline.fullName) &&
        Objects.equals(this.weatherScore, swaggyjenkinsPipeline.weatherScore) &&
        Objects.equals(this.estimatedDurationInMillis, swaggyjenkinsPipeline.estimatedDurationInMillis) &&
        Objects.equals(this.latestRun, swaggyjenkinsPipeline.latestRun);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, organization, name, displayName, fullName, weatherScore, estimatedDurationInMillis, latestRun);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SwaggyjenkinsPipeline {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
    sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
    sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
    sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
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

