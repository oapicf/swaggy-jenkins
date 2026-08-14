package org.openapitools.model;

import org.openapitools.model.Link;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class PipelineImpllinks implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("self")
  private Link self;

  @JsonProperty("actions")
  private Link actions;

  @JsonProperty("runs")
  private Link runs;

  @JsonProperty("queue")
  private Link queue;

  @JsonProperty("_class")
  private String propertyClass;

  /**
   * 
   * @return self
   */
  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }

  /**
   * 
   * @return actions
   */
  public Link getActions() {
    return actions;
  }

  public void setActions(Link actions) {
    this.actions = actions;
  }

  /**
   * 
   * @return runs
   */
  public Link getRuns() {
    return runs;
  }

  public void setRuns(Link runs) {
    this.runs = runs;
  }

  /**
   * 
   * @return queue
   */
  public Link getQueue() {
    return queue;
  }

  public void setQueue(Link queue) {
    this.queue = queue;
  }

  /**
   * 
   * @return propertyClass
   */
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
    return Objects.equals(this.self, pipelineImpllinks.self) &&
        Objects.equals(this.actions, pipelineImpllinks.actions) &&
        Objects.equals(this.runs, pipelineImpllinks.runs) &&
        Objects.equals(this.queue, pipelineImpllinks.queue) &&
        Objects.equals(this.propertyClass, pipelineImpllinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, actions, runs, queue, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineImpllinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    runs: ").append(toIndentedString(runs)).append("\n");
    sb.append("    queue: ").append(toIndentedString(queue)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
