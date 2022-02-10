package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * PipelineBranchesitempullRequestlinks
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2022-02-10T09:53:34.462656Z[Etc/UTC]")
public class PipelineBranchesitempullRequestlinks   {

  @JsonProperty("self")
  private String self;

  @JsonProperty("_class")
  private String propertyClass;

  public PipelineBranchesitempullRequestlinks self(String self) {
    this.self = self;
    return this;
  }

  /**
   * Get self
   * @return self
  */
  
  @Schema(name = "self", required = false)
  public String getSelf() {
    return self;
  }

  public void setSelf(String self) {
    this.self = self;
  }

  public PipelineBranchesitempullRequestlinks propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
  */
  
  @Schema(name = "_class", required = false)
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
    PipelineBranchesitempullRequestlinks pipelineBranchesitempullRequestlinks = (PipelineBranchesitempullRequestlinks) o;
    return Objects.equals(this.self, pipelineBranchesitempullRequestlinks.self) &&
        Objects.equals(this.propertyClass, pipelineBranchesitempullRequestlinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineBranchesitempullRequestlinks {\n");
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
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

