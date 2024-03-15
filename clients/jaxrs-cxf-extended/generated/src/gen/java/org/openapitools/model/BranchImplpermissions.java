package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class BranchImplpermissions  {
  
  @ApiModelProperty(value = "")
  private Boolean create;

  @ApiModelProperty(value = "")
  private Boolean read;

  @ApiModelProperty(value = "")
  private Boolean start;

  @ApiModelProperty(value = "")
  private Boolean stop;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
  * Get create
  * @return create
  */
  @JsonProperty("create")
  public Boolean getCreate() {
    return create;
  }

  /**
   * Sets the <code>create</code> property.
   */
 public void setCreate(Boolean create) {
    this.create = create;
  }

  /**
   * Sets the <code>create</code> property.
   */
  public BranchImplpermissions create(Boolean create) {
    this.create = create;
    return this;
  }

 /**
  * Get read
  * @return read
  */
  @JsonProperty("read")
  public Boolean getRead() {
    return read;
  }

  /**
   * Sets the <code>read</code> property.
   */
 public void setRead(Boolean read) {
    this.read = read;
  }

  /**
   * Sets the <code>read</code> property.
   */
  public BranchImplpermissions read(Boolean read) {
    this.read = read;
    return this;
  }

 /**
  * Get start
  * @return start
  */
  @JsonProperty("start")
  public Boolean getStart() {
    return start;
  }

  /**
   * Sets the <code>start</code> property.
   */
 public void setStart(Boolean start) {
    this.start = start;
  }

  /**
   * Sets the <code>start</code> property.
   */
  public BranchImplpermissions start(Boolean start) {
    this.start = start;
    return this;
  }

 /**
  * Get stop
  * @return stop
  */
  @JsonProperty("stop")
  public Boolean getStop() {
    return stop;
  }

  /**
   * Sets the <code>stop</code> property.
   */
 public void setStop(Boolean stop) {
    this.stop = stop;
  }

  /**
   * Sets the <code>stop</code> property.
   */
  public BranchImplpermissions stop(Boolean stop) {
    this.stop = stop;
    return this;
  }

 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public BranchImplpermissions propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

