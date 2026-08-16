package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * GithubRepositorypermissions
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-16T01:42:02.317096987Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class GithubRepositorypermissions {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean admin;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean push;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean pull;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  public GithubRepositorypermissions admin(@Nullable Boolean admin) {
    this.admin = admin;
    return this;
  }

  /**
   * Get admin
   * @return admin
   */
  
  @Schema(name = "admin", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("admin")
  public @Nullable Boolean getAdmin() {
    return admin;
  }

  @JsonProperty("admin")
  public void setAdmin(@Nullable Boolean admin) {
    this.admin = admin;
  }

  public GithubRepositorypermissions push(@Nullable Boolean push) {
    this.push = push;
    return this;
  }

  /**
   * Get push
   * @return push
   */
  
  @Schema(name = "push", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("push")
  public @Nullable Boolean getPush() {
    return push;
  }

  @JsonProperty("push")
  public void setPush(@Nullable Boolean push) {
    this.push = push;
  }

  public GithubRepositorypermissions pull(@Nullable Boolean pull) {
    this.pull = pull;
    return this;
  }

  /**
   * Get pull
   * @return pull
   */
  
  @Schema(name = "pull", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("pull")
  public @Nullable Boolean getPull() {
    return pull;
  }

  @JsonProperty("pull")
  public void setPull(@Nullable Boolean pull) {
    this.pull = pull;
  }

  public GithubRepositorypermissions propertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_class")
  public @Nullable String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(@Nullable String propertyClass) {
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
  private String toIndentedString(@Nullable Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

