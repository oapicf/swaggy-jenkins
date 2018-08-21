package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class EmptyChangeLogSet   {
  
  private String propertyClass = null;
  private String kind = null;

  public EmptyChangeLogSet () {

  }

  public EmptyChangeLogSet (String propertyClass, String kind) {
    this.propertyClass = propertyClass;
    this.kind = kind;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("kind")
  public String getKind() {
    return kind;
  }
  public void setKind(String kind) {
    this.kind = kind;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    EmptyChangeLogSet emptyChangeLogSet = (EmptyChangeLogSet) o;
    return Objects.equals(propertyClass, emptyChangeLogSet.propertyClass) &&
        Objects.equals(kind, emptyChangeLogSet.kind);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, kind);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class EmptyChangeLogSet {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    kind: ").append(toIndentedString(kind)).append("\n");
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
