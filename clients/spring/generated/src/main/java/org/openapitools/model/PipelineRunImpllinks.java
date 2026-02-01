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
 * PipelineRunImpllinks
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-02-01T01:27:11.559404227Z[Etc/UTC]", comments = "Generator version: 7.18.0")
public class PipelineRunImpllinks {

  private @Nullable Link nodes;

  private @Nullable Link log;

  private @Nullable Link self;

  private @Nullable Link actions;

  private @Nullable Link steps;

  private @Nullable String propertyClass;

  public PipelineRunImpllinks nodes(@Nullable Link nodes) {
    this.nodes = nodes;
    return this;
  }

  /**
   * Get nodes
   * @return nodes
   */
  @Valid 
  @Schema(name = "nodes", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("nodes")
  public @Nullable Link getNodes() {
    return nodes;
  }

  public void setNodes(@Nullable Link nodes) {
    this.nodes = nodes;
  }

  public PipelineRunImpllinks log(@Nullable Link log) {
    this.log = log;
    return this;
  }

  /**
   * Get log
   * @return log
   */
  @Valid 
  @Schema(name = "log", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("log")
  public @Nullable Link getLog() {
    return log;
  }

  public void setLog(@Nullable Link log) {
    this.log = log;
  }

  public PipelineRunImpllinks self(@Nullable Link self) {
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

  public void setSelf(@Nullable Link self) {
    this.self = self;
  }

  public PipelineRunImpllinks actions(@Nullable Link actions) {
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

  public void setActions(@Nullable Link actions) {
    this.actions = actions;
  }

  public PipelineRunImpllinks steps(@Nullable Link steps) {
    this.steps = steps;
    return this;
  }

  /**
   * Get steps
   * @return steps
   */
  @Valid 
  @Schema(name = "steps", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("steps")
  public @Nullable Link getSteps() {
    return steps;
  }

  public void setSteps(@Nullable Link steps) {
    this.steps = steps;
  }

  public PipelineRunImpllinks propertyClass(@Nullable String propertyClass) {
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

