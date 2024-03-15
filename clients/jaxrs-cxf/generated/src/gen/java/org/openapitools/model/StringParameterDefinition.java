package org.openapitools.model;

import org.openapitools.model.StringParameterValue;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class StringParameterDefinition  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  @Valid
  private StringParameterValue defaultParameterValue;

  @ApiModelProperty(value = "")
  private String description;

  @ApiModelProperty(value = "")
  private String name;

  @ApiModelProperty(value = "")
  private String type;
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

  public StringParameterDefinition propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get defaultParameterValue
   * @return defaultParameterValue
  **/
  @JsonProperty("defaultParameterValue")
  public StringParameterValue getDefaultParameterValue() {
    return defaultParameterValue;
  }

  public void setDefaultParameterValue(StringParameterValue defaultParameterValue) {
    this.defaultParameterValue = defaultParameterValue;
  }

  public StringParameterDefinition defaultParameterValue(StringParameterValue defaultParameterValue) {
    this.defaultParameterValue = defaultParameterValue;
    return this;
  }

 /**
   * Get description
   * @return description
  **/
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public StringParameterDefinition description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get name
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public StringParameterDefinition name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get type
   * @return type
  **/
  @JsonProperty("type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public StringParameterDefinition type(String type) {
    this.type = type;
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
    StringParameterDefinition stringParameterDefinition = (StringParameterDefinition) o;
    return Objects.equals(this.propertyClass, stringParameterDefinition.propertyClass) &&
        Objects.equals(this.defaultParameterValue, stringParameterDefinition.defaultParameterValue) &&
        Objects.equals(this.description, stringParameterDefinition.description) &&
        Objects.equals(this.name, stringParameterDefinition.name) &&
        Objects.equals(this.type, stringParameterDefinition.type);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, defaultParameterValue, description, name, type);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StringParameterDefinition {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    defaultParameterValue: ").append(toIndentedString(defaultParameterValue)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
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

