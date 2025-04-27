package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CauseUserIdCause;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CauseAction  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid CauseUserIdCause> causes = new ArrayList<>();
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
  public CauseAction propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get causes
  * @return causes
  */
  @JsonProperty("causes")
  public List<@Valid CauseUserIdCause> getCauses() {
    return causes;
  }

  /**
   * Sets the <code>causes</code> property.
   */
 public void setCauses(List<@Valid CauseUserIdCause> causes) {
    this.causes = causes;
  }

  /**
   * Sets the <code>causes</code> property.
   */
  public CauseAction causes(List<@Valid CauseUserIdCause> causes) {
    this.causes = causes;
    return this;
  }

  /**
   * Adds a new item to the <code>causes</code> list.
   */
  public CauseAction addCausesItem(CauseUserIdCause causesItem) {
    this.causes.add(causesItem);
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
    CauseAction causeAction = (CauseAction) o;
    return Objects.equals(this.propertyClass, causeAction.propertyClass) &&
        Objects.equals(this.causes, causeAction.causes);
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

