package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.FreeStyleBuild;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * HudsonMasterComputerexecutors
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-15T12:33:21.937757652Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class HudsonMasterComputerexecutors {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable FreeStyleBuild currentExecutable;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean idle;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean likelyStuck;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer number;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer progress;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  public HudsonMasterComputerexecutors currentExecutable(@Nullable FreeStyleBuild currentExecutable) {
    this.currentExecutable = currentExecutable;
    return this;
  }

  /**
   * Get currentExecutable
   * @return currentExecutable
   */
  @Valid 
  @Schema(name = "currentExecutable", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("currentExecutable")
  public @Nullable FreeStyleBuild getCurrentExecutable() {
    return currentExecutable;
  }

  @JsonProperty("currentExecutable")
  public void setCurrentExecutable(@Nullable FreeStyleBuild currentExecutable) {
    this.currentExecutable = currentExecutable;
  }

  public HudsonMasterComputerexecutors idle(@Nullable Boolean idle) {
    this.idle = idle;
    return this;
  }

  /**
   * Get idle
   * @return idle
   */
  
  @Schema(name = "idle", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("idle")
  public @Nullable Boolean getIdle() {
    return idle;
  }

  @JsonProperty("idle")
  public void setIdle(@Nullable Boolean idle) {
    this.idle = idle;
  }

  public HudsonMasterComputerexecutors likelyStuck(@Nullable Boolean likelyStuck) {
    this.likelyStuck = likelyStuck;
    return this;
  }

  /**
   * Get likelyStuck
   * @return likelyStuck
   */
  
  @Schema(name = "likelyStuck", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("likelyStuck")
  public @Nullable Boolean getLikelyStuck() {
    return likelyStuck;
  }

  @JsonProperty("likelyStuck")
  public void setLikelyStuck(@Nullable Boolean likelyStuck) {
    this.likelyStuck = likelyStuck;
  }

  public HudsonMasterComputerexecutors number(@Nullable Integer number) {
    this.number = number;
    return this;
  }

  /**
   * Get number
   * @return number
   */
  
  @Schema(name = "number", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("number")
  public @Nullable Integer getNumber() {
    return number;
  }

  @JsonProperty("number")
  public void setNumber(@Nullable Integer number) {
    this.number = number;
  }

  public HudsonMasterComputerexecutors progress(@Nullable Integer progress) {
    this.progress = progress;
    return this;
  }

  /**
   * Get progress
   * @return progress
   */
  
  @Schema(name = "progress", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("progress")
  public @Nullable Integer getProgress() {
    return progress;
  }

  @JsonProperty("progress")
  public void setProgress(@Nullable Integer progress) {
    this.progress = progress;
  }

  public HudsonMasterComputerexecutors propertyClass(@Nullable String propertyClass) {
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
    HudsonMasterComputerexecutors hudsonMasterComputerexecutors = (HudsonMasterComputerexecutors) o;
    return Objects.equals(this.currentExecutable, hudsonMasterComputerexecutors.currentExecutable) &&
        Objects.equals(this.idle, hudsonMasterComputerexecutors.idle) &&
        Objects.equals(this.likelyStuck, hudsonMasterComputerexecutors.likelyStuck) &&
        Objects.equals(this.number, hudsonMasterComputerexecutors.number) &&
        Objects.equals(this.progress, hudsonMasterComputerexecutors.progress) &&
        Objects.equals(this.propertyClass, hudsonMasterComputerexecutors.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(currentExecutable, idle, likelyStuck, number, progress, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonMasterComputerexecutors {\n");
    sb.append("    currentExecutable: ").append(toIndentedString(currentExecutable)).append("\n");
    sb.append("    idle: ").append(toIndentedString(idle)).append("\n");
    sb.append("    likelyStuck: ").append(toIndentedString(likelyStuck)).append("\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
    sb.append("    progress: ").append(toIndentedString(progress)).append("\n");
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

