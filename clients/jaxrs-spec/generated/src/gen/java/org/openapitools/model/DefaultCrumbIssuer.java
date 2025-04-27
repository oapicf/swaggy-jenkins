package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("DefaultCrumbIssuer")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2025-04-27T08:09:45.633008592Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class DefaultCrumbIssuer   {
  private String propertyClass;
  private String crumb;
  private String crumbRequestField;

  public DefaultCrumbIssuer() {
  }

  /**
   **/
  public DefaultCrumbIssuer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public DefaultCrumbIssuer crumb(String crumb) {
    this.crumb = crumb;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("crumb")
  public String getCrumb() {
    return crumb;
  }

  @JsonProperty("crumb")
  public void setCrumb(String crumb) {
    this.crumb = crumb;
  }

  /**
   **/
  public DefaultCrumbIssuer crumbRequestField(String crumbRequestField) {
    this.crumbRequestField = crumbRequestField;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("crumbRequestField")
  public String getCrumbRequestField() {
    return crumbRequestField;
  }

  @JsonProperty("crumbRequestField")
  public void setCrumbRequestField(String crumbRequestField) {
    this.crumbRequestField = crumbRequestField;
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

