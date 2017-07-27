package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * IojenkinsblueoceanrestimplpipelineBranchImplPermissions
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-07-25T10:46:28.251+10:00")

public class IojenkinsblueoceanrestimplpipelineBranchImplPermissions   {
  @JsonProperty("create")
  private Boolean create = null;

  @JsonProperty("read")
  private Boolean read = null;

  @JsonProperty("start")
  private Boolean start = null;

  @JsonProperty("stop")
  private Boolean stop = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions create(Boolean create) {
    this.create = create;
    return this;
  }

   /**
   * Get create
   * @return create
  **/
  @ApiModelProperty(value = "")


  public Boolean getCreate() {
    return create;
  }

  public void setCreate(Boolean create) {
    this.create = create;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions read(Boolean read) {
    this.read = read;
    return this;
  }

   /**
   * Get read
   * @return read
  **/
  @ApiModelProperty(value = "")


  public Boolean getRead() {
    return read;
  }

  public void setRead(Boolean read) {
    this.read = read;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions start(Boolean start) {
    this.start = start;
    return this;
  }

   /**
   * Get start
   * @return start
  **/
  @ApiModelProperty(value = "")


  public Boolean getStart() {
    return start;
  }

  public void setStart(Boolean start) {
    this.start = start;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions stop(Boolean stop) {
    this.stop = stop;
    return this;
  }

   /**
   * Get stop
   * @return stop
  **/
  @ApiModelProperty(value = "")


  public Boolean getStop() {
    return stop;
  }

  public void setStop(Boolean stop) {
    this.stop = stop;
  }

  public IojenkinsblueoceanrestimplpipelineBranchImplPermissions propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")


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
    return Objects.equals(this.create, iojenkinsblueoceanrestimplpipelineBranchImplPermissions.create) &&
        Objects.equals(this.read, iojenkinsblueoceanrestimplpipelineBranchImplPermissions.read) &&
        Objects.equals(this.start, iojenkinsblueoceanrestimplpipelineBranchImplPermissions.start) &&
        Objects.equals(this.stop, iojenkinsblueoceanrestimplpipelineBranchImplPermissions.stop) &&
        Objects.equals(this.propertyClass, iojenkinsblueoceanrestimplpipelineBranchImplPermissions.propertyClass);
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

