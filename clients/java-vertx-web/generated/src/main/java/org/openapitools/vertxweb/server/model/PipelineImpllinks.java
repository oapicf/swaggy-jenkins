package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.vertxweb.server.model.Link;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class PipelineImpllinks   {
  
  private Link runs;
  private Link self;
  private Link queue;
  private Link actions;
  private String propertyClass;

  public PipelineImpllinks () {

  }

  public PipelineImpllinks (Link runs, Link self, Link queue, Link actions, String propertyClass) {
    this.runs = runs;
    this.self = self;
    this.queue = queue;
    this.actions = actions;
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("runs")
  public Link getRuns() {
    return runs;
  }
  public void setRuns(Link runs) {
    this.runs = runs;
  }

    
  @JsonProperty("self")
  public Link getSelf() {
    return self;
  }
  public void setSelf(Link self) {
    this.self = self;
  }

    
  @JsonProperty("queue")
  public Link getQueue() {
    return queue;
  }
  public void setQueue(Link queue) {
    this.queue = queue;
  }

    
  @JsonProperty("actions")
  public Link getActions() {
    return actions;
  }
  public void setActions(Link actions) {
    this.actions = actions;
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
