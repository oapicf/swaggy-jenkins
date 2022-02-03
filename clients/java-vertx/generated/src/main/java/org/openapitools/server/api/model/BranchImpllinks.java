package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.server.api.model.Link;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class BranchImpllinks   {
  
  private Link self;
  private Link actions;
  private Link runs;
  private Link queue;
  private String propertyClass;

  public BranchImpllinks () {

  }

  public BranchImpllinks (Link self, Link actions, Link runs, Link queue, String propertyClass) {
    this.self = self;
    this.actions = actions;
    this.runs = runs;
    this.queue = queue;
    this.propertyClass = propertyClass;
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

    
  @JsonProperty("runs")
  public Link getRuns() {
    return runs;
  }
  public void setRuns(Link runs) {
    this.runs = runs;
  }

    
  @JsonProperty("queue")
  public Link getQueue() {
    return queue;
  }
  public void setQueue(Link queue) {
    this.queue = queue;
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
    BranchImpllinks branchImpllinks = (BranchImpllinks) o;
    return Objects.equals(self, branchImpllinks.self) &&
        Objects.equals(actions, branchImpllinks.actions) &&
        Objects.equals(runs, branchImpllinks.runs) &&
        Objects.equals(queue, branchImpllinks.queue) &&
        Objects.equals(propertyClass, branchImpllinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, actions, runs, queue, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BranchImpllinks {\n");
    
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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
