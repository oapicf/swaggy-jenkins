package apimodels;

import apimodels.Link;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
import javax.validation.Valid;
/**
 * BranchImpllinks
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2025-05-10T02:40:11.853719842Z[Etc/UTC]", comments = "Generator version: 7.12.0")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class BranchImpllinks   {
  @JsonProperty("self")
  @Valid

  private Link self;

  @JsonProperty("actions")
  @Valid

  private Link actions;

  @JsonProperty("runs")
  @Valid

  private Link runs;

  @JsonProperty("queue")
  @Valid

  private Link queue;

  @JsonProperty("_class")
  
  private String propertyClass;

  public BranchImpllinks self(Link self) {
    this.self = self;
    return this;
  }

   /**
   * Get self
   * @return self
  **/
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
    BranchImpllinks branchImpllinks = (BranchImpllinks) o;
    return Objects.equals(self, branchImpllinks.self) &&
        Objects.equals(actions, branchImpllinks.actions) &&
        Objects.equals(runs, branchImpllinks.runs) &&
        Objects.equals(queue, branchImpllinks.queue) &&
        Objects.equals(propertyClass, branchImpllinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, actions, runs, queue, propertyClass);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

