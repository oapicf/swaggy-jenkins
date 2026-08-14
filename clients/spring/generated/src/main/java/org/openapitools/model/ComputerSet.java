package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.HudsonMasterComputer;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * ComputerSet
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-14T13:30:31.619187222Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class ComputerSet {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer busyExecutors;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private List<@Valid HudsonMasterComputer> computer = new ArrayList<>();

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String displayName;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer totalExecutors;

  public ComputerSet propertyClass(@Nullable String propertyClass) {
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

  public ComputerSet busyExecutors(@Nullable Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
    return this;
  }

  /**
   * Get busyExecutors
   * @return busyExecutors
   */
  
  @Schema(name = "busyExecutors", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("busyExecutors")
  public @Nullable Integer getBusyExecutors() {
    return busyExecutors;
  }

  @JsonProperty("busyExecutors")
  public void setBusyExecutors(@Nullable Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
  }

  public ComputerSet computer(List<@Valid HudsonMasterComputer> computer) {
    this.computer = computer;
    return this;
  }

  public ComputerSet addComputerItem(HudsonMasterComputer computerItem) {
    if (this.computer == null) {
      this.computer = new ArrayList<>();
    }
    this.computer.add(computerItem);
    return this;
  }

  /**
   * Get computer
   * @return computer
   */
  @Valid 
  @Schema(name = "computer", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("computer")
  public List<@Valid HudsonMasterComputer> getComputer() {
    return computer;
  }

  @JsonProperty("computer")
  public void setComputer(List<@Valid HudsonMasterComputer> computer) {
    this.computer = computer;
  }

  public ComputerSet displayName(@Nullable String displayName) {
    this.displayName = displayName;
    return this;
  }

  /**
   * Get displayName
   * @return displayName
   */
  
  @Schema(name = "displayName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("displayName")
  public @Nullable String getDisplayName() {
    return displayName;
  }

  @JsonProperty("displayName")
  public void setDisplayName(@Nullable String displayName) {
    this.displayName = displayName;
  }

  public ComputerSet totalExecutors(@Nullable Integer totalExecutors) {
    this.totalExecutors = totalExecutors;
    return this;
  }

  /**
   * Get totalExecutors
   * @return totalExecutors
   */
  
  @Schema(name = "totalExecutors", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("totalExecutors")
  public @Nullable Integer getTotalExecutors() {
    return totalExecutors;
  }

  @JsonProperty("totalExecutors")
  public void setTotalExecutors(@Nullable Integer totalExecutors) {
    this.totalExecutors = totalExecutors;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ComputerSet computerSet = (ComputerSet) o;
    return Objects.equals(this.propertyClass, computerSet.propertyClass) &&
        Objects.equals(this.busyExecutors, computerSet.busyExecutors) &&
        Objects.equals(this.computer, computerSet.computer) &&
        Objects.equals(this.displayName, computerSet.displayName) &&
        Objects.equals(this.totalExecutors, computerSet.totalExecutors);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, busyExecutors, computer, displayName, totalExecutors);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ComputerSet {\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    busyExecutors: ").append(toIndentedString(busyExecutors)).append("\n");
    sb.append("    computer: ").append(toIndentedString(computer)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    totalExecutors: ").append(toIndentedString(totalExecutors)).append("\n");
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

