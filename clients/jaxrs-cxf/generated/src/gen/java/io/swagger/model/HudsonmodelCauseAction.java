package io.swagger.model;

import io.swagger.model.HudsonmodelCauseUserIdCause;
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

public class HudsonmodelCauseAction  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private List<HudsonmodelCauseUserIdCause> causes = new ArrayList<HudsonmodelCauseUserIdCause>();

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

  public HudsonmodelCauseAction propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get causes
   * @return causes
  **/
  public List<HudsonmodelCauseUserIdCause> getCauses() {
    return causes;
  }

  public void setCauses(List<HudsonmodelCauseUserIdCause> causes) {
    this.causes = causes;
  }

  public HudsonmodelCauseAction causes(List<HudsonmodelCauseUserIdCause> causes) {
    this.causes = causes;
    return this;
  }

  public HudsonmodelCauseAction addCausesItem(HudsonmodelCauseUserIdCause causesItem) {
    this.causes.add(causesItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelCauseAction {\n");
    
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

