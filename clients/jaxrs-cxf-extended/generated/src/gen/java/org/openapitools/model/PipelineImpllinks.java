package org.openapitools.model;

import org.openapitools.model.Link;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PipelineImpllinks  {
  
  @ApiModelProperty(value = "")
  @Valid
  private Link runs;

  @ApiModelProperty(value = "")
  @Valid
  private Link self;

  @ApiModelProperty(value = "")
  @Valid
  private Link queue;

  @ApiModelProperty(value = "")
  @Valid
  private Link actions;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
  * Get runs
  * @return runs
  */
  @JsonProperty("runs")
  public Link getRuns() {
    return runs;
  }

  /**
   * Sets the <code>runs</code> property.
   */
 public void setRuns(Link runs) {
    this.runs = runs;
  }

  /**
   * Sets the <code>runs</code> property.
   */
  public PipelineImpllinks runs(Link runs) {
    this.runs = runs;
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
  public PipelineImpllinks self(Link self) {
    this.self = self;
    return this;
  }

 /**
  * Get queue
  * @return queue
  */
  @JsonProperty("queue")
  public Link getQueue() {
    return queue;
  }

  /**
   * Sets the <code>queue</code> property.
   */
 public void setQueue(Link queue) {
    this.queue = queue;
  }

  /**
   * Sets the <code>queue</code> property.
   */
  public PipelineImpllinks queue(Link queue) {
    this.queue = queue;
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
  public PipelineImpllinks actions(Link actions) {
    this.actions = actions;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

