/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI document version: 1.5.1-pre.0
 * Maintained by: blah@cliffano.com
 *
 * AUTO-GENERATED FILE, DO NOT MODIFY!
 */
package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2022-06-04T08:08:37.196387Z[Etc/UTC]")
public class BranchImplpermissions   {
  
  private Boolean create;
  private Boolean read;
  private Boolean start;
  private Boolean stop;
  private String propertyClass;

  /**
   */
  public BranchImplpermissions create(Boolean create) {
    this.create = create;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("create")
  public Boolean getCreate() {
    return create;
  }
  public void setCreate(Boolean create) {
    this.create = create;
  }

  /**
   */
  public BranchImplpermissions read(Boolean read) {
    this.read = read;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("read")
  public Boolean getRead() {
    return read;
  }
  public void setRead(Boolean read) {
    this.read = read;
  }

  /**
   */
  public BranchImplpermissions start(Boolean start) {
    this.start = start;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("start")
  public Boolean getStart() {
    return start;
  }
  public void setStart(Boolean start) {
    this.start = start;
  }

  /**
   */
  public BranchImplpermissions stop(Boolean stop) {
    this.stop = stop;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("stop")
  public Boolean getStop() {
    return stop;
  }
  public void setStop(Boolean stop) {
    this.stop = stop;
  }

  /**
   */
  public BranchImplpermissions propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
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
    BranchImplpermissions branchImplpermissions = (BranchImplpermissions) o;
    return Objects.equals(create, branchImplpermissions.create) &&
        Objects.equals(read, branchImplpermissions.read) &&
        Objects.equals(start, branchImplpermissions.start) &&
        Objects.equals(stop, branchImplpermissions.stop) &&
        Objects.equals(propertyClass, branchImplpermissions.propertyClass);
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

