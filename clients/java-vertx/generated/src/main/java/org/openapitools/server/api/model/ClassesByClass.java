package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ClassesByClass   {
  
  private List<String> classes = new ArrayList<>();
  private String propertyClass;

  public ClassesByClass () {

  }

  public ClassesByClass (List<String> classes, String propertyClass) {
    this.classes = classes;
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("classes")
  public List<String> getClasses() {
    return classes;
  }
  public void setClasses(List<String> classes) {
    this.classes = classes;
  }

    
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
