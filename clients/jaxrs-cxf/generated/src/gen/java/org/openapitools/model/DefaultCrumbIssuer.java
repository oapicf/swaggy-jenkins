package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class DefaultCrumbIssuer  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String crumb;

  @ApiModelProperty(value = "")
  private String crumbRequestField;
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

  public DefaultCrumbIssuer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get crumb
   * @return crumb
  **/
  @JsonProperty("crumb")
  public String getCrumb() {
    return crumb;
  }

  public void setCrumb(String crumb) {
    this.crumb = crumb;
  }

  public DefaultCrumbIssuer crumb(String crumb) {
    this.crumb = crumb;
    return this;
  }

 /**
   * Get crumbRequestField
   * @return crumbRequestField
  **/
  @JsonProperty("crumbRequestField")
  public String getCrumbRequestField() {
    return crumbRequestField;
  }

  public void setCrumbRequestField(String crumbRequestField) {
    this.crumbRequestField = crumbRequestField;
  }

  public DefaultCrumbIssuer crumbRequestField(String crumbRequestField) {
    this.crumbRequestField = crumbRequestField;
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
    DefaultCrumbIssuer defaultCrumbIssuer = (DefaultCrumbIssuer) o;
    return Objects.equals(this.propertyClass, defaultCrumbIssuer.propertyClass) &&
        Objects.equals(this.crumb, defaultCrumbIssuer.crumb) &&
        Objects.equals(this.crumbRequestField, defaultCrumbIssuer.crumbRequestField);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, crumb, crumbRequestField);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DefaultCrumbIssuer {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    crumb: ").append(toIndentedString(crumb)).append("\n");
    sb.append("    crumbRequestField: ").append(toIndentedString(crumbRequestField)).append("\n");
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

