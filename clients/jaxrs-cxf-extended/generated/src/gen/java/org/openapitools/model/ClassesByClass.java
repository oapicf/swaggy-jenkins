package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ClassesByClass  {
  
  @ApiModelProperty(value = "")
  private List<String> classes = null;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
  * Get classes
  * @return classes
  */
  @JsonProperty("classes")
  public List<String> getClasses() {
    return classes;
  }

  /**
   * Sets the <code>classes</code> property.
   */
 public void setClasses(List<String> classes) {
    this.classes = classes;
  }

  /**
   * Sets the <code>classes</code> property.
   */
  public ClassesByClass classes(List<String> classes) {
    this.classes = classes;
    return this;
  }

  /**
   * Adds a new item to the <code>classes</code> list.
   */
  public ClassesByClass addClassesItem(String classesItem) {
    this.classes.add(classesItem);
    return this;
  }

 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public ClassesByClass propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ClassesByClass {\n");
    
    sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

