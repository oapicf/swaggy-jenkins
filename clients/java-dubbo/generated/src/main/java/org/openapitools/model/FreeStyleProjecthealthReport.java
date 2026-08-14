package org.openapitools.model;

import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class FreeStyleProjecthealthReport implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("description")
  private String description;

  @JsonProperty("iconClassName")
  private String iconClassName;

  @JsonProperty("iconUrl")
  private String iconUrl;

  @JsonProperty("score")
  private Integer score;

  @JsonProperty("_class")
  private String propertyClass;

  /**
   * 
   * @return description
   */
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  /**
   * 
   * @return iconClassName
   */
  public String getIconClassName() {
    return iconClassName;
  }

  public void setIconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
  }

  /**
   * 
   * @return iconUrl
   */
  public String getIconUrl() {
    return iconUrl;
  }

  public void setIconUrl(String iconUrl) {
    this.iconUrl = iconUrl;
  }

  /**
   * 
   * @return score
   */
  public Integer getScore() {
    return score;
  }

  public void setScore(Integer score) {
    this.score = score;
  }

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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FreeStyleProjecthealthReport freeStyleProjecthealthReport = (FreeStyleProjecthealthReport) o;
    return Objects.equals(this.description, freeStyleProjecthealthReport.description) &&
        Objects.equals(this.iconClassName, freeStyleProjecthealthReport.iconClassName) &&
        Objects.equals(this.iconUrl, freeStyleProjecthealthReport.iconUrl) &&
        Objects.equals(this.score, freeStyleProjecthealthReport.score) &&
        Objects.equals(this.propertyClass, freeStyleProjecthealthReport.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(description, iconClassName, iconUrl, score, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FreeStyleProjecthealthReport {\n");
    
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    iconClassName: ").append(toIndentedString(iconClassName)).append("\n");
    sb.append("    iconUrl: ").append(toIndentedString(iconUrl)).append("\n");
    sb.append("    score: ").append(toIndentedString(score)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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
