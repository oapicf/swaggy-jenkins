package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.Link;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * PipelineRunImpllinks
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2025-05-10T02:40:10.134083169Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class PipelineRunImpllinks   {
  @JsonProperty("nodes")
  private Link nodes;

  @JsonProperty("log")
  private Link log;

  @JsonProperty("self")
  private Link self;

  @JsonProperty("actions")
  private Link actions;

  @JsonProperty("steps")
  private Link steps;

  @JsonProperty("_class")
  private String propertyClass;

  public PipelineRunImpllinks nodes(Link nodes) {
    this.nodes = nodes;
    return this;
  }

  /**
   * Get nodes
   * @return nodes
   */
  @ApiModelProperty(value = "")
  public Link getNodes() {
    return nodes;
  }

  public void setNodes(Link nodes) {
    this.nodes = nodes;
  }

  public PipelineRunImpllinks log(Link log) {
    this.log = log;
    return this;
  }

  /**
   * Get log
   * @return log
   */
  @ApiModelProperty(value = "")
  public Link getLog() {
    return log;
  }

  public void setLog(Link log) {
    this.log = log;
  }

  public PipelineRunImpllinks self(Link self) {
    this.self = self;
    return this;
  }

  /**
   * Get self
   * @return self
   */
  @ApiModelProperty(value = "")
  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }

  public PipelineRunImpllinks actions(Link actions) {
    this.actions = actions;
    return this;
  }

  /**
   * Get actions
   * @return actions
   */
  @ApiModelProperty(value = "")
  public Link getActions() {
    return actions;
  }

  public void setActions(Link actions) {
    this.actions = actions;
  }

  public PipelineRunImpllinks steps(Link steps) {
    this.steps = steps;
    return this;
  }

  /**
   * Get steps
   * @return steps
   */
  @ApiModelProperty(value = "")
  public Link getSteps() {
    return steps;
  }

  public void setSteps(Link steps) {
    this.steps = steps;
  }

  public PipelineRunImpllinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

