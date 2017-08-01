package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class IojenkinsblueoceanrestimplpipelineBranchImplPermissions   {
  
  private Boolean create = null;
  private Boolean read = null;
  private Boolean start = null;
  private Boolean stop = null;
  private String propertyClass = null;

  /**
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions create(Boolean create) {
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
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions read(Boolean read) {
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
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions start(Boolean start) {
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
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions stop(Boolean stop) {
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
   **/
  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions propertyClass(String propertyClass) {
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
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IojenkinsblueoceanrestimplpipelineBranchImplPermissions iojenkinsblueoceanrestimplpipelineBranchImplPermissions = (IojenkinsblueoceanrestimplpipelineBranchImplPermissions) o;
    return Objects.equals(create, iojenkinsblueoceanrestimplpipelineBranchImplPermissions.create) &&
        Objects.equals(read, iojenkinsblueoceanrestimplpipelineBranchImplPermissions.read) &&
        Objects.equals(start, iojenkinsblueoceanrestimplpipelineBranchImplPermissions.start) &&
        Objects.equals(stop, iojenkinsblueoceanrestimplpipelineBranchImplPermissions.stop) &&
        Objects.equals(propertyClass, iojenkinsblueoceanrestimplpipelineBranchImplPermissions.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(create, read, start, stop, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IojenkinsblueoceanrestimplpipelineBranchImplPermissions {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

