package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class GithubRepositorypermissions   {
  
  private Boolean admin = null;
  private Boolean push = null;
  private Boolean pull = null;
  private String propertyClass = null;

  public GithubRepositorypermissions () {

  }

  public GithubRepositorypermissions (Boolean admin, Boolean push, Boolean pull, String propertyClass) {
    this.admin = admin;
    this.push = push;
    this.pull = pull;
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("admin")
  public Boolean getAdmin() {
    return admin;
  }
  public void setAdmin(Boolean admin) {
    this.admin = admin;
  }

    
  @JsonProperty("push")
  public Boolean getPush() {
    return push;
  }
  public void setPush(Boolean push) {
    this.push = push;
  }

    
  @JsonProperty("pull")
  public Boolean getPull() {
    return pull;
  }
  public void setPull(Boolean pull) {
    this.pull = pull;
  }

    
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
