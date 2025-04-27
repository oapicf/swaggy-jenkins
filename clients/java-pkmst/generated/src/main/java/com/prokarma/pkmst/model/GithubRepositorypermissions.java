package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * GithubRepositorypermissions
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2025-04-27T08:09:24.309774695Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class GithubRepositorypermissions   {
  @JsonProperty("admin")
  private Boolean admin;

  @JsonProperty("push")
  private Boolean push;

  @JsonProperty("pull")
  private Boolean pull;

  @JsonProperty("_class")
  private String propertyClass;

  public GithubRepositorypermissions admin(Boolean admin) {
    this.admin = admin;
    return this;
  }

  /**
   * Get admin
   * @return admin
   */
  @ApiModelProperty(value = "")
  public Boolean getAdmin() {
    return admin;
  }

  public void setAdmin(Boolean admin) {
    this.admin = admin;
  }

  public GithubRepositorypermissions push(Boolean push) {
    this.push = push;
    return this;
  }

  /**
   * Get push
   * @return push
   */
  @ApiModelProperty(value = "")
  public Boolean getPush() {
    return push;
  }

  public void setPush(Boolean push) {
    this.push = push;
  }

  public GithubRepositorypermissions pull(Boolean pull) {
    this.pull = pull;
    return this;
  }

  /**
   * Get pull
   * @return pull
   */
  @ApiModelProperty(value = "")
  public Boolean getPull() {
    return pull;
  }

  public void setPull(Boolean pull) {
    this.pull = pull;
  }

  public GithubRepositorypermissions propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
  @ApiModelProperty(value = "")
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
    GithubRepositorypermissions githubRepositorypermissions = (GithubRepositorypermissions) o;
    return Objects.equals(this.admin, githubRepositorypermissions.admin) &&
        Objects.equals(this.push, githubRepositorypermissions.push) &&
        Objects.equals(this.pull, githubRepositorypermissions.pull) &&
        Objects.equals(this.propertyClass, githubRepositorypermissions.propertyClass);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

