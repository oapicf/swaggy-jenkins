package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GithubRepositorypermissions   {
  
  private @Valid Boolean admin = null;
  private @Valid Boolean push = null;
  private @Valid Boolean pull = null;
  private @Valid String propertyClass = null;

  /**
   **/
  public GithubRepositorypermissions admin(Boolean admin) {
    this.admin = admin;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("admin")
  public Boolean getAdmin() {
    return admin;
  }
  public void setAdmin(Boolean admin) {
    this.admin = admin;
  }

  /**
   **/
  public GithubRepositorypermissions push(Boolean push) {
    this.push = push;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("push")
  public Boolean getPush() {
    return push;
  }
  public void setPush(Boolean push) {
    this.push = push;
  }

  /**
   **/
  public GithubRepositorypermissions pull(Boolean pull) {
    this.pull = pull;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("pull")
  public Boolean getPull() {
    return pull;
  }
  public void setPull(Boolean pull) {
    this.pull = pull;
  }

  /**
   **/
  public GithubRepositorypermissions propertyClass(String propertyClass) {
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
    GithubRepositorypermissions githubRepositorypermissions = (GithubRepositorypermissions) o;
    return Objects.equals(admin, githubRepositorypermissions.admin) &&
        Objects.equals(push, githubRepositorypermissions.push) &&
        Objects.equals(pull, githubRepositorypermissions.pull) &&
        Objects.equals(propertyClass, githubRepositorypermissions.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(admin, push, pull, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRepositorypermissions {\n");
    
    sb.append("    admin: ").append(toIndentedString(admin)).append("\n");
    sb.append("    push: ").append(toIndentedString(push)).append("\n");
    sb.append("    pull: ").append(toIndentedString(pull)).append("\n");
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

