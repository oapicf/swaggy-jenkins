package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.Link;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * BranchImpllinks
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2024-03-15T14:20:32.264295314Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class BranchImpllinks {

  private Link self;

  private Link actions;

  private Link runs;

  private Link queue;

  private String propertyClass;

  public BranchImpllinks self(Link self) {
    this.self = self;
    return this;
  }

  /**
   * Get self
   * @return self
  */
  @Valid 
  @Schema(name = "self", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("self")
  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }

  public BranchImpllinks actions(Link actions) {
    this.actions = actions;
    return this;
  }

  /**
   * Get actions
   * @return actions
  */
  @Valid 
  @Schema(name = "actions", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("actions")
  public Link getActions() {
    return actions;
  }

  public void setActions(Link actions) {
    this.actions = actions;
  }

  public BranchImpllinks runs(Link runs) {
    this.runs = runs;
    return this;
  }

  /**
   * Get runs
   * @return runs
  */
  @Valid 
  @Schema(name = "runs", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("runs")
  public Link getRuns() {
    return runs;
  }

  public void setRuns(Link runs) {
    this.runs = runs;
  }

  public BranchImpllinks queue(Link queue) {
    this.queue = queue;
    return this;
  }

  /**
   * Get queue
   * @return queue
  */
  @Valid 
  @Schema(name = "queue", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("queue")
  public Link getQueue() {
    return queue;
  }

  public void setQueue(Link queue) {
    this.queue = queue;
  }

  public BranchImpllinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
  */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
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
    return Objects.equals(this.self, branchImpllinks.self) &&
        Objects.equals(this.actions, branchImpllinks.actions) &&
        Objects.equals(this.runs, branchImpllinks.runs) &&
        Objects.equals(this.queue, branchImpllinks.queue) &&
        Objects.equals(this.propertyClass, branchImpllinks.propertyClass);
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

