package io.swagger.model;

import io.swagger.model.Link;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class PipelineStepImpllinks  {
  
  @ApiModelProperty(value = "")
  private Link self = null;
  @ApiModelProperty(value = "")
  private Link actions = null;
  @ApiModelProperty(value = "")
  private String propertyClass = null;

 /**
   * Get self
   * @return self
  **/
  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }

  public PipelineStepImpllinks self(Link self) {
    this.self = self;
    return this;
  }

 /**
   * Get actions
   * @return actions
  **/
  public Link getActions() {
    return actions;
  }

  public void setActions(Link actions) {
    this.actions = actions;
  }

  public PipelineStepImpllinks actions(Link actions) {
    this.actions = actions;
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

  public PipelineStepImpllinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineStepImpllinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

