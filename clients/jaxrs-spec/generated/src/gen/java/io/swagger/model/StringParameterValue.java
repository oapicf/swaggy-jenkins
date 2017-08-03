package io.swagger.model;

import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;


public class StringParameterValue   {
  
  private String propertyClass = null;
  private String name = null;
  private String value = null;

  /**
   **/
  public StringParameterValue propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public StringParameterValue name(String name) {
    this.name = name;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  public StringParameterValue value(String value) {
    this.value = value;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getValue() {
    return value;
  }
  public void setValue(String value) {
    this.value = value;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    StringParameterValue stringParameterValue = (StringParameterValue) o;
    return Objects.equals(propertyClass, stringParameterValue.propertyClass) &&
        Objects.equals(name, stringParameterValue.name) &&
        Objects.equals(value, stringParameterValue.value);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, name, value);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StringParameterValue {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
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

