package io.swagger.model;

import io.swagger.model.CauseUserIdCause;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;


public class CauseAction   {
  
  private String propertyClass = null;
  private List<CauseUserIdCause> causes = new ArrayList<CauseUserIdCause>();

  /**
   **/
  public CauseAction propertyClass(String propertyClass) {
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
  public CauseAction causes(List<CauseUserIdCause> causes) {
    this.causes = causes;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public List<CauseUserIdCause> getCauses() {
    return causes;
  }
  public void setCauses(List<CauseUserIdCause> causes) {
    this.causes = causes;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CauseAction causeAction = (CauseAction) o;
    return Objects.equals(propertyClass, causeAction.propertyClass) &&
        Objects.equals(causes, causeAction.causes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, causes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CauseAction {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    causes: ").append(toIndentedString(causes)).append("\n");
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

