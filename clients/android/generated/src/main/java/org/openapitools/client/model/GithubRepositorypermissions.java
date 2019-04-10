/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class GithubRepositorypermissions {
  
  @SerializedName("admin")
  private Boolean admin = null;
  @SerializedName("push")
  private Boolean push = null;
  @SerializedName("pull")
  private Boolean pull = null;
  @SerializedName("_class")
  private String _class = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getAdmin() {
    return admin;
  }
  public void setAdmin(Boolean admin) {
    this.admin = admin;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getPush() {
    return push;
  }
  public void setPush(Boolean push) {
    this.push = push;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getPull() {
    return pull;
  }
  public void setPull(Boolean pull) {
    this.pull = pull;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getClass() {
    return _class;
  }
  public void setClass(String _class) {
    this._class = _class;
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
    return (this.admin == null ? githubRepositorypermissions.admin == null : this.admin.equals(githubRepositorypermissions.admin)) &&
        (this.push == null ? githubRepositorypermissions.push == null : this.push.equals(githubRepositorypermissions.push)) &&
        (this.pull == null ? githubRepositorypermissions.pull == null : this.pull.equals(githubRepositorypermissions.pull)) &&
        (this._class == null ? githubRepositorypermissions._class == null : this._class.equals(githubRepositorypermissions._class));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.admin == null ? 0: this.admin.hashCode());
    result = 31 * result + (this.push == null ? 0: this.push.hashCode());
    result = 31 * result + (this.pull == null ? 0: this.pull.hashCode());
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRepositorypermissions {\n");
    
    sb.append("  admin: ").append(admin).append("\n");
    sb.append("  push: ").append(push).append("\n");
    sb.append("  pull: ").append(pull).append("\n");
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
