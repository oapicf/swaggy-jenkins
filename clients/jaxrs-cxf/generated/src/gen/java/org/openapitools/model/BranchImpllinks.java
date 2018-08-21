package org.openapitools.model;

import org.openapitools.model.Link;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class BranchImpllinks  {
  
  @ApiModelProperty(value = "")
  @Valid
  private Link self = null;

  @ApiModelProperty(value = "")
  @Valid
  private Link actions = null;

  @ApiModelProperty(value = "")
  @Valid
  private Link runs = null;

  @ApiModelProperty(value = "")
  @Valid
  private Link queue = null;

  @ApiModelProperty(value = "")
  private String propertyClass = null;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }

  public BranchImpllinks self(Link self) {
    this.self = self;
    return this;
  }

 /**
   * Get actions
   * @return actions
  **/
  @JsonProperty("actions")
  public Link getActions() {
    return actions;
  }

  public void setActions(Link actions) {
    this.actions = actions;
  }

  public BranchImpllinks actions(Link actions) {
    this.actions = actions;
    return this;
  }

 /**
   * Get runs
   * @return runs
  **/
  @JsonProperty("runs")
  public Link getRuns() {
    return runs;
  }

  public void setRuns(Link runs) {
    this.runs = runs;
  }

  public BranchImpllinks runs(Link runs) {
    this.runs = runs;
    return this;
  }

 /**
   * Get queue
   * @return queue
  **/
  @JsonProperty("queue")
  public Link getQueue() {
    return queue;
  }

  public void setQueue(Link queue) {
    this.queue = queue;
  }

  public BranchImpllinks queue(Link queue) {
    this.queue = queue;
    return this;
  }

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public BranchImpllinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BranchImpllinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    runs: ").append(toIndentedString(runs)).append("\n");
    sb.append("    queue: ").append(toIndentedString(queue)).append("\n");
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

