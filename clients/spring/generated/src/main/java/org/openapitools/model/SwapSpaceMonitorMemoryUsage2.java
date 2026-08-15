package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * SwapSpaceMonitorMemoryUsage2
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-15T02:30:56.014530473Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class SwapSpaceMonitorMemoryUsage2 {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer availablePhysicalMemory;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer availableSwapSpace;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer totalPhysicalMemory;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer totalSwapSpace;

  public SwapSpaceMonitorMemoryUsage2 propertyClass(@Nullable String propertyClass) {
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

  public SwapSpaceMonitorMemoryUsage2 availablePhysicalMemory(@Nullable Integer availablePhysicalMemory) {
    this.availablePhysicalMemory = availablePhysicalMemory;
    return this;
  }

  /**
   * Get availablePhysicalMemory
   * @return availablePhysicalMemory
   */
  
  @Schema(name = "availablePhysicalMemory", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("availablePhysicalMemory")
  public @Nullable Integer getAvailablePhysicalMemory() {
    return availablePhysicalMemory;
  }

  @JsonProperty("availablePhysicalMemory")
  public void setAvailablePhysicalMemory(@Nullable Integer availablePhysicalMemory) {
    this.availablePhysicalMemory = availablePhysicalMemory;
  }

  public SwapSpaceMonitorMemoryUsage2 availableSwapSpace(@Nullable Integer availableSwapSpace) {
    this.availableSwapSpace = availableSwapSpace;
    return this;
  }

  /**
   * Get availableSwapSpace
   * @return availableSwapSpace
   */
  
  @Schema(name = "availableSwapSpace", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("availableSwapSpace")
  public @Nullable Integer getAvailableSwapSpace() {
    return availableSwapSpace;
  }

  @JsonProperty("availableSwapSpace")
  public void setAvailableSwapSpace(@Nullable Integer availableSwapSpace) {
    this.availableSwapSpace = availableSwapSpace;
  }

  public SwapSpaceMonitorMemoryUsage2 totalPhysicalMemory(@Nullable Integer totalPhysicalMemory) {
    this.totalPhysicalMemory = totalPhysicalMemory;
    return this;
  }

  /**
   * Get totalPhysicalMemory
   * @return totalPhysicalMemory
   */
  
  @Schema(name = "totalPhysicalMemory", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("totalPhysicalMemory")
  public @Nullable Integer getTotalPhysicalMemory() {
    return totalPhysicalMemory;
  }

  @JsonProperty("totalPhysicalMemory")
  public void setTotalPhysicalMemory(@Nullable Integer totalPhysicalMemory) {
    this.totalPhysicalMemory = totalPhysicalMemory;
  }

  public SwapSpaceMonitorMemoryUsage2 totalSwapSpace(@Nullable Integer totalSwapSpace) {
    this.totalSwapSpace = totalSwapSpace;
    return this;
  }

  /**
   * Get totalSwapSpace
   * @return totalSwapSpace
   */
  
  @Schema(name = "totalSwapSpace", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("totalSwapSpace")
  public @Nullable Integer getTotalSwapSpace() {
    return totalSwapSpace;
  }

  @JsonProperty("totalSwapSpace")
  public void setTotalSwapSpace(@Nullable Integer totalSwapSpace) {
    this.totalSwapSpace = totalSwapSpace;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage2 = (SwapSpaceMonitorMemoryUsage2) o;
    return Objects.equals(this.propertyClass, swapSpaceMonitorMemoryUsage2.propertyClass) &&
        Objects.equals(this.availablePhysicalMemory, swapSpaceMonitorMemoryUsage2.availablePhysicalMemory) &&
        Objects.equals(this.availableSwapSpace, swapSpaceMonitorMemoryUsage2.availableSwapSpace) &&
        Objects.equals(this.totalPhysicalMemory, swapSpaceMonitorMemoryUsage2.totalPhysicalMemory) &&
        Objects.equals(this.totalSwapSpace, swapSpaceMonitorMemoryUsage2.totalSwapSpace);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, availablePhysicalMemory, availableSwapSpace, totalPhysicalMemory, totalSwapSpace);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SwapSpaceMonitorMemoryUsage2 {\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    availablePhysicalMemory: ").append(toIndentedString(availablePhysicalMemory)).append("\n");
    sb.append("    availableSwapSpace: ").append(toIndentedString(availableSwapSpace)).append("\n");
    sb.append("    totalPhysicalMemory: ").append(toIndentedString(totalPhysicalMemory)).append("\n");
    sb.append("    totalSwapSpace: ").append(toIndentedString(totalSwapSpace)).append("\n");
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

