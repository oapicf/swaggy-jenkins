package org.openapitools.model;

import org.openapitools.model.Link;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PipelineRunImpllinks  {
  
  @ApiModelProperty(value = "")
  @Valid
  private Link nodes;

  @ApiModelProperty(value = "")
  @Valid
  private Link log;

  @ApiModelProperty(value = "")
  @Valid
  private Link self;

  @ApiModelProperty(value = "")
  @Valid
  private Link actions;

  @ApiModelProperty(value = "")
  @Valid
  private Link steps;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
  * Get nodes
  * @return nodes
  */
  @JsonProperty("nodes")
  public Link getNodes() {
    return nodes;
  }

  /**
   * Sets the <code>nodes</code> property.
   */
 public void setNodes(Link nodes) {
    this.nodes = nodes;
  }

  /**
   * Sets the <code>nodes</code> property.
   */
  public PipelineRunImpllinks nodes(Link nodes) {
    this.nodes = nodes;
    return this;
  }

 /**
  * Get log
  * @return log
  */
  @JsonProperty("log")
  public Link getLog() {
    return log;
  }

  /**
   * Sets the <code>log</code> property.
   */
 public void setLog(Link log) {
    this.log = log;
  }

  /**
   * Sets the <code>log</code> property.
   */
  public PipelineRunImpllinks log(Link log) {
    this.log = log;
    return this;
  }

 /**
  * Get self
  * @return self
  */
  @JsonProperty("self")
  public Link getSelf() {
    return self;
  }

  /**
   * Sets the <code>self</code> property.
   */
 public void setSelf(Link self) {
    this.self = self;
  }

  /**
   * Sets the <code>self</code> property.
   */
  public PipelineRunImpllinks self(Link self) {
    this.self = self;
    return this;
  }

 /**
  * Get actions
  * @return actions
  */
  @JsonProperty("actions")
  public Link getActions() {
    return actions;
  }

  /**
   * Sets the <code>actions</code> property.
   */
 public void setActions(Link actions) {
    this.actions = actions;
  }

  /**
   * Sets the <code>actions</code> property.
   */
  public PipelineRunImpllinks actions(Link actions) {
    this.actions = actions;
    return this;
  }

 /**
  * Get steps
  * @return steps
  */
  @JsonProperty("steps")
  public Link getSteps() {
    return steps;
  }

  /**
   * Sets the <code>steps</code> property.
   */
 public void setSteps(Link steps) {
    this.steps = steps;
  }

  /**
   * Sets the <code>steps</code> property.
   */
  public PipelineRunImpllinks steps(Link steps) {
    this.steps = steps;
    return this;
  }

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
  public PipelineRunImpllinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
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
    PipelineRunImpllinks pipelineRunImpllinks = (PipelineRunImpllinks) o;
    return Objects.equals(this.nodes, pipelineRunImpllinks.nodes) &&
        Objects.equals(this.log, pipelineRunImpllinks.log) &&
        Objects.equals(this.self, pipelineRunImpllinks.self) &&
        Objects.equals(this.actions, pipelineRunImpllinks.actions) &&
        Objects.equals(this.steps, pipelineRunImpllinks.steps) &&
        Objects.equals(this.propertyClass, pipelineRunImpllinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(nodes, log, self, actions, steps, propertyClass);
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

