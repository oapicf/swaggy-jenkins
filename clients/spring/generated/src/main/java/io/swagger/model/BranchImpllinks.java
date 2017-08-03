package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.Link;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * BranchImpllinks
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-08-03T23:37:43.850Z")

public class BranchImpllinks   {
  @JsonProperty("self")
  private Link self = null;

  @JsonProperty("actions")
  private Link actions = null;

  @JsonProperty("runs")
  private Link runs = null;

  @JsonProperty("queue")
  private Link queue = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public BranchImpllinks self(Link self) {
    this.self = self;
    return this;
  }

   /**
   * Get self
   * @return self
  **/
  @ApiModelProperty(value = "")

  @Valid

  public Link getSelf() {
    return self;
  }

  public void setSelf(Link self) {
    this.self = self;
  }

  public BranchImpllinks actions(Link actions) {
    this.actions = actions;
    return this;
  }

   /**
   * Get actions
   * @return actions
  **/
  @ApiModelProperty(value = "")

  @Valid

  public Link getActions() {
    return actions;
  }

  public void setActions(Link actions) {
    this.actions = actions;
  }

  public BranchImpllinks runs(Link runs) {
    this.runs = runs;
    return this;
  }

   /**
   * Get runs
   * @return runs
  **/
  @ApiModelProperty(value = "")

  @Valid

  public Link getRuns() {
    return runs;
  }

  public void setRuns(Link runs) {
    this.runs = runs;
  }

  public BranchImpllinks queue(Link queue) {
    this.queue = queue;
    return this;
  }

   /**
   * Get queue
   * @return queue
  **/
  @ApiModelProperty(value = "")

  @Valid

  public Link getQueue() {
    return queue;
  }

  public void setQueue(Link queue) {
    this.queue = queue;
  }

  public BranchImpllinks propertyClass(String propertyClass) {
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
    BranchImpllinks branchImpllinks = (BranchImpllinks) o;
    return Objects.equals(this.self, branchImpllinks.self) &&
        Objects.equals(this.actions, branchImpllinks.actions) &&
        Objects.equals(this.runs, branchImpllinks.runs) &&
        Objects.equals(this.queue, branchImpllinks.queue) &&
        Objects.equals(this.propertyClass, branchImpllinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, actions, runs, queue, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BranchImpllinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    runs: ").append(toIndentedString(runs)).append("\n");
    sb.append("    queue: ").append(toIndentedString(queue)).append("\n");
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

