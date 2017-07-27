package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * HudsonsecuritycsrfDefaultCrumbIssuer
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-07-25T10:46:28.251+10:00")

public class HudsonsecuritycsrfDefaultCrumbIssuer   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("crumb")
  private String crumb = null;

  @JsonProperty("crumbRequestField")
  private String crumbRequestField = null;

  public HudsonsecuritycsrfDefaultCrumbIssuer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")


  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public HudsonsecuritycsrfDefaultCrumbIssuer crumb(String crumb) {
    this.crumb = crumb;
    return this;
  }

   /**
   * Get crumb
   * @return crumb
  **/
  @ApiModelProperty(value = "")


  public String getCrumb() {
    return crumb;
  }

  public void setCrumb(String crumb) {
    this.crumb = crumb;
  }

  public HudsonsecuritycsrfDefaultCrumbIssuer crumbRequestField(String crumbRequestField) {
    this.crumbRequestField = crumbRequestField;
    return this;
  }

   /**
   * Get crumbRequestField
   * @return crumbRequestField
  **/
  @ApiModelProperty(value = "")


  public String getCrumbRequestField() {
    return crumbRequestField;
  }

  public void setCrumbRequestField(String crumbRequestField) {
    this.crumbRequestField = crumbRequestField;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonsecuritycsrfDefaultCrumbIssuer hudsonsecuritycsrfDefaultCrumbIssuer = (HudsonsecuritycsrfDefaultCrumbIssuer) o;
    return Objects.equals(this.propertyClass, hudsonsecuritycsrfDefaultCrumbIssuer.propertyClass) &&
        Objects.equals(this.crumb, hudsonsecuritycsrfDefaultCrumbIssuer.crumb) &&
        Objects.equals(this.crumbRequestField, hudsonsecuritycsrfDefaultCrumbIssuer.crumbRequestField);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, crumb, crumbRequestField);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonsecuritycsrfDefaultCrumbIssuer {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

