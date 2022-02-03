package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("BranchImplpermissions")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-02T10:45:47.905826Z[Etc/UTC]")public class BranchImplpermissions   {
  
  private @Valid Boolean create;
  private @Valid Boolean read;
  private @Valid Boolean start;
  private @Valid Boolean stop;
  private @Valid String propertyClass;

  /**
   **/
  public BranchImplpermissions create(Boolean create) {
    this.create = create;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("create")
  public Boolean getCreate() {
    return create;
  }

  @JsonProperty("create")
  public void setCreate(Boolean create) {
    this.create = create;
  }

/**
   **/
  public BranchImplpermissions read(Boolean read) {
    this.read = read;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("read")
  public Boolean getRead() {
    return read;
  }

  @JsonProperty("read")
  public void setRead(Boolean read) {
    this.read = read;
  }

/**
   **/
  public BranchImplpermissions start(Boolean start) {
    this.start = start;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("start")
  public Boolean getStart() {
    return start;
  }

  @JsonProperty("start")
  public void setStart(Boolean start) {
    this.start = start;
  }

/**
   **/
  public BranchImplpermissions stop(Boolean stop) {
    this.stop = stop;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("stop")
  public Boolean getStop() {
    return stop;
  }

  @JsonProperty("stop")
  public void setStop(Boolean stop) {
    this.stop = stop;
  }

/**
   **/
  public BranchImplpermissions propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
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

