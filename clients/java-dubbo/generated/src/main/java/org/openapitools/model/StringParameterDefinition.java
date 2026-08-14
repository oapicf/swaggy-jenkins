package org.openapitools.model;

import org.openapitools.model.StringParameterValue;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class StringParameterDefinition implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("defaultParameterValue")
  private StringParameterValue defaultParameterValue;

  @JsonProperty("description")
  private String description;

  @JsonProperty("name")
  private String name;

  @JsonProperty("type")
  private String type;

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

  /**
   * 
   * @return defaultParameterValue
   */
  public StringParameterValue getDefaultParameterValue() {
    return defaultParameterValue;
  }

  public void setDefaultParameterValue(StringParameterValue defaultParameterValue) {
    this.defaultParameterValue = defaultParameterValue;
  }

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
   * @return name
   */
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  /**
   * 
   * @return type
   */
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
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
  private String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
