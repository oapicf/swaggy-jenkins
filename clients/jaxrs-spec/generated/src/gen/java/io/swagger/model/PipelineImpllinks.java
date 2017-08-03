package io.swagger.model;

import io.swagger.model.Link;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;


public class PipelineImpllinks   {
  
  private Link runs = null;
  private Link self = null;
  private Link queue = null;
  private Link actions = null;
  private String propertyClass = null;

  /**
   **/
  public PipelineImpllinks runs(Link runs) {
    this.runs = runs;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Link getRuns() {
    return runs;
  }
  public void setRuns(Link runs) {
    this.runs = runs;
  }

  /**
   **/
  public PipelineImpllinks self(Link self) {
    this.self = self;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Link getSelf() {
    return self;
  }
  public void setSelf(Link self) {
    this.self = self;
  }

  /**
   **/
  public PipelineImpllinks queue(Link queue) {
    this.queue = queue;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Link getQueue() {
    return queue;
  }
  public void setQueue(Link queue) {
    this.queue = queue;
  }

  /**
   **/
  public PipelineImpllinks actions(Link actions) {
    this.actions = actions;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Link getActions() {
    return actions;
  }
  public void setActions(Link actions) {
    this.actions = actions;
  }

  /**
   **/
  public PipelineImpllinks propertyClass(String propertyClass) {
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
    PipelineImpllinks pipelineImpllinks = (PipelineImpllinks) o;
    return Objects.equals(runs, pipelineImpllinks.runs) &&
        Objects.equals(self, pipelineImpllinks.self) &&
        Objects.equals(queue, pipelineImpllinks.queue) &&
        Objects.equals(actions, pipelineImpllinks.actions) &&
        Objects.equals(propertyClass, pipelineImpllinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(runs, self, queue, actions, propertyClass);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

