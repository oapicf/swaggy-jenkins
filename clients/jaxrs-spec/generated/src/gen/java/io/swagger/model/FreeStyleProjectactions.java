package io.swagger.model;

import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;


public class FreeStyleProjectactions   {
  
  private String propertyClass = null;

  /**
   **/
  public FreeStyleProjectactions propertyClass(String propertyClass) {
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


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FreeStyleProjectactions freeStyleProjectactions = (FreeStyleProjectactions) o;
    return Objects.equals(propertyClass, freeStyleProjectactions.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FreeStyleProjectactions {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

