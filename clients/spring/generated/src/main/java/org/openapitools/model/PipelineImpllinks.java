package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.Link;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * PipelineImpllinks
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2025-04-27T08:11:13.649076561Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class PipelineImpllinks {

  private @Nullable Link runs;

  private @Nullable Link self;

  private @Nullable Link queue;

  private @Nullable Link actions;

  private @Nullable String propertyClass;

  public PipelineImpllinks runs(Link runs) {
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

  public PipelineImpllinks self(Link self) {
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

  public PipelineImpllinks queue(Link queue) {
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

  public PipelineImpllinks actions(Link actions) {
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

  public PipelineImpllinks propertyClass(String propertyClass) {
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

