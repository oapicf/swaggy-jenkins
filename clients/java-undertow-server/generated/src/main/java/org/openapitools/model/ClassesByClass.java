/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI document version: 2.0.1-pre.0
 * Maintained by: blah+oapicf@cliffano.com
 *
 * AUTO-GENERATED FILE, DO NOT MODIFY!
 */
package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2024-03-15T14:13:06.635705781Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class ClassesByClass   {
  
  private List<String> classes;
  private String propertyClass;

  /**
   */
  public ClassesByClass classes(List<String> classes) {
    this.classes = classes;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("classes")
  public List<String> getClasses() {
    return classes;
  }
  public void setClasses(List<String> classes) {
    this.classes = classes;
  }

  /**
   */
  public ClassesByClass propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
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
    ClassesByClass classesByClass = (ClassesByClass) o;
    return Objects.equals(classes, classesByClass.classes) &&
        Objects.equals(propertyClass, classesByClass.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(classes, propertyClass);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

