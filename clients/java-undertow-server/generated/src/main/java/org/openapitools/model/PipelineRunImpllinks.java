package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Link;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2018-08-21T02:12:10.332Z[GMT]")
public class PipelineRunImpllinks   {
  
  private Link nodes = null;
  private Link log = null;
  private Link self = null;
  private Link actions = null;
  private Link steps = null;
  private String propertyClass = null;

  /**
   **/
  public PipelineRunImpllinks nodes(Link nodes) {
    this.nodes = nodes;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("nodes")
  public Link getNodes() {
    return nodes;
  }
  public void setNodes(Link nodes) {
    this.nodes = nodes;
  }

  /**
   **/
  public PipelineRunImpllinks log(Link log) {
    this.log = log;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("log")
  public Link getLog() {
    return log;
  }
  public void setLog(Link log) {
    this.log = log;
  }

  /**
   **/
  public PipelineRunImpllinks self(Link self) {
    this.self = self;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("self")
  public Link getSelf() {
    return self;
  }
  public void setSelf(Link self) {
    this.self = self;
  }

  /**
   **/
  public PipelineRunImpllinks actions(Link actions) {
    this.actions = actions;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("actions")
  public Link getActions() {
    return actions;
  }
  public void setActions(Link actions) {
    this.actions = actions;
  }

  /**
   **/
  public PipelineRunImpllinks steps(Link steps) {
    this.steps = steps;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("steps")
  public Link getSteps() {
    return steps;
  }
  public void setSteps(Link steps) {
    this.steps = steps;
  }

  /**
   **/
  public PipelineRunImpllinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
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
    PipelineRunImpllinks pipelineRunImpllinks = (PipelineRunImpllinks) o;
    return Objects.equals(nodes, pipelineRunImpllinks.nodes) &&
        Objects.equals(log, pipelineRunImpllinks.log) &&
        Objects.equals(self, pipelineRunImpllinks.self) &&
        Objects.equals(actions, pipelineRunImpllinks.actions) &&
        Objects.equals(steps, pipelineRunImpllinks.steps) &&
        Objects.equals(propertyClass, pipelineRunImpllinks.propertyClass);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

