package apimodels;

import java.util.Objects;
import apimodels.HudsonmodelStringParameterValue;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * HudsonmodelStringParameterDefinition
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class HudsonmodelStringParameterDefinition   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("defaultParameterValue")
  private HudsonmodelStringParameterValue defaultParameterValue = null;

  @JsonProperty("description")
  private String description = null;

  @JsonProperty("name")
  private String name = null;

  @JsonProperty("type")
  private String type = null;

  public HudsonmodelStringParameterDefinition propertyClass(String propertyClass) {
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

  public HudsonmodelStringParameterDefinition defaultParameterValue(HudsonmodelStringParameterValue defaultParameterValue) {
    this.defaultParameterValue = defaultParameterValue;
    return this;
  }

   /**
   * Get defaultParameterValue
   * @return defaultParameterValue
  **/
    public HudsonmodelStringParameterValue getDefaultParameterValue() {
    return defaultParameterValue;
  }

  public void setDefaultParameterValue(HudsonmodelStringParameterValue defaultParameterValue) {
    this.defaultParameterValue = defaultParameterValue;
  }

  public HudsonmodelStringParameterDefinition description(String description) {
    this.description = description;
    return this;
  }

   /**
   * Get description
   * @return description
  **/
    public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public HudsonmodelStringParameterDefinition name(String name) {
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

  public HudsonmodelStringParameterDefinition type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
    public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonmodelStringParameterDefinition hudsonmodelStringParameterDefinition = (HudsonmodelStringParameterDefinition) o;
    return Objects.equals(this.propertyClass, hudsonmodelStringParameterDefinition.propertyClass) &&
        Objects.equals(this.defaultParameterValue, hudsonmodelStringParameterDefinition.defaultParameterValue) &&
        Objects.equals(this.description, hudsonmodelStringParameterDefinition.description) &&
        Objects.equals(this.name, hudsonmodelStringParameterDefinition.name) &&
        Objects.equals(this.type, hudsonmodelStringParameterDefinition.type);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, defaultParameterValue, description, name, type);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelStringParameterDefinition {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

