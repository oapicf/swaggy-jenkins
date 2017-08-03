package io.swagger.model;

import io.swagger.model.CauseUserIdCause;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class CauseAction  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private List<CauseUserIdCause> causes = new ArrayList<CauseUserIdCause>();

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

  public CauseAction propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get causes
   * @return causes
  **/
  public List<CauseUserIdCause> getCauses() {
    return causes;
  }

  public void setCauses(List<CauseUserIdCause> causes) {
    this.causes = causes;
  }

  public CauseAction causes(List<CauseUserIdCause> causes) {
    this.causes = causes;
    return this;
  }

  public CauseAction addCausesItem(CauseUserIdCause causesItem) {
    this.causes.add(causesItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

