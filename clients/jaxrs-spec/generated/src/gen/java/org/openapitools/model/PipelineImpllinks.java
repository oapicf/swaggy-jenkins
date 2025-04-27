package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Link;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("PipelineImpllinks")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2025-04-27T08:09:45.633008592Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class PipelineImpllinks   {
  private Link runs;
  private Link self;
  private Link queue;
  private Link actions;
  private String propertyClass;

  public PipelineImpllinks() {
  }

  /**
   **/
  public PipelineImpllinks runs(Link runs) {
    this.runs = runs;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("runs")
  @Valid public Link getRuns() {
    return runs;
  }

  @JsonProperty("runs")
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
  @JsonProperty("self")
  @Valid public Link getSelf() {
    return self;
  }

  @JsonProperty("self")
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
  @JsonProperty("queue")
  @Valid public Link getQueue() {
    return queue;
  }

  @JsonProperty("queue")
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
  @JsonProperty("actions")
  @Valid public Link getActions() {
    return actions;
  }

  @JsonProperty("actions")
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
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
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

