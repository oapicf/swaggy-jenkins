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

public class PipelineRunImpllinks  {
  
  @ApiModelProperty(value = "")
  @Valid
  private Link nodes = null;

  @ApiModelProperty(value = "")
  @Valid
  private Link log = null;

  @ApiModelProperty(value = "")
  @Valid
  private Link self = null;

  @ApiModelProperty(value = "")
  @Valid
  private Link actions = null;

  @ApiModelProperty(value = "")
  @Valid
  private Link steps = null;

  @ApiModelProperty(value = "")
  private String propertyClass = null;
 /**
   * Get nodes
   * @return nodes
  **/
  @JsonProperty("nodes")
  public Link getNodes() {
    return nodes;
  }

  public void setNodes(Link nodes) {
    this.nodes = nodes;
  }

  public PipelineRunImpllinks nodes(Link nodes) {
    this.nodes = nodes;
    return this;
  }

 /**
   * Get log
   * @return log
  **/
  @JsonProperty("log")
  public Link getLog() {
    return log;
  }

  public void setLog(Link log) {
    this.log = log;
  }

  public PipelineRunImpllinks log(Link log) {
    this.log = log;
    return this;
  }

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

  public PipelineRunImpllinks self(Link self) {
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

  public PipelineRunImpllinks actions(Link actions) {
    this.actions = actions;
    return this;
  }

 /**
   * Get steps
   * @return steps
  **/
  @JsonProperty("steps")
  public Link getSteps() {
    return steps;
  }

  public void setSteps(Link steps) {
    this.steps = steps;
  }

  public PipelineRunImpllinks steps(Link steps) {
    this.steps = steps;
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

  public PipelineRunImpllinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineRunImpllinks {\n");
    
    sb.append("    nodes: ").append(toIndentedString(nodes)).append("\n");
    sb.append("    log: ").append(toIndentedString(log)).append("\n");
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    steps: ").append(toIndentedString(steps)).append("\n");
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

