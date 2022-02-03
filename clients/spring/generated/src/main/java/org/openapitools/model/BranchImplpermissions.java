package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * BranchImplpermissions
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2022-02-02T12:55:55.340851Z[Etc/UTC]")
public class BranchImplpermissions   {

  @JsonProperty("create")
  private Boolean create;

  @JsonProperty("read")
  private Boolean read;

  @JsonProperty("start")
  private Boolean start;

  @JsonProperty("stop")
  private Boolean stop;

  @JsonProperty("_class")
  private String propertyClass;

  public BranchImplpermissions create(Boolean create) {
    this.create = create;
    return this;
  }

  /**
   * Get create
   * @return create
  */
  
  @Schema(name = "create", required = false)
  public Boolean getCreate() {
    return create;
  }

  public void setCreate(Boolean create) {
    this.create = create;
  }

  public BranchImplpermissions read(Boolean read) {
    this.read = read;
    return this;
  }

  /**
   * Get read
   * @return read
  */
  
  @Schema(name = "read", required = false)
  public Boolean getRead() {
    return read;
  }

  public void setRead(Boolean read) {
    this.read = read;
  }

  public BranchImplpermissions start(Boolean start) {
    this.start = start;
    return this;
  }

  /**
   * Get start
   * @return start
  */
  
  @Schema(name = "start", required = false)
  public Boolean getStart() {
    return start;
  }

  public void setStart(Boolean start) {
    this.start = start;
  }

  public BranchImplpermissions stop(Boolean stop) {
    this.stop = stop;
    return this;
  }

  /**
   * Get stop
   * @return stop
  */
  
  @Schema(name = "stop", required = false)
  public Boolean getStop() {
    return stop;
  }

  public void setStop(Boolean stop) {
    this.stop = stop;
  }

  public BranchImplpermissions propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
  */
  
  @Schema(name = "_class", required = false)
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

