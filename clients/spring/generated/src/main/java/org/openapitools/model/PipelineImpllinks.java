package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.Link;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * PipelineImpllinks
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-14T13:30:31.619187222Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class PipelineImpllinks {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Link self;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Link actions;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Link runs;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Link queue;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  public PipelineImpllinks self(@Nullable Link self) {
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
  public @Nullable Link getSelf() {
    return self;
  }

  @JsonProperty("self")
  public void setSelf(@Nullable Link self) {
    this.self = self;
  }

  public PipelineImpllinks actions(@Nullable Link actions) {
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
  public @Nullable Link getActions() {
    return actions;
  }

  @JsonProperty("actions")
  public void setActions(@Nullable Link actions) {
    this.actions = actions;
  }

  public PipelineImpllinks runs(@Nullable Link runs) {
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
  public @Nullable Link getRuns() {
    return runs;
  }

  @JsonProperty("runs")
  public void setRuns(@Nullable Link runs) {
    this.runs = runs;
  }

  public PipelineImpllinks queue(@Nullable Link queue) {
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
  public @Nullable Link getQueue() {
    return queue;
  }

  @JsonProperty("queue")
  public void setQueue(@Nullable Link queue) {
    this.queue = queue;
  }

  public PipelineImpllinks propertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_class")
  public @Nullable String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(@Nullable String propertyClass) {
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
  private String toIndentedString(@Nullable Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

