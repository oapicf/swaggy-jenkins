package io.swagger.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.server.api.model.StringParameterValue;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class StringParameterDefinition   {
  
  private String propertyClass = null;
  private StringParameterValue defaultParameterValue = null;
  private String description = null;
  private String name = null;
  private String type = null;

  public StringParameterDefinition () {

  }

  public StringParameterDefinition (String propertyClass, StringParameterValue defaultParameterValue, String description, String name, String type) {
    this.propertyClass = propertyClass;
    this.defaultParameterValue = defaultParameterValue;
    this.description = description;
    this.name = name;
    this.type = type;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("defaultParameterValue")
  public StringParameterValue getDefaultParameterValue() {
    return defaultParameterValue;
  }
  public void setDefaultParameterValue(StringParameterValue defaultParameterValue) {
    this.defaultParameterValue = defaultParameterValue;
  }

    
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

    
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

    
  @JsonProperty("type")
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
    return Objects.equals(propertyClass, stringParameterDefinition.propertyClass) &&
        Objects.equals(defaultParameterValue, stringParameterDefinition.defaultParameterValue) &&
        Objects.equals(description, stringParameterDefinition.description) &&
        Objects.equals(name, stringParameterDefinition.name) &&
        Objects.equals(type, stringParameterDefinition.type);
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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
