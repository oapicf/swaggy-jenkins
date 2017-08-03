package io.swagger.model;

import io.swagger.model.Link;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class PipelineImpllinks  {
  
  @ApiModelProperty(value = "")
  private Link runs = null;
  @ApiModelProperty(value = "")
  private Link self = null;
  @ApiModelProperty(value = "")
  private Link queue = null;
  @ApiModelProperty(value = "")
  private Link actions = null;
  @ApiModelProperty(value = "")
  private String propertyClass = null;

 /**
   * Get runs
   * @return runs
  **/
  public Link getRuns() {
    return runs;
  }

  public void setRuns(Link runs) {
    this.runs = runs;
  }

  public PipelineImpllinks runs(Link runs) {
    this.runs = runs;
    return this;
  }

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

  public PipelineImpllinks self(Link self) {
    this.self = self;
    return this;
  }

 /**
   * Get queue
   * @return queue
  **/
  public Link getQueue() {
    return queue;
  }

  public void setQueue(Link queue) {
    this.queue = queue;
  }

  public PipelineImpllinks queue(Link queue) {
    this.queue = queue;
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

  public PipelineImpllinks actions(Link actions) {
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

  public PipelineImpllinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineImpllinks {\n");
    
    sb.append("    runs: ").append(toIndentedString(runs)).append("\n");
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    queue: ").append(toIndentedString(queue)).append("\n");
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

