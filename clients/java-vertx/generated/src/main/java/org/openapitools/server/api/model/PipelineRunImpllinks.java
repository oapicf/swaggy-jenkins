package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.server.api.model.Link;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class PipelineRunImpllinks   {
  
  private Link nodes = null;
  private Link log = null;
  private Link self = null;
  private Link actions = null;
  private Link steps = null;
  private String propertyClass = null;

  public PipelineRunImpllinks () {

  }

  public PipelineRunImpllinks (Link nodes, Link log, Link self, Link actions, Link steps, String propertyClass) {
    this.nodes = nodes;
    this.log = log;
    this.self = self;
    this.actions = actions;
    this.steps = steps;
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("nodes")
  public Link getNodes() {
    return nodes;
  }
  public void setNodes(Link nodes) {
    this.nodes = nodes;
  }

    
  @JsonProperty("log")
  public Link getLog() {
    return log;
  }
  public void setLog(Link log) {
    this.log = log;
  }

    
  @JsonProperty("self")
  public Link getSelf() {
    return self;
  }
  public void setSelf(Link self) {
    this.self = self;
  }

    
  @JsonProperty("actions")
  public Link getActions() {
    return actions;
  }
  public void setActions(Link actions) {
    this.actions = actions;
  }

    
  @JsonProperty("steps")
  public Link getSteps() {
    return steps;
  }
  public void setSteps(Link steps) {
    this.steps = steps;
  }

    
  @JsonProperty("_class")
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
