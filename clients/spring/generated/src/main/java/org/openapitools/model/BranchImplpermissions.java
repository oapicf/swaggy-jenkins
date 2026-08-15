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
 * BranchImplpermissions
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-15T12:33:21.937757652Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class BranchImplpermissions {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean create;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean read;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean start;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean stop;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  public BranchImplpermissions create(@Nullable Boolean create) {
    this.create = create;
    return this;
  }

  /**
   * Get create
   * @return create
   */
  
  @Schema(name = "create", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("create")
  public @Nullable Boolean getCreate() {
    return create;
  }

  @JsonProperty("create")
  public void setCreate(@Nullable Boolean create) {
    this.create = create;
  }

  public BranchImplpermissions read(@Nullable Boolean read) {
    this.read = read;
    return this;
  }

  /**
   * Get read
   * @return read
   */
  
  @Schema(name = "read", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("read")
  public @Nullable Boolean getRead() {
    return read;
  }

  @JsonProperty("read")
  public void setRead(@Nullable Boolean read) {
    this.read = read;
  }

  public BranchImplpermissions start(@Nullable Boolean start) {
    this.start = start;
    return this;
  }

  /**
   * Get start
   * @return start
   */
  
  @Schema(name = "start", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("start")
  public @Nullable Boolean getStart() {
    return start;
  }

  @JsonProperty("start")
  public void setStart(@Nullable Boolean start) {
    this.start = start;
  }

  public BranchImplpermissions stop(@Nullable Boolean stop) {
    this.stop = stop;
    return this;
  }

  /**
   * Get stop
   * @return stop
   */
  
  @Schema(name = "stop", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("stop")
  public @Nullable Boolean getStop() {
    return stop;
  }

  @JsonProperty("stop")
  public void setStop(@Nullable Boolean stop) {
    this.stop = stop;
  }

  public BranchImplpermissions propertyClass(@Nullable String propertyClass) {
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
    BranchImplpermissions branchImplpermissions = (BranchImplpermissions) o;
    return Objects.equals(this.create, branchImplpermissions.create) &&
        Objects.equals(this.read, branchImplpermissions.read) &&
        Objects.equals(this.start, branchImplpermissions.start) &&
        Objects.equals(this.stop, branchImplpermissions.stop) &&
        Objects.equals(this.propertyClass, branchImplpermissions.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(create, read, start, stop, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BranchImplpermissions {\n");
    sb.append("    create: ").append(toIndentedString(create)).append("\n");
    sb.append("    read: ").append(toIndentedString(read)).append("\n");
    sb.append("    start: ").append(toIndentedString(start)).append("\n");
    sb.append("    stop: ").append(toIndentedString(stop)).append("\n");
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

