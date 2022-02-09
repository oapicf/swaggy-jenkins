/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Link;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * PipelineImpllinks
 */
@JsonPropertyOrder({
  PipelineImpllinks.JSON_PROPERTY_RUNS,
  PipelineImpllinks.JSON_PROPERTY_SELF,
  PipelineImpllinks.JSON_PROPERTY_QUEUE,
  PipelineImpllinks.JSON_PROPERTY_ACTIONS,
  PipelineImpllinks.JSON_PROPERTY_PROPERTY_CLASS
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2022-02-09T13:05:29.098198Z[Etc/UTC]")
public class PipelineImpllinks   {
  public static final String JSON_PROPERTY_RUNS = "runs";
  @JsonProperty(JSON_PROPERTY_RUNS)
  private Link runs;

  public static final String JSON_PROPERTY_SELF = "self";
  @JsonProperty(JSON_PROPERTY_SELF)
  private Link self;

  public static final String JSON_PROPERTY_QUEUE = "queue";
  @JsonProperty(JSON_PROPERTY_QUEUE)
  private Link queue;

  public static final String JSON_PROPERTY_ACTIONS = "actions";
  @JsonProperty(JSON_PROPERTY_ACTIONS)
  private Link actions;

  public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
  @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
  private String propertyClass;

  public PipelineImpllinks runs(Link runs) {
    this.runs = runs;
    return this;
  }

  /**
   * Get runs
   * @return runs
   **/
  @JsonProperty(value = "runs")
  @ApiModelProperty(value = "")
  @Valid 
  public Link getRuns() {
    return runs;
  }

  public void setRuns(Link runs) {
    this.runs = runs;
  }

  public PipelineImpllinks self(Link self) {
    this.self = self;
    return this;
  }

  /**
   * Get self
   * @return self
   **/
  @JsonProperty(value = "self")
  @ApiModelProperty(value = "")
  @Valid 
  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }

  public PipelineImpllinks queue(Link queue) {
    this.queue = queue;
    return this;
  }

  /**
   * Get queue
   * @return queue
   **/
  @JsonProperty(value = "queue")
  @ApiModelProperty(value = "")
  @Valid 
  public Link getQueue() {
    return queue;
  }

  public void setQueue(Link queue) {
    this.queue = queue;
  }

  public PipelineImpllinks actions(Link actions) {
    this.actions = actions;
    return this;
  }

  /**
   * Get actions
   * @return actions
   **/
  @JsonProperty(value = "actions")
  @ApiModelProperty(value = "")
  @Valid 
  public Link getActions() {
    return actions;
  }

  public void setActions(Link actions) {
    this.actions = actions;
  }

  public PipelineImpllinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   **/
  @JsonProperty(value = "_class")
  @ApiModelProperty(value = "")
  
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineImpllinks pipelineImpllinks = (PipelineImpllinks) o;
    return Objects.equals(this.runs, pipelineImpllinks.runs) &&
        Objects.equals(this.self, pipelineImpllinks.self) &&
        Objects.equals(this.queue, pipelineImpllinks.queue) &&
        Objects.equals(this.actions, pipelineImpllinks.actions) &&
        Objects.equals(this.propertyClass, pipelineImpllinks.propertyClass);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

